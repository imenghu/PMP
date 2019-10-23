<%@ WebHandler Language="C#" Class="Proc_Contract" %>

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

public class Proc_Contract : YZServiceHandler
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
                cmd.CommandText = "Update proc_contract Set state='0' WHERE contract_id=@id";
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
        string proc_type = request.GetString("proc_type", null);
        string proc_status = request.GetString("proc_status", null);
        string vendor = request.GetString("vendor", null);

        //获得查询条件
        string filter = "state='1'";

        if (searchType == "QuickSearch")
        {
            //应用关键字过滤
            if (!string.IsNullOrEmpty(keyword))
                filter = queryProvider.CombinCond(filter, String.Format("CompanyName LIKE N'%{0}%' or vendor_name LIKE N'%{0}%' ", queryProvider.EncodeText(keyword)));
            if (!string.IsNullOrEmpty(proc_type))
                filter = queryProvider.CombinCond(filter, String.Format("contract_type LIKE N'%{0}%'", queryProvider.EncodeText(proc_type)));
            if (!string.IsNullOrEmpty(proc_status))
                filter = queryProvider.CombinCond(filter, String.Format("approval_state LIKE N'%{0}%'", queryProvider.EncodeText(proc_status)));
            if (!string.IsNullOrEmpty(vendor))
                filter = queryProvider.CombinCond(filter, String.Format("vendor_name LIKE N'%{0}%'", queryProvider.EncodeText(vendor)));
           
        }

        if (!String.IsNullOrEmpty(filter))
            filter = " WHERE " + filter;

        //获得排序子句
        string order = request.GetSortString("TaskID");

        //获得Query
        string query = @"
        WITH X AS(
            SELECT ROW_NUMBER() OVER(ORDER BY {0}) AS RowNum,* FROM proc_contract {1}
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
                        item["contract_id"] = reader.ReadInt32("contract_id");
                        item["CompanyName"] = reader.ReadString("CompanyName");
                        item["DeptName"] = reader.ReadString("DeptName");
                        item["contract_code"] = reader.ReadString("contract_code");
                        item["contract_type"] = reader.ReadString("contract_type");
                        item["contract_name"] = reader.ReadString("contract_name");
                        item["vendor_name"] = reader.ReadString("vendor_name");
                        item["if_outsource"] = reader.ReadString("if_outsource");
                        item["total_price"] = reader.ReadString("total_price");
                        item["approval_state"] = reader.ReadString("approval_state");
                    }

                    rv[YZJsonProperty.total] = totalRows;
                }
            }
        }

        return rv;
    }
}
