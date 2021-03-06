﻿<%@ WebHandler Language="C#" Class="close_order" %>
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

public class close_order : YZServiceHandler
{
    public void UPStatus(HttpContext context)
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
                cmd.CommandText = "update sal_order_master set close_order=1 WHERE order_master_id=@id";
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
        string dealer_name = request.GetString("dealer_name", null);
        string salesman_name = request.GetString("salesman_name", null);
        string proc_status = request.GetString("proc_status", null);

        //获得查询条件
        string filter = "State='1'";

        if (searchType == "QuickSearch")
        {
            //应用关键字过滤
            if (!string.IsNullOrEmpty(keyword))
                filter = queryProvider.CombinCond(filter, String.Format("n.dealer_name LIKE N'%{0}%' ", queryProvider.EncodeText(keyword)));

            if (!string.IsNullOrEmpty(plan_pur_year))
                filter = queryProvider.CombinCond(filter, String.Format("n.sale_order LIKE N'%{0}%'", queryProvider.EncodeText(plan_pur_year)));
            if (!string.IsNullOrEmpty(mat_name))
                filter = queryProvider.CombinCond(filter, String.Format("mat_name LIKE N'%{0}%'", queryProvider.EncodeText(mat_name)));
            if (!string.IsNullOrEmpty(proc_status))
                filter = queryProvider.CombinCond(filter, String.Format("n.close_order LIKE N'%{0}%'", queryProvider.EncodeText(proc_status)));
            if (!string.IsNullOrEmpty(dealer_name))
                filter = queryProvider.CombinCond(filter, String.Format("n.dealer_name LIKE N'%{0}%'", queryProvider.EncodeText(dealer_name)));
            if (!string.IsNullOrEmpty(salesman_name))
                filter = queryProvider.CombinCond(filter, String.Format("n.salesman_name LIKE N'%{0}%'", queryProvider.EncodeText(salesman_name)));
           
        }

        if (!String.IsNullOrEmpty(filter))
            filter = " WHERE " + filter;

        //获得排序子句
        string order = request.GetSortString("a.order_master_id");

        //获得Query
        string query = @"
            WITH X AS(
                    select ROW_NUMBER() OVER(ORDER BY {0}) AS RowNum,* from ( SELECT a.*,STUFF((SELECT
                ','+ CONVERT(VARCHAR,b.mat_name)
                FROM sal_order_detail b
                WHERE a.order_master_id=b.order_master_id
                FOR XML PATH ('')), 1, 1, '') AS mat_name
                  FROM sal_order_master a {1}) n
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

                        item["order_master_id"] =
                                reader.ReadInt32("order_master_id");
                        item["sale_order"] =
reader.ReadString("sale_order");
                        item["dealer_name"] =
reader.ReadString("dealer_name");
                        item["consignee_addr"] =
reader.ReadString("consignee_addr");
                        item["consignee_name"] =
reader.ReadString("consignee_name");
                        item["consignee_tel"] =
reader.ReadString("consignee_tel");
                        item["total_price"] =
reader.ReadString("total_price");
                        item["pay_price"] =
reader.ReadString("pay_price");
                        item["salesman_name"] =
reader.ReadString("salesman_name");
                        item["salesman_tel"] =
reader.ReadString("salesman_tel");
                        item["sales_remarks"] =
reader.ReadString("sales_remarks");
                        item["sales_state"] =
reader.ReadString("sales_state");
                        item["close_order"] =
reader.ReadString("close_order");
                        item["mat_name"] =
reader.ReadString("mat_name");
                    }

                    rv[YZJsonProperty.total] = totalRows;
                }
            }
        }

        return rv;
    }
}