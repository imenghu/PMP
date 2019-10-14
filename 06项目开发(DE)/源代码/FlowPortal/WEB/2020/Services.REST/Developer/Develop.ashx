<%@ WebHandler Language="C#" Class="BPMApp.Developer.FormModuleTree" %>

using System;
using System.Web;
using System.Text;
using Newtonsoft.Json.Linq;

namespace BPMApp.Developer
{
    public class FormModuleTree : YZServiceHandler
    {        
        public object GetModuleTree(HttpContext context)
        {
            object[] modules = new object[] {
                new {
                    id = "Set",
                    text = "数据字典",
                    glyph = 0xeae7,
                    xclass = "Develop.SysSet.Panel"
                },
                new {
                    id = "Form",
                    text = "表单设计",
                    glyph = 0xeae7,
                    xclass = "Develop.SysForm.Panel"
                },
                new {
                    id = "Grid",
                    text = "列表设计",
                    glyph = 0xeae7,
                    xclass = "Develop.SysGrid.Panel"
                }
            };

            return YZSecurityManager.ApplayPermision(modules);
        }
    }
}
