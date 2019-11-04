﻿<%@ WebHandler Language="C#" Class="Prod.Prod_test7" %>

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
    public class Prod_test7 : YZServiceHandler
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
                    cmd.CommandText = "update Prod_test7 set state = '0' WHERE test_id=@id";
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
            string operator_name = request.GetString("operator_name", null);
            string mat_name = request.GetString("mat_name", null);
     

            //获得查询条件
            string filter = "state = '1'";
            bool moduleAdmin = true;
            using (BPMConnection cn = new BPMConnection())
            {
                cn.WebOpen();
                moduleAdmin = BPM.Client.Security.UserResource.CheckPermision(cn, "52081dfe-db6c-4de8-8023-3030d82dca85", "Admin");
                if (!moduleAdmin)
                {
                    bool moduleCompany = BPM.Client.Security.UserResource.CheckPermision(cn, "52081dfe-db6c-4de8-8023-3030d82dca85", "Company");
                    if (moduleCompany)
                    {
                        MemberCollection positions = OrgSvr.GetUserPositions(cn, YZAuthHelper.LoginUserAccount);
                        List<string> ls = new List<string>();
                        foreach (Member member in positions)
                        {
                            OU ou = member.GetParentOU(cn, "公司");
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
                    filter = queryProvider.CombinCond(filter, String.Format("CompanyName LIKE N'%{0}%' or mat_name LIKE N'%{0}%' or production_line LIKE N'%{0}%'", queryProvider.EncodeText(keyword)));
                if (!string.IsNullOrEmpty(operator_name))
                    filter = queryProvider.CombinCond(filter, String.Format("operator_name LIKE N'%{0}%' ", queryProvider.EncodeText(operator_name)));
                if (!string.IsNullOrEmpty(mat_name))
                    filter = queryProvider.CombinCond(filter, String.Format("mat_name LIKE N'%{0}%' ", queryProvider.EncodeText(mat_name)));
            }

            if (!String.IsNullOrEmpty(filter))
                filter = " WHERE " + filter;

            //获得排序子句
            string order = request.GetSortString("test_id");

            //获得Query
            string query = @"
            WITH X AS(
                SELECT ROW_NUMBER() OVER(ORDER BY {0}) AS RowNum,* FROM Prod_test7 {1}
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
                                                            item["analyze_date"] = 
                                                                    reader.ReadDateTime("analyze_date");
                                                                                            item["CompanyName"] = 
                                                                    reader.ReadString("CompanyName");
                                                                                            item["mat_name"] = 
                                                                    reader.ReadString("mat_name");
                                                                                            item["production_line"] = 
                                                                    reader.ReadString("production_line");
                                                                                            item["position"] = 
                                                                    reader.ReadString("position");
                                                                                            item["steril_time"] = 
                                                                    reader.ReadString("steril_time");
                                                                                            item["beer_temp"] = 
                                                                    reader.ReadString("beer_temp");
                                                                                            item["steril_temp_max"] = 
                                                                    reader.ReadString("steril_temp_max");
                                                                                            item["pu50"] = 
                                                                    reader.ReadString("pu50");
                                                                                            item["pu60"] = 
                                                                    reader.ReadString("pu60");
                                                                                            item["operator_name"] = 
                                                                    reader.ReadString("operator_name");
                                                                                            item["memo"] = 
                                                                    reader.ReadString("memo");
                                                                                    }
                        
                        rv[YZJsonProperty.total] = totalRows;
                    }
                }
            }

            return rv;
        }
    }
}