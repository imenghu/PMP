﻿<%@ WebHandler Language="C#" Class="sal_prod_deliver" %>

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

public class sal_prod_deliver : YZServiceHandler
{
    public JObject GetData(HttpContext context)
    {
        YZRequest request = new YZRequest(context);
        SqlServerProvider queryProvider = new SqlServerProvider();

        string searchType = request.GetString("SearchType", null);
        string keyword = request.GetString("kwd", null);
        string plan_pur_year = request.GetString("plan_pur_year", null);
        string mat_name = request.GetString("mat_name", null);
        string proc_status = request.GetString("proc_status", null);
        string dealer_name = request.GetString("dealer_name", null);

        //获得查询条件
        string filter = "State='1'";
        bool moduleAdmin = true;
        using (BPMConnection cn = new BPMConnection())
        {
            cn.WebOpen();
            moduleAdmin = BPM.Client.Security.UserResource.CheckPermision(cn, "d7c0a77c-72c0-4b6f-9869-a4ac29a86b69", "Admin");
            if (!moduleAdmin)
            {
                bool moduleCompany = BPM.Client.Security.UserResource.CheckPermision(cn, "d7c0a77c-72c0-4b6f-9869-a4ac29a86b69", "Company");
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
                filter = queryProvider.CombinCond(filter, String.Format("b.mat_name LIKE N'%{0}%' OR dealer_name LIKE N'%{0}%' ", queryProvider.EncodeText(keyword)));
            if (!string.IsNullOrEmpty(plan_pur_year))
                filter = queryProvider.CombinCond(filter, String.Format("a.sale_order LIKE N'%{0}%'", queryProvider.EncodeText(plan_pur_year)));
            if (!string.IsNullOrEmpty(mat_name))
                filter = queryProvider.CombinCond(filter, String.Format("b.mat_name LIKE N'%{0}%'", queryProvider.EncodeText(mat_name)));
            //if (!string.IsNullOrEmpty(proc_status))
            //    filter = queryProvider.CombinCond(filter, String.Format("sales_state LIKE N'%{0}%'", queryProvider.EncodeText(proc_status)));
            if (!string.IsNullOrEmpty(dealer_name))
                filter = queryProvider.CombinCond(filter, String.Format("dealer_name LIKE N'%{0}%'", queryProvider.EncodeText(dealer_name)));

        }

        if (!String.IsNullOrEmpty(filter))
            filter = " WHERE " + filter;

        //获得排序子句
        string order = request.GetSortString("order_detail_id");

        //获得Query
        string query = @"
            WITH X AS(
                SELECT ROW_NUMBER() OVER(ORDER BY {0}) AS RowNum,* FROM v_sal_order_detail {1}
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
                        item["order_detail_id"] =
                                reader.ReadInt32("order_detail_id");
                        item["CompanyName"] =
                                reader.ReadString("CompanyName");
                        item["sale_order"] =
reader.ReadString("sale_order");
                        item["dealer_name"] =
reader.ReadString("dealer_name");
                        item["deliver_stnum"] =
reader.ReadDecimal("deliver_stnum");
                        item["consignee_addr"] =
reader.ReadString("consignee_addr");
                        item["consignee_name"] =
reader.ReadString("consignee_name");
                        item["consignee_tel"] =
reader.ReadString("consignee_tel");
                        item["mat_code"] =
reader.ReadString("mat_code");
                        item["mat_name"] =
reader.ReadString("mat_name");
                        item["mat_spesc"] =
reader.ReadString("mat_spesc");
                        item["order_stnum"] =
reader.ReadString("order_stnum");
                        item["order_stnum_unit"] =
reader.ReadString("order_stnum_unit");
                        item["sales_remarks"] =
reader.ReadString("sales_remarks");
                        item["create_time"] =
reader.ReadDateTime("create_time");

                    }

                    rv[YZJsonProperty.total] = totalRows;
                }
            }
        }

        return rv;
    }
}