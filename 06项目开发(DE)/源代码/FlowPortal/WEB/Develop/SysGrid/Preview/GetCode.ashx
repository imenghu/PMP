<%@ WebHandler Language="C#" Class="GetCode" %>

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
public class GetCode : IHttpHandler {
    
    public void ProcessRequest (HttpContext context) {
        Develop.SQLServerDAL.SysGrid dalSysGrid = new Develop.SQLServerDAL.SysGrid();
        Develop.SQLServerDAL.SysGridSet dalSysGridSet = new Develop.SQLServerDAL.SysGridSet();
        Develop.SQLServerDAL.SysGridItem dalSysGridItem = new Develop.SQLServerDAL.SysGridItem();
        string gridId = context.Request.QueryString["GridId"];
        context.Response.ContentType = "text/html";  //设置输出html
        Develop.Model.SysGrid grid = dalSysGrid.GetModel(gridId);
        List<Develop.Model.SysGridItem> gridItemlist = new List<Develop.Model.SysGridItem>();      //循环生成泛型
        DataTable dt = dalSysGridSet.GetList(string.Format("GridId='{0}'", gridId)).Tables[0];
        List<Develop.Model.SysGridSet> gridSetList = Develop.Utility.xDataTableOpt.TableToList<Develop.Model.SysGridSet>(dt);
        for (int i = 0; i < gridSetList.Count; i++)
        {
            int gridSetId = gridSetList[i].GridSetId;
            DataTable dtItem = dalSysGridItem.GetList(string.Format("GridSetId='{0}'", gridSetId)).Tables[0];
            List<Develop.Model.SysGridItem> list = Develop.Utility.xDataTableOpt.TableToList<Develop.Model.SysGridItem>(dtItem);
            gridItemlist.AddRange(list);
        }
        VelocityEngine vltEngine = new VelocityEngine();    //初始化NVeloity
        vltEngine.SetProperty(RuntimeConstants.RESOURCE_LOADER, "file");

        //使用System.Web.Hosting命名空间下的HostingEnvironment.MapPath 指定模板文件所在的文件夹
        vltEngine.SetProperty(RuntimeConstants.FILE_RESOURCE_LOADER_PATH, HostingEnvironment.MapPath("~/Develop/SysGrid/Preview/CodeTemplate"));

        vltEngine.Init();

        VelocityContext vltContext = new VelocityContext(); //NVelocity上下文

        //给数据data指定一个key为"Model",在模板页(视图)中$Model,通过put方法放入NVelocityContext中
        vltContext.Put("GridId", grid.GridId);
        vltContext.Put("ModuleCode", grid.ModuleCode);
        vltContext.Put("GridKeyId", grid.GridKeyId);
        vltContext.Put("GridTitle", grid.GridTitle);
        vltContext.Put("GridTitle", grid.GridTitle);
        vltContext.Put("GridSetList", gridSetList);
        vltContext.Put("GridItemList", gridItemlist);

        Template vltTemplate = vltEngine.GetTemplate("Code.js"); //获取模板所在的路径和文件名(相对于指定模板文件夹的位置)
        StringWriter vltWriter = new StringWriter();
        vltTemplate.Merge(vltContext, vltWriter);     //内部通过Render解析遍历“Model”
        string htm = vltWriter.GetStringBuilder().ToString();  
        context.Response.Write(htm);
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}