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
                    id = "SZTY",
                    title = "数字天源",
                    //modulePerm = new YZModulePermision("e52e8214-6e6e-4132-9873-d33a54eb977d", YZModuleDeniedBehavior.Hide),
                    navigator = new {
                        dataURL = this.ResolveUrl(context,"../Services.REST/SF/BI.ashx"),
                        activeNode = "r1"
                    }
                }
            };
            return YZSecurityManager.ApplayPermision(modules);
        }
    }
}