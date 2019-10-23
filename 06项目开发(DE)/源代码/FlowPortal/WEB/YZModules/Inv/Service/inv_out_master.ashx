<%@ WebHandler Language="C#" Class="Inv.inv_out_master" %>

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
    public class inv_out_master : YZServiceHandler
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
                    cmd.CommandText = "update inv_out_master set state='0' WHERE out_master_id=@id";
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
            string proc_status = request.GetString("proc_status", null);

            string Inv_out_user = request.GetString("Inv_out_user", null);

            //获得查询条件
            string filter = "state=1";

            if (searchType == "QuickSearch")
            {
                //应用关键字过滤
                if (!string.IsNullOrEmpty(keyword))
                    filter = queryProvider.CombinCond(filter, String.Format("out_state LIKE N'%{0}%' OR CreateUserName LIKE N'%{0}%' ", queryProvider.EncodeText(keyword)));
                if (!string.IsNullOrEmpty(proc_status))
                    filter = queryProvider.CombinCond(filter, String.Format("out_state LIKE N'%{0}%'", queryProvider.EncodeText(proc_status)));
                
                if (!string.IsNullOrEmpty(Inv_out_user))
                    filter = queryProvider.CombinCond(filter, String.Format("CreateUserName LIKE N'%{0}%'", queryProvider.EncodeText(Inv_out_user)));
            }

            if (!String.IsNullOrEmpty(filter))
                filter = " WHERE " + filter;

            //获得排序子句
            string order = request.GetSortString("out_master_id");

            //获得Query
            string query = @"
            WITH X AS(
                SELECT ROW_NUMBER() OVER(ORDER BY {0}) AS RowNum,*
                FROM inv_out_master {1}
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

                            item["TaskID"] =
reader.ReadInt32("TaskID");
                            item["out_master_id"] =
reader.ReadInt32("out_master_id");
                            item["CompanyName"] =
                                    reader.ReadString("CompanyName");
                            item["DeptName"] =
    reader.ReadString("DeptName");
                            item["CreateUserName"] =
    reader.ReadString("CreateUserName");
                            item["ReqOrgName"] =
    reader.ReadString("ReqOrgName");
                            item["ReqUserName"] =
    reader.ReadString("ReqUserName");
                            item["out_state"] =
    reader.ReadString("out_state");
                            item["create_time"] =
    reader.ReadDateTime("create_time");
                            item["outmaster_remarks"] =
    reader.ReadString("outmaster_remarks");
                        }
                        
                        rv[YZJsonProperty.total] = totalRows;
                    }
                }
            }

            return rv;
        }
    }
}