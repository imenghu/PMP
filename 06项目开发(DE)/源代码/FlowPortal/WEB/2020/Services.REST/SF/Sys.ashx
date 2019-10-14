<%@ WebHandler Language="C#" Class="SF.Sys" %>

using System;
using System.Web;
using System.Text;
using Newtonsoft.Json.Linq;

namespace SF
{
    public class Sys : YZServiceHandler
    {
        public object GetModuleTree(HttpContext context)
        {
            object[] modules = new object[] {
                new {
                    id = "ctl_material",
                    text = "物料信息",
                    glyph = 0xea99,
                    xclass = "YZModules.Sys.Panel.ctl_material"
                },
                new {
                    id = "ctl_depot",
                    text = "仓库管理",
                    glyph = 0xea82,
                    xclass = "YZModules.Sys.Panel.ctl_depot"
                },
                new {
                    id = "ctl_vendor",
                    text = "供应商信息",
                    glyph = 0xea94,
                    xclass = "YZModules.Sys.Panel.ctl_vendor"
                },
                new {
                    id = "ctl_dealer",
                    text = "经销商信息",
                    glyph = 0xea94,
                    xclass = "YZModules.Sys.Panel.ctl_dealer"
                },
                new {
                    id = "ctl_salesman",
                    text = "销售员信息",
                    glyph = 0xeabc,
                    xclass = "YZModules.Sys.Panel.ctl_salesman"
                }
            };

            return YZSecurityManager.ApplayPermision(modules);
        }
    }
}
