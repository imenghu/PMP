<%@ WebHandler Language="C#" Class="BPMApp.MainModuleTree" %>

using System;
using System.Web;
using System.Text;

namespace BPMApp
{
    public class MainModuleTree : YZServiceHandler
    {
        public object GetModuleTree(HttpContext context)
        {
            object[] modules = new object[]{
                new {
                    id = "Develop",
                    title = "开发辅助",
                    navigator = new {
                        dataURL = this.ResolveUrl(context,"../Services.REST/Developer/Develop.ashx"),
                        activeNode = "Set"
                    }
                }
            };
            return YZSecurityManager.ApplayPermision(modules);
        }
    }
}