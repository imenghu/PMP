<%@ WebHandler Language="C#" Class="Sys.ctl_material" %>

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

namespace Sys
{
    public class ctl_material : YZServiceHandler
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
                    cmd.CommandText = "update ctl_material set state='0' WHERE mat_id=@id";
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
            string plan_pur_year = request.GetString("plan_pur_year", null);
            string mat_name = request.GetString("mat_name", null);

            //获得查询条件
            string filter = "State='1'";
            //bool moduleAdmin = true;
            //using (BPMConnection cn = new BPMConnection())
            //{
            //    cn.WebOpen();
            //    moduleAdmin = BPM.Client.Security.UserResource.CheckPermision(cn, "52e66d08-83cc-42a3-b4e3-b0b9bdc4f0d6", "Admin");
            //    if (!moduleAdmin)
            //    {
            //        bool moduleCompany = BPM.Client.Security.UserResource.CheckPermision(cn, "52e66d08-83cc-42a3-b4e3-b0b9bdc4f0d6", "Company");
            //        if (moduleCompany)
            //        {
            //            MemberCollection positions = OrgSvr.GetUserPositions(cn, YZAuthHelper.LoginUserAccount);
            //            List<string> ls = new List<string>();
            //            foreach (Member member in positions)
            //            {
            //                OU ou = member.GetParentOU(cn);
            //                ls.Add(string.Format("Company='{0}'", ou.Code));
            //            }
            //            filter = queryProvider.CombinCond(filter, string.Format("({0})", queryProvider.CombinCondOR(ls.ToArray())));
            //        }
            //        else
            //        {
            //            filter = queryProvider.CombinCond(filter, string.Format("CreateUser='{0}'", YZAuthHelper.LoginUserAccount));
            //        }
            //    }
            //}

            if (searchType == "QuickSearch")
            {
                //应用关键字过滤
                if (!string.IsNullOrEmpty(keyword))
                    filter = queryProvider.CombinCond(filter, String.Format("mat_name LIKE N'%{0}%' OR mat_code LIKE N'%{0}%' ", queryProvider.EncodeText(keyword)));
                if (!string.IsNullOrEmpty(plan_pur_year))
                    filter = queryProvider.CombinCond(filter, String.Format("mat_code LIKE N'%{0}%' ", queryProvider.EncodeText(plan_pur_year)));
                if (!string.IsNullOrEmpty(mat_name))
                    filter = queryProvider.CombinCond(filter, String.Format("mat_name LIKE N'%{0}%' ", queryProvider.EncodeText(mat_name)));
            }

            if (!String.IsNullOrEmpty(filter))
                filter = " WHERE " + filter;

            //获得排序子句
            string order = request.GetSortString("mat_id");

            //获得Query
            string query = @"
            WITH X AS(
                SELECT ROW_NUMBER() OVER(ORDER BY {0}) AS RowNum,* FROM ctl_material {1}
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

                            item["mat_id"] =
                                    reader.ReadInt32("mat_id");
                            item["first_name"] =
    reader.ReadString("first_name");
                            item["mat_code"] =
    reader.ReadString("mat_code");
                            item["mat_name"] =
    reader.ReadString("mat_name");
                            item["mat_spec"] =
    reader.ReadString("mat_spec");
                            item["base_unit"] =
    reader.ReadString("base_unit");
                            item["if_drybulk"] =
    reader.ReadString("if_drybulk");
                            item["if_group_pur"] =
    reader.ReadString("if_group_pur");
                            item["if_greement"] =
    reader.ReadString("if_greement");
                            item["mast_state"] =
    reader.ReadString("mast_state");
                        }

                        rv[YZJsonProperty.total] = totalRows;
                    }
                }
            }

            return rv;
        }
    }
}