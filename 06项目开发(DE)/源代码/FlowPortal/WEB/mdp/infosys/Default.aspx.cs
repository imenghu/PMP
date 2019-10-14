using BPM;
using BPM.Client;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using YZSoft.Web.DAL;

public partial class mdp_infosys_Default : System.Web.UI.Page
{
    public string DisplayName
    {
        get;
        set;
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!YZAuthHelper.IsAuthenticated)
        {
            FormsAuthentication.RedirectToLoginPage();
            return;
        }
        try
        {
            //获得帐号信息
            string uid = YZAuthHelper.LoginUserAccount;
            User user = new User();

            using (BPMConnection cn = new BPMConnection())
            {
                cn.WebOpen();

                //获得当前用户
                user.Open(cn, uid);
                this.DisplayName = user.DisplayName;
            }
        }
        catch
        {
            FormsAuthentication.RedirectToLoginPage();
        }
    }
}