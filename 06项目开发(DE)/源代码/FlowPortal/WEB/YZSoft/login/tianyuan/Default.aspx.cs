using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data;
using System.Web.UI.HtmlControls;
using System.Text;
using System.Reflection;
using System.Resources;
using System.Web.Security;
using System.Security.Cryptography;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using BPM.Client;
using YZSoft.Web.DAL;

public partial class YZSoft_Login_2020_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        HttpContext context = this.Context;
        YZRequest request = new YZRequest(context);
        string method = request.GetString("method",request.GetString("action", "Default"));

        Type type = this.GetType();
        System.Reflection.MethodInfo methodcall = type.GetMethod(method, System.Reflection.BindingFlags.Instance | System.Reflection.BindingFlags.NonPublic | System.Reflection.BindingFlags.Public, null, new Type[] {}, null);
        if (methodcall == null)
        {
            this.Default();
        }
        else
        {
            methodcall.Invoke(this, new object[] { });
        }
    }

    public void Default()
    {
        //copyright行的多语言
        //this._copyright.InnerHtml = Resources.YZStrings.Aspx_login_Copyright;

        //跳转到单点登录
        string ssoUrl = this.ssoUrl;
        string ssoReturnUrlParamName = this.ssoReturnUrlParamName;
        if (!String.IsNullOrEmpty(ssoUrl))
        {
            YZUrlBuilder url = YZUrlBuilder.FromPath(ssoUrl);
            url.QueryString[ssoReturnUrlParamName] = this.ReturnUrl;

            Response.Redirect(url.ToString(), true);
        }

        //页标题
        this.Page.Title = System.Web.Configuration.WebConfigurationManager.AppSettings["CompanyInfoLoginPageTitle"];
        if (String.IsNullOrEmpty(this.Page.Title))
            this.Page.Title = Resources.YZStrings.Aspx_Login_Title;

        //根据启动程序应用Css
        string startApp = System.Web.Configuration.WebConfigurationManager.AppSettings["StartApp"];
        if (String.IsNullOrEmpty(startApp))
            startApp = "2020/BPM";
    }

    public void Login()
    {
        YZRequest request = new YZRequest(this.Context);
        string uid = request.GetString("uid",null);
        string pwd = request.GetString("uep",null);
        string keystore = request.GetString("keystore", null);

        JObject rv = new JObject();

        if (String.IsNullOrEmpty(uid) /*|| String.IsNullOrEmpty(pwd)*/)
        {
            rv[YZJsonProperty.success] = false;
            rv["errorMessage"] = Resources.YZStrings.Aspx_Login_EnterAccountTip;
        }
        else
        {
            try
            {
                string realAccount;
                string token;

                //用私钥解密
                if (!String.IsNullOrEmpty(keystore))
                {
                    string privateKey = (string)YZTempStorageManager.CurrentStore.Load(keystore);

                    RSACryptoServiceProvider rsaProvider = new RSACryptoServiceProvider(1024);
                    rsaProvider.FromXmlString(privateKey);

                    uid = System.Text.Encoding.UTF8.GetString(rsaProvider.Decrypt(Convert.FromBase64String(uid), false));
                    pwd = System.Text.Encoding.UTF8.GetString(rsaProvider.Decrypt(Convert.FromBase64String(pwd), false));
                }

                if (BPMConnection.Authenticate(YZAuthHelper.BPMServerName, YZAuthHelper.BPMServerPort, uid, pwd, out realAccount, out token))
                {
                    YZAuthHelper.SetAuthCookie(realAccount, token);
                    YZAuthHelper.ClearLogoutFlag();

                    rv[YZJsonProperty.success] = true;
                    rv["errorMessage"] = Resources.YZStrings.Aspx_Login_Success;
                }
                else
                {
                    rv[YZJsonProperty.success] = false;
                    rv["errorMessage"] = Resources.YZStrings.Aspx_Login_Fail;
                }
            }
            catch (Exception exp)
            {
                YZEventLog log = new YZEventLog();
                log.WriteEntry(exp);

                rv[YZJsonProperty.success] = false;
                rv["errorMessage"] = exp.Message;
            }
        }

        this.Response.Clear();
        this.Response.Write(rv.ToString(Formatting.Indented, YZJsonHelper.Converters));
        this.Response.End();
    }
    

    public void logout()
    {
        try
        {
            YZAuthHelper.SignOut();
        }
        catch (Exception)
        {
            //捕获 FormsAuthentication.SignOut()中的重定向
        }
        finally
        {
            YZAuthHelper.SetLogoutFlag("logout", String.Empty);

            YZUrlBuilder url = YZUrlBuilder.FromPath(FormsAuthentication.LoginUrl);
            url.QueryString["ReturnUrl"] = this.ReturnUrl;
            this.Response.Redirect(url.ToString(), true);
        }
    }

    public virtual void SetLanguage()
    {
        YZRequest request = new YZRequest(this.Context);
        int lcid = request.GetInt32("lcid");
        YZAuthHelper.SetLangPersistent(lcid);

        this.Response.Clear();
        JObject rv = new JObject();
        rv["success"] = true;
        this.Response.Write(rv.ToString(Formatting.Indented, YZJsonHelper.Converters));
        this.Response.End();
    }

    public virtual void GetPublicKey()
    {
        RSACryptoServiceProvider rsaProvider = new RSACryptoServiceProvider(1024);
        string publicKey = rsaProvider.ToXmlString(false);
        string privateKey = rsaProvider.ToXmlString(true);

        string keystore = YZTempStorageManager.CurrentStore.Save(privateKey);
        string publicKeyPKCS = YZSecurityHelper.RSAPublicKeyDotNet2PCKS(publicKey);

        JObject rv = new JObject();
        rv["success"] = true;
        rv["publicKey"] = publicKeyPKCS;
        rv["keystore"] = keystore;
        this.Response.Write(rv.ToString(Formatting.Indented, YZJsonHelper.Converters));
        this.Response.End();
    }
    public string ReturnUrl
    {
        get
        {
            string returnUrl = String.Empty;
            if (!String.IsNullOrEmpty(Request.QueryString["ReturnURL"]))
                returnUrl = this.ResolveClientUrl(Request.QueryString["ReturnURL"]);
            else
                returnUrl = this.ResolveClientUrl("~/");

            return returnUrl;
        }
    }

    public string ssoReturnUrlParamName
    {
        get
        {
            string ssoReturnUrlParamName = WebConfigurationManager.AppSettings["ssoReturnUrlParamName"];
            if (String.IsNullOrEmpty(ssoReturnUrlParamName))
                ssoReturnUrlParamName = "ReturnUrl";

            return ssoReturnUrlParamName;
        }
    }

    public string ssoUrl
    {
        get
        {
            return WebConfigurationManager.AppSettings["ssoUrl"];
        }
    }
    public string CompanyInfoCompanyName
    {
        get
        {
            return WebConfigurationManager.AppSettings["CompanyInfoCompanyName"];
        }
    }
}