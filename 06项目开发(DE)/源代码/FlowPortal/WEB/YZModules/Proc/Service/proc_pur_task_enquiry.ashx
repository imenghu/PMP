<%@ WebHandler Language="C#" Class="proc_pur_task_enquiry" %>

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

public class proc_pur_task_enquiry : YZServiceHandler
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
        string task_state = request.GetString("task_state", null);

        //获得查询条件
        string filter = "1=1";
        bool moduleAdmin = true;
        using (BPMConnection cn = new BPMConnection())
        {
            cn.WebOpen();
            moduleAdmin = BPM.Client.Security.UserResource.CheckPermision(cn, "e026627d-3e64-4bc4-8a63-df188aa10515", "Admin");
            if (!moduleAdmin)
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
        }

        if (searchType == "QuickSearch")
        {
            //应用关键字过滤
            if (!string.IsNullOrEmpty(keyword))
                filter = queryProvider.CombinCond(filter, String.Format("CompanyName LIKE N'%{0}%'", queryProvider.EncodeText(keyword)));
            if (!string.IsNullOrEmpty(proc_type))
                filter = queryProvider.CombinCond(filter, String.Format("companyname LIKE N'%{0}%'", queryProvider.EncodeText(proc_type)));
            if (!string.IsNullOrEmpty(proc_status))
                filter = queryProvider.CombinCond(filter, String.Format("dept LIKE N'%{0}%'", queryProvider.EncodeText(proc_status)));
            if (!string.IsNullOrEmpty(vendor))
                filter = queryProvider.CombinCond(filter, String.Format("mat_name LIKE N'%{0}%'", queryProvider.EncodeText(vendor)));
            if (!string.IsNullOrEmpty(task_state))
                filter = queryProvider.CombinCond(filter, String.Format("task_state LIKE N'%{0}%'", queryProvider.EncodeText(task_state)));
           
        }

        if (!String.IsNullOrEmpty(filter))
            filter = " WHERE " + filter;

        //获得排序子句
        string order = request.GetSortString("pur_task_id");

        //获得Query
        string query = @"
        WITH X AS(
            SELECT ROW_NUMBER() OVER(ORDER BY {0}) AS RowNum,* FROM proc_pur_task {1}
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

                        item["pur_task_id"] = reader.ReadInt32("pur_task_id");
                        item["CompanyName"] = reader.ReadString("CompanyName");
                        item["DeptName"] = reader.ReadString("DeptName");
                        item["mat_code"] = reader.ReadString("mat_code");
                        item["mat_name"] = reader.ReadString("mat_name");
                        item["mat_spec"] = reader.ReadString("mat_spec");
                        item["pur_slnum"] = reader.ReadString("pur_slnum");
                        item["pur_slnum_unit"] = reader.ReadString("pur_slnum_unit");
                        item["plan_price"] = reader.ReadString("plan_price");
                        item["item_price"] = reader.ReadString("item_price");
                        item["plan_arrival_time"] = reader.ReadDateTime("plan_arrival_time");
                        item["if_urg"] = reader.ReadString("if_urg");
                        item["TaskUserName"] = reader.ReadString("TaskUserName");
                        item["task_state"] = reader.ReadString("task_state");
                        
                    }

                    rv[YZJsonProperty.total] = totalRows;
                }
            }
        }

        return rv;
    }
}
