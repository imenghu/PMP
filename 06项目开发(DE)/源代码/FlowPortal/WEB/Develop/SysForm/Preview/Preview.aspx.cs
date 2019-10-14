using NVelocity;
using NVelocity.App;
using NVelocity.Runtime;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Hosting;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using Newtonsoft.Json.Linq;
using Newtonsoft.Json;
using System.Text;
using Develop.SQLServerDAL;
[Serializable]
public class FormButton
{
    public int Id { get; set; }
    public string ButtonString { get; set; }
}
public class xBtn
{
    public string BtnName;
    public string BtnType;
    public string BtnProperty;
}
public static class XButtonTemplate
{
    public static string XAddBlockButton = @"<aspxform:XAddBlockButton {0}runat='server'></aspxform:XAddBlockButton>";
    public static string XCustomBrowserButton = @"<aspxform:XCustomBrowserButton Width='20px' {0}runat='server'></aspxform:XCustomBrowserButton>";
    public static string XDataBrowserButton = @"<aspxform:XDataBrowserButton Width='20px' {0}runat='server'></aspxform:XDataBrowserButton>";
    public static string XExcelDataExportButton = @"<aspxform:XExcelDataExportButton {0}runat='server'></aspxform:XExcelDataExportButton>";
    public static string XExcelDataImportButton = @"<aspxform:XExcelDataImportButton {0}runat='server'></aspxform:XExcelDataImportButton>";
    public static string XSelectOUButton = @"<aspxform:XSelectOUButton Width='20px' {0}runat='server'></aspxform:XSelectOUButton>";
    public static string XSelectUserButton = @"<aspxform:XSelectUserButton Width='20px' {0}runat='server'></aspxform:XSelectUserButton>";
}
public static class XInputTemplate
{
    public static string XGridLineNo = @"<aspxform:XGridLineNo {0} {1}runat='server'></aspxform:XGridLineNo>";
    public static string XLabel = @"<aspxform:XLabel {0} {1}runat='server'></aspxform:XLabel>";
    public static string XTextBox = @"<aspxform:XTextBox {0} {1}runat='server'></aspxform:XTextBox>";
    public static string XDateTimePicker = @"<aspxform:XDateTimePicker {0} {1}runat='server'></aspxform:XDateTimePicker>";
    public static string XCheckBox = @"<aspxform:XCheckBox {0} {1}runat='server'></aspxform:XCheckBox>";
    public static string XCheckBoxList = @"<aspxform:XCheckBoxList {0} {1}runat='server'></aspxform:XCheckBoxList>";
    public static string XRadioButton = @"<aspxform:XRadioButton {0} {1}runat='server'></aspxform:XRadioButton>";
    public static string XRadioButtonList = @"<aspxform:XRadioButtonList {0} {1}runat='server'></aspxform:XRadioButtonList>";
    public static string XDropDownList = @"<aspxform:XDropDownList {0} {1}runat='server'></aspxform:XDropDownList>";
    public static string XHtmlEditor = @"<aspxform:XHtmlEditor {0} {1}runat='server'></aspxform:XHtmlEditor>";
    public static string XAttachments = @"<aspxform:XAttachments {0} {1}runat='server'></aspxform:XAttachments>";
    public static string XImageAttachment = @"<aspxform:XImageAttachment {0} {1}runat='server'></aspxform:XImageAttachment>";
    public static string XHistoryFormLink = @"<aspxform:XHistoryFormLink {0} {1}runat='server'></aspxform:XHistoryFormLink>";
    public static string XChildFormLink = @"<aspxform:XChildFormLink {0} {1}runat='server'></aspxform:XChildFormLink>";
}
public partial class Develop_SysForm_Preview : System.Web.UI.Page
{
    public string GetButtonString(xBtn btn)
    {
        string btnTmpString = null;
        switch (btn.BtnType)
        {
            case "XAddBlockButton":
                btnTmpString = XButtonTemplate.XAddBlockButton;
                break;
            case "XCustomBrowserButton":
                btnTmpString = XButtonTemplate.XCustomBrowserButton;
                break;
            case "XDataBrowserButton":
                btnTmpString = XButtonTemplate.XDataBrowserButton;
                break;
            case "XExcelDataExportButton":
                btnTmpString = XButtonTemplate.XExcelDataExportButton;
                break;
            case "XExcelDataImportButton":
                btnTmpString = XButtonTemplate.XExcelDataImportButton;
                break;
            case "XSelectOUButton":
                btnTmpString = XButtonTemplate.XSelectOUButton;
                break;
            case "XSelectUserButton":
                btnTmpString = XButtonTemplate.XSelectUserButton;
                break;
        }
        string propertyString = null;
        if (!string.IsNullOrEmpty(btn.BtnProperty))
        {
            JObject btnProperty = (JObject)JsonConvert.DeserializeObject(btn.BtnProperty);
            foreach (JToken child in btnProperty.Children())
            {
                var property = child as JProperty;
                propertyString = propertyString + string.Format("{0}='{1}' ", property.Name, property.Value);
            }
        }
        string btnString = string.Format(btnTmpString, propertyString);
        return btnString;
    }
    public class SysFormItem : Develop.Model.SysFormItem
    {
        public string ServerName { get; set; }
        public string GetItemString()
        {
            string itemTmpString = null;
            switch (this.CtrlName)
            {
                case "XGridLineNo":
                    itemTmpString = XInputTemplate.XGridLineNo;
                    break;
                case "XLabel":
                    itemTmpString = XInputTemplate.XLabel;
                    break;
                case "XTextBox":
                    itemTmpString = XInputTemplate.XTextBox;
                    break;
                case "XDateTimePicker":
                    itemTmpString = XInputTemplate.XDateTimePicker;
                    break;
                case "XCheckBox":
                    itemTmpString = XInputTemplate.XCheckBox;
                    break;
                case "XCheckBoxList":
                    itemTmpString = XInputTemplate.XCheckBoxList;
                    break;
                case "XRadioButton":
                    itemTmpString = XInputTemplate.XRadioButton;
                    break;
                case "XRadioButtonList":
                    itemTmpString = XInputTemplate.XRadioButtonList;
                    break;
                case "XDropDownList":
                    itemTmpString = XInputTemplate.XDropDownList;
                    break;
                case "XHtmlEditor":
                    itemTmpString = XInputTemplate.XHtmlEditor;
                    break;
                case "XAttachments":
                    itemTmpString = XInputTemplate.XAttachments;
                    break;
                case "XImageAttachment":
                    itemTmpString = XInputTemplate.XImageAttachment;
                    break;
                case "XHistoryFormLink":
                    itemTmpString = XInputTemplate.XHistoryFormLink;
                    break;
                case "XChildFormLink":
                    itemTmpString = XInputTemplate.XChildFormLink;
                    break;
            }
            //宽度
            string width = "100%";
            string staticProperty=null;
            if (this.IsTmp)
            {
                staticProperty = string.Format(@"id='{0}' width='{1}' XDataBind='{2}'", "ctrl" + this.ItemId, width, this.ItemId);
            }
            else
            {
                staticProperty = string.Format(@"id='{0}' width='{1}' XDataBind='{2}'", "ctrl" + this.SetId + this.ItemId, width, this.ServerName + ":" + this.SetId + "." + this.ItemId);
            }
            string itemString = string.Format(itemTmpString, staticProperty, "");
            return itemString;
        }
    }
    private readonly Develop.SQLServerDAL.SysForm dalSysForm = new Develop.SQLServerDAL.SysForm();
    private readonly Develop.SQLServerDAL.SysFormSet dalSysFormSet = new Develop.SQLServerDAL.SysFormSet();
    private readonly Develop.SQLServerDAL.SysFormItem dalSysFormItem = new Develop.SQLServerDAL.SysFormItem();
    
    protected void Page_Load(object sender, EventArgs e)
    {
        string formName=this.Request.QueryString["FormName"];
        this.Response.ContentType = "text/html";  //设置输出html
        Develop.Model.SysForm form = dalSysForm.GetModel(formName);
        List<SysFormItem> formItemlist = new List<SysFormItem>();      //循环生成泛型
        DataTable dt = dalSysFormSet.GetList(string.Format("FormName='{0}'", formName)).Tables[0];
        List<Develop.Model.SysFormSet> formSetList = Develop.Utility.xDataTableOpt.TableToList<Develop.Model.SysFormSet>(dt);
        for (int i = 0; i < formSetList.Count; i++)
        {
            int formSetId = formSetList[i].FormSetId;
            DataTable dtItem = dalSysFormItem.GetList(string.Format("FormSetId='{0}'", formSetId)).Tables[0];
            List<SysFormItem> list = Develop.Utility.xDataTableOpt.TableToList<SysFormItem>(dtItem);
            foreach (SysFormItem item in list)
            {
                item.ServerName = form.ServerName;
            }
            formItemlist.AddRange(list);
        }
        VelocityEngine vltEngine = new VelocityEngine();    //初始化NVeloity
        vltEngine.SetProperty(RuntimeConstants.RESOURCE_LOADER, "file");

        //使用System.Web.Hosting命名空间下的HostingEnvironment.MapPath 指定模板文件所在的文件夹
        vltEngine.SetProperty(RuntimeConstants.FILE_RESOURCE_LOADER_PATH, HostingEnvironment.MapPath("~/Develop/SysForm/Preview/FormTemplate"));

        vltEngine.Init();

        VelocityContext vltContext = new VelocityContext(); //NVelocity上下文

        //给数据data指定一个key为"Model",在模板页(视图)中$Model,通过put方法放入NVelocityContext中
        vltContext.Put("Styles", form.FormStyles);
        vltContext.Put("Scripts", form.FormScripts);
        vltContext.Put("FormTitle", form.FormTitle);
        vltContext.Put("FormSetList", formSetList);
        vltContext.Put("FormItemList", formItemlist);

        Template vltTemplate = vltEngine.GetTemplate("Content_Preview.html"); //获取模板所在的路径和文件名(相对于指定模板文件夹的位置)
        StringWriter vltWriter = new StringWriter();
        vltTemplate.Merge(vltContext, vltWriter);     //内部通过Render解析遍历“Model”
        string htm = vltWriter.GetStringBuilder().ToString();
        string filePath = Develop.Utility.xConfig.GetAppSetting("FormPathTmp") + formName + ".aspx";
        File.WriteAllText(filePath, htm, Encoding.Unicode);
        this.Response.Redirect("FormTemplate/Tmp/" + formName + ".aspx");        
    }
}