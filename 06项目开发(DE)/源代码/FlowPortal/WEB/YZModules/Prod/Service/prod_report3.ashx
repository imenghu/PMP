<%@ WebHandler Language="C#" Class=".prod_report3" %>

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

    public class prod_report3 : YZServiceHandler
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
                    cmd.CommandText = "Delete From prod_report3 WHERE =@id";
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
            string filter = "State='1'";
            bool moduleAdmin = true;
            using (BPMConnection cn = new BPMConnection())
            {
                cn.WebOpen();
                moduleAdmin = BPM.Client.Security.UserResource.CheckPermision(cn, "8dddb435-f7db-43dd-a42d-dd29b8f4601c", "Admin");
                if (!moduleAdmin)
                {
                    bool moduleCompany = BPM.Client.Security.UserResource.CheckPermision(cn, "8dddb435-f7db-43dd-a42d-dd29b8f4601c", "Company");
                    if (moduleCompany)
                    {
                        MemberCollection positions = OrgSvr.GetUserPositions(cn, YZAuthHelper.LoginUserAccount);
                        List<string> ls = new List<string>();
                        foreach (Member member in positions)
                        {
                            OU ou = member.GetParentOU(cn);
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
                    filter = queryProvider.CombinCond(filter, String.Format("CompanyName LIKE N'%{0}%' OR CreateUser LIKE N'%{0}%' OR plan_pur_year LIKE N'%{0}%' OR mat_name LIKE N'%{0}%'", queryProvider.EncodeText(keyword)));
            }

            if (!String.IsNullOrEmpty(filter))
                filter = " WHERE " + filter;

            //获得排序子句
            string order = request.GetSortString("report_id");

            //获得Query
            string query = @"
            WITH X AS(
                SELECT ROW_NUMBER() OVER(ORDER BY {0}) AS RowNum,* FROM prod_report3 {1}
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
                            item["report_id"] = 
                                                                    reader.ReadInt32("report_id");
                                                            item["CompanyName"] = 
                                                                    reader.ReadString("CompanyName");
                                                                                            item["workshop"] = 
                                                                    reader.ReadString("workshop");
                                                                                            item["product_line"] = 
                                                                    reader.ReadString("product_line");
                                                                                            item["yield"] = 
                                                                    reader.ReadString("yield");
                                                                                            item["Prod_name"] = 
                                                                    reader.ReadString("Prod_name");
                                                                                            item["spec"] = 
                                                                    reader.ReadString("spec");
                                                                                            item["input_date"] = 
                                                                    reader.ReadDateTime("input_date");
                                                                                            item["today_saka_amount"] = 
                                                                    reader.ReadString("today_saka_amount");
                                                                                            item["today_product_num"] = 
                                                                    reader.ReadString("today_product_num");
                                                                                            item["today_loss"] = 
                                                                    reader.ReadString("today_loss");
                                                                                            item["memo"] = 
                                                                    reader.ReadString("memo");
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
