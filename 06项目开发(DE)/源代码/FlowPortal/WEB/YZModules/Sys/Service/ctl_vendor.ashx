<%@ WebHandler Language="C#" Class="Sys.ctl_vendor" %>

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

namespace Sys
{
    public class ctl_vendor : YZServiceHandler
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
                    cmd.CommandText = "update ctl_vendor set state = '0' WHERE vendor_id=@id";
                    cmd.Parameters.Add("@id", SqlDbType.Int).Value = id;
                    cmd.ExecuteNonQuery();
                }
            }
        }
        public JObject GetValue(HttpContext context)
        {
            YZRequest request = new YZRequest(context);
            SqlServerProvider queryProvider = new SqlServerProvider();


            string query = @"
            select vendor_name from ctl_vendor 
        ";



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

                         
                            item["vendor_name"] = reader.ReadString("vendor_name");

                            rv[YZJsonProperty.total] = totalRows;
                        }
                    }
                }

                return rv;
            }
        }
        
        public JObject GetData(HttpContext context)
        {
            YZRequest request = new YZRequest(context);
            SqlServerProvider queryProvider = new SqlServerProvider();

            string searchType = request.GetString("SearchType", null);
            string keyword = request.GetString("kwd", null);
            string proc_status = request.GetString("proc_status", null);
            string mat_name = request.GetString("mat_name", null);

            //获得查询条件
            string filter = "n.State='1'";
            bool moduleAdmin = true;
            using (BPMConnection cn = new BPMConnection())
            {
                cn.WebOpen();
                moduleAdmin = BPM.Client.Security.UserResource.CheckPermision(cn, "3c06362f-8667-4ddb-a739-203612e854e2", "Admin");
                if (!moduleAdmin)
                {
                    bool moduleCompany = BPM.Client.Security.UserResource.CheckPermision(cn, "3c06362f-8667-4ddb-a739-203612e854e2", "Company");
                    if (moduleCompany)
                    {
                        MemberCollection positions = OrgSvr.GetUserPositions(cn, YZAuthHelper.LoginUserAccount);
                        List<string> ls = new List<string>();
                        foreach (Member member in positions)
                        {
                            OU ou = member.GetParentOU(cn, "公司");
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
                    filter = queryProvider.CombinCond(filter, String.Format("vendor_name LIKE N'%{0}%' OR mat_name LIKE N'%{0}%' OR CompanyName LIKE N'%{0}%' or vendor_contact LIKE N'%{0}%'", queryProvider.EncodeText(keyword)));
                if (!string.IsNullOrEmpty(proc_status))
                    filter = queryProvider.CombinCond(filter, String.Format("vendor_name LIKE N'%{0}%' ", queryProvider.EncodeText(proc_status)));
                if (!string.IsNullOrEmpty(mat_name))
                    filter = queryProvider.CombinCond(filter, String.Format("mat_name LIKE N'%{0}%' ", queryProvider.EncodeText(mat_name)));
            }

            if (!String.IsNullOrEmpty(filter))
                filter = " WHERE " + filter;

            //获得排序子句
            string order = request.GetSortString("n.vendor_id");

            //获得Query
            string query = @"
            WITH X AS(
                select ROW_NUMBER() OVER(ORDER BY {0}) AS RowNum,* from ( SELECT a.*,STUFF((SELECT
','+ CONVERT(VARCHAR,b.mat_name)
FROM ctl_vendor_mat b
WHERE a.vendor_id =b.vendor_id 
FOR XML PATH ('')), 1, 1, '') AS mat_name
  FROM ctl_vendor a ) n {1}
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

                            item["CompanyName"] =
                                    reader.ReadString("CompanyName");
                            item["vendor_name"] =
                                    reader.ReadString("vendor_name");
                            item["mat_name"] =
                                    reader.ReadString("mat_name");
                            
                            item["tax_cer_no"] =
    reader.ReadString("tax_cer_no");
                            item["vendor_contact"] =
    reader.ReadString("vendor_contact");
                            item["vendor_tel"] =
    reader.ReadString("vendor_tel");
                            item["vendor_addr"] =
    reader.ReadString("vendor_addr");
                            item["vendor_state"] =
    reader.ReadString("vendor_state");
                            item["CreateUserName"] =
    reader.ReadString("CreateUserName");
                            item["UpdateUserName"] =
    reader.ReadString("UpdateUserName");
                            item["vendor_id"] =
    reader.ReadInt32("vendor_id");
                        }

                        rv[YZJsonProperty.total] = totalRows;
                    }
                }
            }

            return rv;
        }
    }
}