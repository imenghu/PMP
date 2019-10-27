<%@ WebHandler Language="C#" Class="proc_arrival_notice" %>

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

public class proc_arrival_notice : YZServiceHandler
{
    public JObject GetData(HttpContext context)
    {
        YZRequest request = new YZRequest(context);
        SqlServerProvider queryProvider = new SqlServerProvider();

        string searchType = request.GetString("SearchType", null);
        string keyword = request.GetString("kwd", null);
        string proc_type = request.GetString("proc_type", null);
        string proc_status = request.GetString("proc_status", null);
        string vendor = request.GetString("vendor", null);
       

        //获得查询条件
        string filter = "state='1'";
        bool moduleAdmin = true;
        using (BPMConnection cn = new BPMConnection())
        {
            cn.WebOpen();
            moduleAdmin = BPM.Client.Security.UserResource.CheckPermision(cn, "87465539-60a2-4ac8-89c5-43529a525c9f", "Admin");
            if (!moduleAdmin)
            {
                bool moduleCompany = BPM.Client.Security.UserResource.CheckPermision(cn, "87465539-60a2-4ac8-89c5-43529a525c9f", "Company");
                if (moduleCompany)
                {
                    MemberCollection positions = OrgSvr.GetUserPositions(cn, YZAuthHelper.LoginUserAccount);
                    List<string> ls = new List<string>();
                    foreach (Member member in positions)
                    {
                        OU ou = member.GetParentOU(cn);
                        ls.Add(string.Format("Company='{0}'", ou.Code));
                    }
                    filter = queryProvider.CombinCond(filter, string.Format("({0})", queryProvider.CombinCondOR(ls.ToArray())));
                }
                else
                {
                    filter = queryProvider.CombinCond(filter, string.Format("CreateUser='{0}'", YZAuthHelper.LoginUserAccount));
                }
            }
        }

        if (searchType == "QuickSearch")
        {
            //应用关键字过滤
            if (!string.IsNullOrEmpty(keyword))
                filter = queryProvider.CombinCond(filter, String.Format("mat_name LIKE N'%{0}%' or vendor_name LIKE N'%{0}%' ", queryProvider.EncodeText(keyword)));
            if (!string.IsNullOrEmpty(proc_type))
                filter = queryProvider.CombinCond(filter, String.Format("notice_state LIKE N'%{0}%'", queryProvider.EncodeText(proc_type)));
            if (!string.IsNullOrEmpty(proc_status))
                filter = queryProvider.CombinCond(filter, String.Format("mat_name LIKE N'%{0}%'", queryProvider.EncodeText(proc_status)));
            if (!string.IsNullOrEmpty(vendor))
                filter = queryProvider.CombinCond(filter, String.Format("vendor_name LIKE N'%{0}%'", queryProvider.EncodeText(vendor)));
            

        }

        if (!String.IsNullOrEmpty(filter))
            filter = " WHERE " + filter;

        //获得排序子句
        string order = request.GetSortString("arrival_notice_id");

        //获得Query
        string query = @"
        WITH X AS(
            SELECT ROW_NUMBER() OVER(ORDER BY {0}) AS RowNum,* FROM v_proc_arrival_notice {1}
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

                        //item["TaskID"] = reader.ReadInt32("TaskID");
                        
                        item["arrival_notice_id"] = reader.ReadInt32("arrival_notice_id");
                        item["in_detail_id"] = reader.ReadInt32("in_detail_id");

                        item["CompanyName"] = reader.ReadString("CompanyName");
                        //item["dept"] = reader.ReadString("dept");
                        item["vendor_name"] = reader.ReadString("vendor_name");
                        item["mat_name"] = reader.ReadString("mat_name");
                        item["mat_spesc"] = reader.ReadString("mat_spesc");
                        item["arrival_slnum"] = reader.ReadString("arrival_slnum");
                        item["arrival_slnum_unit"] = reader.ReadString("arrival_slnum_unit");
                        item["arrival_username"] = reader.ReadString("arrival_username");
                        item["StoreUserName"] = reader.ReadString("StoreUserName");
                        item["arrival_usertel"] = reader.ReadString("arrival_usertel");
                        item["plan_arrival_price"] = reader.ReadString("plan_arrival_price");
                        item["create_time"] = reader.ReadString("create_time");
                        item["plan_arrival_time"] = reader.ReadString("plan_arrival_time");
                        item["notice_state"] = reader.ReadString("notice_state");

                    }

                    rv[YZJsonProperty.total] = totalRows;
                }
            }
        }

        return rv;
    }
}
