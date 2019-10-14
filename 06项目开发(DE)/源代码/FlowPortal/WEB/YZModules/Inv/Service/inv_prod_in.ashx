<%@ WebHandler Language="C#" Class="Inv.inv_prod_in" %>

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

namespace Inv
{
    public class inv_prod_in : YZServiceHandler
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
                    cmd.CommandText = "Delete From inv_prod_in WHERE prod_in_id=@id";
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

            if (searchType == "QuickSearch")
            {
                //应用关键字过滤
                if (!string.IsNullOrEmpty(keyword))
                    filter = queryProvider.CombinCond(filter, String.Format("CompanyName LIKE N'%{0}%' OR CreateUser LIKE N'%{0}%' OR plan_pur_year LIKE N'%{0}%' OR mat_name LIKE N'%{0}%'", queryProvider.EncodeText(keyword)));
            }

            if (!String.IsNullOrEmpty(filter))
                filter = " WHERE " + filter;

            //获得排序子句
            string order = request.GetSortString("prod_in_id");

            //获得Query
            string query = @"
            WITH X AS(
                SELECT ROW_NUMBER() OVER(ORDER BY {0}) AS RowNum,* FROM inv_prod_in {1}
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

                            item["prod_in_id"] =
    reader.ReadInt32("prod_in_id");
                            item["mat_code"] =
                                    reader.ReadString("mat_code");
                            item["mat_name"] =
    reader.ReadString("mat_name");
                            item["mat_spec"] =
    reader.ReadString("mat_spec");
                            item["in_stnum"] =
    reader.ReadInt32("in_stnum");
                            item["in_stnum_unit"] =
    reader.ReadString("in_stnum_unit");
                            item["prod_org_id"] =
    reader.ReadInt32("prod_org_id");
                            item["depot_name"] =
    reader.ReadString("depot_name");
                            item["dep_userid"] =
    reader.ReadInt32("dep_userid");
                            item["in_time"] =
    reader.ReadDateTime("in_time");
                            item["prod_in_remarks"] =
    reader.ReadString("prod_in_remarks");
                        }

                        rv[YZJsonProperty.total] = totalRows;
                    }
                }
            }

            return rv;
        }
    }
}