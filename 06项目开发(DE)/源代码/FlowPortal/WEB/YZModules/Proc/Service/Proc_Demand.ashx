<%@ WebHandler Language="C#" Class="Purchase.Proc_Demand" %>

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
    public class Proc_Demand : YZServiceHandler
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
                    cmd.CommandText = "Update proc_demand Set Status='Deleted' WHERE TaskID=@id";
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
            string filter = "(State='1' and demand_state<>'0')";
            bool moduleAdmin = true;
            using (BPMConnection cn = new BPMConnection())
            {
                cn.WebOpen();
                moduleAdmin = BPM.Client.Security.UserResource.CheckPermision(cn, "1f537a3f-564f-4b94-a39e-592f6d601577", "Admin");
                if (!moduleAdmin)
                {
                    bool moduleCompany = BPM.Client.Security.UserResource.CheckPermision(cn, "1f537a3f-564f-4b94-a39e-592f6d601577", "Company");
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
            string order = request.GetSortString("demand_id");

            //获得Query
            string query = @"
            WITH X AS(
                SELECT ROW_NUMBER() OVER(ORDER BY {0}) AS RowNum,* FROM proc_demand {1}
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

                            item["TaskID"] = reader.ReadInt32("TaskID");
                            item["demand_id"] = reader.ReadInt32("demand_id");
                            item["SN"] = reader.ReadString("SN");
                            item["CompanyName"] = reader.ReadString("CompanyName");
                            item["DeptName"] = reader.ReadString("DeptName");
                            item["CreateUserName"] = reader.ReadString("CreateUserName");
                            item["total_price"] = reader.ReadString("total_price");
                            item["demand_remarks"] = reader.ReadString("demand_remarks");
                            item["create_time"] = reader.ReadDateTime("create_time").ToString("yyyy-MM-dd");
                            item["demand_state"] = reader.ReadString("demand_state");
                        }

                        rv[YZJsonProperty.total] = totalRows;
                    }
                }
            }

            return rv;
        }
    }
}