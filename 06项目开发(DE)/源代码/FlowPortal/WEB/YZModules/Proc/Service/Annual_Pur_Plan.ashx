<%@ WebHandler Language="C#" Class="Purchase.Annual_Purl_Plan" %>

using System;
using System.Web;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Collections;
using System.Collections.Generic;
using BPM;
using BPM.Client;
using YZSoft.Web.DAL;
using Newtonsoft.Json.Linq;

namespace Purchase
{
    public class Annual_Purl_Plan : YZServiceHandler
    {
        public void Delete(HttpContext context)
        {
            YZRequest request = new YZRequest(context);
            JArray jPost = request.GetPostData<JArray>();
            List<int> ids = jPost.ToObject<List<int>>();

            using (SqlConnection cn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["SFDATA"].ConnectionString))
            {
                cn.Open();

                foreach (int id in ids)
                {
                    SqlCommand cmd = new SqlCommand();
                    cmd.Connection = cn;
                    cmd.CommandText = "Update annual_pur_plan Set state='0' WHERE plan_pur_id=@id";
                    cmd.Parameters.Add("@id", SqlDbType.Int).Value = id;
                    cmd.ExecuteNonQuery();
                }
            }
        }
        
        public JObject GetData(HttpContext context)
        {
            YZRequest request = new YZRequest(context);
            SqlServerProvider queryProvider = new SqlServerProvider();

            string searchType = request.GetString("SearchType", null);
            string keyword = request.GetString("kwd", null);

            //获得查询条件
            string filter = "State='1'";
            bool moduleAdmin = true;
            using (BPMConnection cn = new BPMConnection())
            {
                cn.WebOpen();
                moduleAdmin = BPM.Client.Security.UserResource.CheckPermision(cn, "c0ab08aa-f20b-4333-9288-948b2266ee8c", "Admin");
                if (!moduleAdmin)
                {
                    bool moduleCompany = BPM.Client.Security.UserResource.CheckPermision(cn, "c0ab08aa-f20b-4333-9288-948b2266ee8c", "Company");
                    if (moduleCompany)
                    {
                        MemberCollection positions = OrgSvr.GetUserPositions(cn, YZAuthHelper.LoginUserAccount);
                        List<string> ls = new List<string>();
                        foreach (Member member in positions)
                        {
                            OU ou = member.GetParentOU(cn);
                            ls.Add(string.Format("Company='{0}'", ou.Code));
                        }
                        filter = string.Format("({0})", queryProvider.CombinCondOR(ls.ToArray()));
                    }
                    else
                    {
                        filter = string.Format("CreateUser='{0}'", YZAuthHelper.LoginUserAccount);
                    }
                }
            }
            if (searchType == "QuickSearch")
            {
                //应用关键字过滤
                if (!string.IsNullOrEmpty(keyword))
                    filter = queryProvider.CombinCond(filter, String.Format("CompanyName LIKE N'%{0}%' OR CreateUser LIKE N'%{0}%' OR plan_pur_year LIKE N'%{0}%' OR mat_name LIKE N'%{0}%'", queryProvider.EncodeText(keyword)));
            }

            if (!String.IsNullOrEmpty(filter))
                filter = " WHERE " + filter;

            //获得排序子句
            string order = request.GetSortString("plan_pur_id");

            //获得Query
            string query = @"
            WITH X AS(
                SELECT ROW_NUMBER() OVER(ORDER BY {0}) AS RowNum,* FROM annual_pur_plan {1}
            ),
            Y AS(
                SELECT count(*) AS TotalRows FROM X
            ),
            Z AS(
                SELECT Y.TotalRows,X.* FROM Y,X
            )
            SELECT * FROM Z WHERE RowNum BETWEEN {2} AND {3}
        ";

            query = String.Format(query, order, filter, request.RowNumStart, request.RowNumEnd);

            //执行查询
            JObject rv = new JObject();
            using (SqlConnection cn = new SqlConnection())
            {
                cn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["SFDATA"].ConnectionString;
                cn.Open();

                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.Connection = cn;
                    cmd.CommandText = query;

                    using (YZReader reader = new YZReader(cmd.ExecuteReader()))
                    {
                        //将数据转化为Json集合
                        JArray children = new JArray();
                        rv["children"] = children;
                        int totalRows = 0;

                        while (reader.Read())
                        {
                            JObject item = new JObject();
                            children.Add(item);

                            if (totalRows == 0)
                                totalRows = reader.ReadInt32("TotalRows");

                            item["plan_pur_id"] = reader.ReadInt32("plan_pur_id");
                            item["CompanyName"] = reader.ReadString("CompanyName");
                            item["DeptName"] = reader.ReadString("DeptName");
                            item["plan_pur_year"] = reader.ReadString("plan_pur_year");
                            item["CreateUserName"] = reader.ReadString("CreateUserName");
                            item["mat_code"] = reader.ReadString("mat_code");
                            item["mat_name"] = reader.ReadString("mat_name");
                            item["mat_spec"] = reader.ReadString("mat_spec");
                            item["plan_total_num"] = reader.ReadDecimal("plan_total_num");
                            item["plan_stnum_unit"] = reader.ReadString("plan_stnum_unit");
                            item["plan_price"] = reader.ReadDecimal("plan_price");
                            item["total_price"] = reader.ReadDecimal("total_price");
                            item["planpur_remarks"] = reader.ReadString("planpur_remarks");
                        }
                        
                        rv[YZJsonProperty.total] = totalRows;
                    }
                }
            }

            return rv;
        }
    }
}