<%@ WebHandler Language="C#" Class="Inv.inv_prod_in" %>

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
    public class inv_prod_in : YZServiceHandler
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
                    cmd.CommandText = "update inv_prod_in set state='0' WHERE prod_in_id=@id";
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
            string in_stnum = request.GetString("in_stnum", null);
            string keyword = request.GetString("kwd", null);
            string depot_name = request.GetString("depot_name", null);
            string mat_name = request.GetString("mat_name", null);

            //获得查询条件
            string filter = "inv_prod_in.State='1'";
            bool moduleAdmin = true;
            using (BPMConnection cn = new BPMConnection())
            {
                cn.WebOpen();
                moduleAdmin = BPM.Client.Security.UserResource.CheckPermision(cn, "4d7c6cff-838b-4729-b04f-19e346c8e986", "Admin");
                if (!moduleAdmin)
                {
                    bool moduleCompany = BPM.Client.Security.UserResource.CheckPermision(cn, "4d7c6cff-838b-4729-b04f-19e346c8e986", "Company");
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
                        filter = queryProvider.CombinCond(filter, string.Format("inv_prod_in.CreateUser='{0}'", YZAuthHelper.LoginUserAccount));
                    }
                }
            }

            if (searchType == "QuickSearch")
            {
                //应用关键字过滤
                if (!string.IsNullOrEmpty(keyword))
                    filter = queryProvider.CombinCond(filter, String.Format("ProdDeptName LIKE N'%{0}%' OR inv_prod_in.mat_name LIKE N'%{0}%' OR inv_prod_in.CompanyName LIKE N'%{0}%'", queryProvider.EncodeText(keyword)));
                
                if (!string.IsNullOrEmpty(depot_name))
                    filter = queryProvider.CombinCond(filter, String.Format("ProdDeptName LIKE N'%{0}%' ", queryProvider.EncodeText(depot_name)));
                if (!string.IsNullOrEmpty(mat_name))
                    filter = queryProvider.CombinCond(filter, String.Format("inv_prod_in.mat_name LIKE N'%{0}%'", queryProvider.EncodeText(mat_name)));
            }

            if (!String.IsNullOrEmpty(filter))
                filter = " WHERE " + filter;

            //获得排序子句
            string order = request.GetSortString("prod_in_id");

            //获得Query
            string query = @"
            WITH X AS(
                SELECT ROW_NUMBER() OVER(ORDER BY {0}) AS RowNum,inv_prod_in.*,mat_unit_name,innum=convert(float,numerator)*in_stnum FROM inv_prod_in join v_ctl_material_prod on inv_prod_in.mat_code=v_ctl_material_prod.mat_code {1}
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

                            item["CompanyName"] = reader.ReadString("CompanyName");
                            item["prod_in_id"] =
    reader.ReadInt32("prod_in_id");
                            item["mat_code"] =
                                    reader.ReadString("mat_code");
                            item["mat_name"] =
    reader.ReadString("mat_name");
                            item["mat_spec"] =
    reader.ReadString("mat_spec");
                            item["in_stnum"] =
    reader.ReadInt32("in_stnum");
                            item["mat_unit_name"] =
    reader.ReadString("mat_unit_name");
                            item["innum"] =
    reader.ReadFloat("innum");
                            item["in_stnum_unit"] =
    reader.ReadString("in_stnum_unit");
                            item["ProdDeptName"] =
    reader.ReadString("ProdDeptName");
                            item["depot_name"] =
    reader.ReadString("depot_name");
                            item["ProdUserName"] =
    reader.ReadString("ProdUserName");
                            item["in_time"] =
    reader.ReadDateTime("in_time");
                            item["prod_in_remarks"] =
    reader.ReadString("prod_in_remarks");
                        }

                        rv[YZJsonProperty.total] = totalRows;
                    }
                }
            }

            return rv;
        }
    }
}