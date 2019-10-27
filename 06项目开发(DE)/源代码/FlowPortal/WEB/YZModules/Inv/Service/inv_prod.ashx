<%@ WebHandler Language="C#" Class="Inv.inv_prod" %>

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
    public class inv_prod : YZServiceHandler
    {
        public JObject GetData(HttpContext context)
        {
            YZRequest request = new YZRequest(context);
            SqlServerProvider queryProvider = new SqlServerProvider();

            string searchType = request.GetString("SearchType", null);
            string keyword = request.GetString("kwd", null);
            string in_stnum = request.GetString("in_stnum", null);
     
            string depot_name = request.GetString("depot_name", null);
            string mat_name = request.GetString("mat_name", null);

            //获得查询条件
            string filter = "1=1";
            bool moduleAdmin = true;
            using (BPMConnection cn = new BPMConnection())
            {
                cn.WebOpen();
                moduleAdmin = BPM.Client.Security.UserResource.CheckPermision(cn, "79d908fa-22c5-4e3f-ade2-657daa736fa8", "Admin");
                if (!moduleAdmin)
                {
                    bool moduleCompany = BPM.Client.Security.UserResource.CheckPermision(cn, "79d908fa-22c5-4e3f-ade2-657daa736fa8", "Company");
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
                    filter = queryProvider.CombinCond(filter, String.Format("depot_name LIKE N'%{0}%' OR in_stnum LIKE N'%{0}%' OR v_inv_prod.mat_name LIKE N'%{0}%' OR CompanyName LIKE N'%{0}%'", queryProvider.EncodeText(keyword)));
                if (!string.IsNullOrEmpty(in_stnum))
                    filter = queryProvider.CombinCond(filter, String.Format("in_stnum_unit LIKE N'%{0}%' ", queryProvider.EncodeText(in_stnum)));
                if (!string.IsNullOrEmpty(depot_name))
                    filter = queryProvider.CombinCond(filter, String.Format("depot_name LIKE N'%{0}%' ", queryProvider.EncodeText(depot_name)));
                if (!string.IsNullOrEmpty(mat_name))
                    filter = queryProvider.CombinCond(filter, String.Format("v_inv_prod.mat_name LIKE N'%{0}%'", queryProvider.EncodeText(mat_name)));
            }

            if (!String.IsNullOrEmpty(filter))
                filter = " WHERE " + filter;

            //获得排序子句
            string order = request.GetSortString("mat_code");

            //获得Query
            string query = @"
            WITH X AS(
                SELECT ROW_NUMBER() OVER(ORDER BY v_inv_prod.{0}) AS RowNum,v_inv_prod.*,mat_unit_name,inv_num=convert(float,numerator)*invnum FROM v_inv_prod join v_ctl_material_prod on v_inv_prod.mat_code=v_ctl_material_prod.mat_code {1}
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
                            item["depot_name"] =
    reader.ReadString("depot_name");
                            item["mat_code"] =
                                    reader.ReadString("mat_code");
                            item["mat_name"] =
    reader.ReadString("mat_name");
                            item["mat_spec"] =
    reader.ReadString("mat_spec");
                            item["in_stnum_unit"] =
    reader.ReadString("in_stnum_unit");
                            item["invnum"] =
    reader.ReadInt32("invnum");
                            item["mat_unit_name"] =
    reader.ReadString("mat_unit_name");
                            item["inv_num"] =
    reader.ReadFloat("inv_num");
                        }

                        rv[YZJsonProperty.total] = totalRows;
                    }
                }
            }

            return rv;
        }
    }
}