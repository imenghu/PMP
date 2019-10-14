﻿<%@ WebHandler Language="C#" Class="Prod.Prod_test2" %>

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
    public class Prod_test2 : YZServiceHandler
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
                    cmd.CommandText = "Delete From Prod_test2 WHERE =@id";
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
            string order = request.GetSortString("");

            //获得Query
            string query = @"
            WITH X AS(
                SELECT ROW_NUMBER() OVER(ORDER BY {0}) AS RowNum,* FROM Prod_test2 {1}
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
                            item["test_id"] = reader.ReadInt32("test_id");
                                                            item["CompanyName"] = 
                                                                    reader.ReadString("CompanyName");
                                                                                            item["analyze_date"] = 
                                                                    reader.ReadDateTime("analyze_date");
                                                                                            item["mat_name"] = 
                                                                    reader.ReadString("mat_name");
                                                                                            item["tank_id"] = 
                                                                    reader.ReadString("tank_id");
                                                                                            item["alcohol"] = 
                                                                    reader.ReadString("alcohol");
                                                                                            item["real_ferment"] = 
                                                                    reader.ReadString("real_ferment");
                                                                                            item["wort_concent"] = 
                                                                    reader.ReadString("wort_concent");
                                                                                            item["true_concent"] = 
                                                                    reader.ReadString("true_concent");
                                                                                            item["total_acid"] = 
                                                                    reader.ReadString("total_acid");
                                                                                            item["co2"] = 
                                                                    reader.ReadString("co2");
                                                                                            item["dis_oxygen"] = 
                                                                    reader.ReadString("dis_oxygen");
                                                                                            item["chroma_ebc"] = 
                                                                    reader.ReadString("chroma_ebc");
                                                                                            item["turbidity_ebc"] = 
                                                                    reader.ReadString("turbidity_ebc");
                                                                                            item["ph"] = 
                                                                    reader.ReadString("ph");
                                                                                            item["memo"] = 
                                                                    reader.ReadString("memo");
                                                                                            item["operator_name"] = 
                                                                    reader.ReadString("operator_name");
                                                                                    }
                        
                        rv[YZJsonProperty.total] = totalRows;
                    }
                }
            }

            return rv;
        }
    }
}