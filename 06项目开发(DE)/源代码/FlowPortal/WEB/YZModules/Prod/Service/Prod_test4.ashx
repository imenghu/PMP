<%@ WebHandler Language="C#" Class="Prod.prod_test4" %>

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

namespace Prod
{
    public class prod_test4 : YZServiceHandler
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
                    cmd.CommandText = "Delete From prod_test4 WHERE test_id=@id";
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
            string filter = "";

            if (searchType == "QuickSearch")
            {
                //应用关键字过滤
                if (!string.IsNullOrEmpty(keyword))
                    filter = queryProvider.CombinCond(filter, String.Format("CompanyName LIKE N'%{0}%' OR CreateUser LIKE N'%{0}%' OR plan_pur_year LIKE N'%{0}%' OR mat_name LIKE N'%{0}%'", queryProvider.EncodeText(keyword)));
            }

            if (!String.IsNullOrEmpty(filter))
                filter = " WHERE " + filter;

            //获得排序子句
            string order = request.GetSortString("test_id");

            //获得Query
            string query = @"
            WITH X AS(
                SELECT ROW_NUMBER() OVER(ORDER BY {0}) AS RowNum,* FROM prod_test4 {1}
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
                            item["test_id"] =
                                                                    reader.ReadInt32("test_id");
                                                            item["mat_name"] = 
                                                                    reader.ReadString("mat_name");
                                                                                            item["tank_id"] = 
                                                                    reader.ReadString("tank_id");
                                                                                            item["buble_sus"] = 
                                                                    reader.ReadString("buble_sus");
                                                                                            item["buble_h"] = 
                                                                    reader.ReadString("buble_h");
                                                                                            item["real_ferment"] = 
                                                                    reader.ReadString("real_ferment");
                                                                                            item["wort_concent"] = 
                                                                    reader.ReadString("wort_concent");
                                                                                            item["true_concent"] = 
                                                                    reader.ReadString("true_concent");
                                                                                            item["alcohol"] = 
                                                                    reader.ReadString("alcohol");
                                                                                            item["total_acid"] = 
                                                                    reader.ReadString("total_acid");
                                                                                            item["net"] = 
                                                                    reader.ReadString("net");
                                                                                            item["chroma_ebc"] = 
                                                                    reader.ReadString("chroma_ebc");
                                                                                            item["turbidity_ebc"] = 
                                                                    reader.ReadString("turbidity_ebc");
                                                                                            item["ph"] = 
                                                                    reader.ReadString("ph");
                                                                                            item["carbon_acid"] = 
                                                                    reader.ReadString("carbon_acid");
                                                                                            item["diacetyl"] = 
                                                                    reader.ReadString("diacetyl");
                                                                                            item["bitter_bu"] = 
                                                                    reader.ReadString("bitter_bu");
                                                                                            item["bottleneck"] = 
                                                                    reader.ReadString("bottleneck");
                                                                                            item["prod_date"] = 
                                                                    reader.ReadDateTime("prod_date");
                                                                                    }
                        
                        rv[YZJsonProperty.total] = totalRows;
                    }
                }
            }

            return rv;
        }
    }
}