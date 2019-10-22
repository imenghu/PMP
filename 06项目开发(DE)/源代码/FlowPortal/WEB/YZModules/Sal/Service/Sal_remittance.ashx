<%@ WebHandler Language="C#" Class="Sal.Sal_remittance" %>

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

namespace Sal
{
    public class Sal_remittance : YZServiceHandler
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
                    cmd.CommandText = "Delete From Sal_remittance WHERE remittance_id=@id";
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
              string plan_pur_year = request.GetString("kwd", null);
              string mat_name = request.GetString("kwd", null);

            //获得查询条件
            string filter = "";
            bool moduleAdmin = true;
            using (BPMConnection cn = new BPMConnection())
            {
                cn.WebOpen();
                moduleAdmin = BPM.Client.Security.UserResource.CheckPermision(cn, "b013a43e-7bf9-49de-a916-05827f0c83ac", "Admin");
                if (!moduleAdmin)
                {
                    bool moduleCompany = BPM.Client.Security.UserResource.CheckPermision(cn, "b013a43e-7bf9-49de-a916-05827f0c83ac", "Company");
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
                
                 if (!string.IsNullOrEmpty(plan_pur_year))
                    filter = queryProvider.CombinCond(filter, String.Format("sale_order LIKE N'%{0}%'", queryProvider.EncodeText(plan_pur_year)));
                if (!string.IsNullOrEmpty(mat_name))
                    filter = queryProvider.CombinCond(filter, String.Format("mat_name LIKE N'%{0}%'", queryProvider.EncodeText(mat_name)));
            }

            if (!String.IsNullOrEmpty(filter))
                filter = " WHERE " + filter;

            //获得排序子句
            string order = request.GetSortString("remittance_id");

            //获得Query
            string query = @"
            WITH X AS(
                SELECT ROW_NUMBER() OVER(ORDER BY {0}) AS RowNum,* FROM Sal_remittance {1}
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
                            item["remittance_id"] =
                                                                    reader.ReadInt32("remittance_id");
                            item["CompanyName"] =
                                    reader.ReadString("CompanyName");
                                                            item["customer_name"] = 
                                                                    reader.ReadString("customer_name");
                                                                                            item["customer_code"] = 
                                                                    reader.ReadString("customer_code");
                                                                                            item["name"] = 
                                                                    reader.ReadString("name");
                                                                                            item["remittance_type"] = 
                                                                    reader.ReadString("remittance_type");
                                                                                            item["remittance_money"] = 
                                                                    reader.ReadString("remittance_money");
                                                                                            item["remittance_recer"] = 
                                                                    reader.ReadString("remittance_recer");
                                                                                            item["remittance_date"] = 
                                                                    reader.ReadDateTime("remittance_date");
                                                                                            item["remittance_effect"] = 
                                                                    reader.ReadString("remittance_effect");
                                                                                    }
                        
                        rv[YZJsonProperty.total] = totalRows;
                    }
                }
            }

            return rv;
        }
    }
}