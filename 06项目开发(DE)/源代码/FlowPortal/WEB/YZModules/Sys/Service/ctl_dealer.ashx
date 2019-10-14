<%@ WebHandler Language="C#" Class="Sys.ctl_dealer" %>

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
    public class ctl_dealer : YZServiceHandler
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
                    cmd.CommandText = "Delete From ctl_dealer WHERE dealer_id=@id";
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
            string filter = "ctl_dealer.State='1'";

            if (searchType == "QuickSearch")
            {
                //应用关键字过滤
                if (!string.IsNullOrEmpty(keyword))
                    filter = queryProvider.CombinCond(filter, String.Format("CompanyName LIKE N'%{0}%' OR CreateUser LIKE N'%{0}%' OR plan_pur_year LIKE N'%{0}%' OR mat_name LIKE N'%{0}%'", queryProvider.EncodeText(keyword)));
            }

            if (!String.IsNullOrEmpty(filter))
                filter = " WHERE " + filter;

            //获得排序子句
            string order = request.GetSortString("dealer_id");

            //获得Query
            string query = @"
            WITH X AS(
                SELECT ROW_NUMBER() OVER(ORDER BY {0}) AS RowNum,ctl_dealer.*,a.name as province,b.name as city FROM ctl_dealer join ctl_area a on a.id=ctl_dealer.province_id join ctl_area b on b.id=ctl_dealer.city_id {1}
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

                            item["dealer_id"] =
                                    reader.ReadInt32("dealer_id");
                                                            item["CompanyName"] = 
                                                                    reader.ReadString("CompanyName");
                                                                                            item["province_id"] = 
                                                                    reader.ReadString("province");
                                                                                            item["city_id"] = 
                                                                    reader.ReadString("city");
                                                                                            item["dealer_name"] = 
                                                                    reader.ReadString("dealer_name");
                                                                                            item["tax_cer_no"] = 
                                                                    reader.ReadString("tax_cer_no");
                                                                                            item["dealer_zipcode"] = 
                                                                    reader.ReadString("dealer_zipcode");
                                                                                            item["dealer_contact"] = 
                                                                    reader.ReadString("dealer_contact");
                                                                                            item["dealer_tel"] = 
                                                                    reader.ReadString("dealer_tel");
                                                                                            item["dealer_email"] = 
                                                                    reader.ReadString("dealer_email");
                                                                                            item["dealer_addr"] = 
                                                                    reader.ReadString("dealer_addr");
                                                                                            item["dealer_wechat"] = 
                                                                    reader.ReadString("dealer_wechat");
                                                                                            item["dealer_qq"] = 
                                                                    reader.ReadString("dealer_qq");
                                                                                            item["dealer_remarks"] = 
                                                                    reader.ReadString("dealer_remarks");
                                                                                    }
                        
                        rv[YZJsonProperty.total] = totalRows;
                    }
                }
            }

            return rv;
        }
    }
}