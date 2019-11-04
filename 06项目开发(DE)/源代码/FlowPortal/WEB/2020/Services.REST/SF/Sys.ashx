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
                    modulePerm = new YZModulePermision("52e66d08-83cc-42a3-b4e3-b0b9bdc4f0d6", YZModuleDeniedBehavior.Hide),
                    glyph = 0xea99,
                    xclass = "YZModules.Sys.Panel.ctl_material"
                },
                
                new {
                    id = "ctl_depot",
                    text = "仓库管理",
                    modulePerm = new YZModulePermision("4d29323a-a1b2-4454-a3f5-7098689cbebd", YZModuleDeniedBehavior.Hide),
                    glyph = 0xea82,
                    xclass = "YZModules.Sys.Panel.ctl_depot"
                },
                new {
                    id = "ctl_vendor",
                    text = "供应商信息",
                    modulePerm = new YZModulePermision("3c06362f-8667-4ddb-a739-203612e854e2", YZModuleDeniedBehavior.Hide),
                    glyph = 0xea94,
                    xclass = "YZModules.Sys.Panel.ctl_vendor"
                },
                new {
                    id = "ctl_dealer",
                    text = "经销商信息",
                    modulePerm = new YZModulePermision("c1bc6e2a-87ee-4836-b2dc-b7d17352e7f1", YZModuleDeniedBehavior.Hide),
                    glyph = 0xea94,
                    xclass = "YZModules.Sys.Panel.ctl_dealer"
                },
                new {
                    id = "ctl_salesman",
                    text = "销售员信息",
                    modulePerm = new YZModulePermision("5b01216f-ab01-43a9-a4c5-a97f29802c5d", YZModuleDeniedBehavior.Hide),
                    glyph = 0xeabc,
                    xclass = "YZModules.Sys.Panel.ctl_salesman"
                },
                new {
                    id = "proc_material_group",
                    text = "物料采购信息",
                    modulePerm = new YZModulePermision("a5a10114-c097-4ea4-8355-b372ca0b2322", YZModuleDeniedBehavior.Hide),
                    glyph = 0xeabc,
                    xclass = "YZModules.Sys.Panel.proc_material_group"
                },
                new {
                    id = "ctl_material_class",
                    text = "物料分类维护",
                    modulePerm = new YZModulePermision("8ce86f79-0da8-4cee-8ba2-a5242cd27b9b", YZModuleDeniedBehavior.Hide),
                    glyph = 0xea99,
                    xclass = "YZModules.Sys.Panel.ctl_material_class"
                },
                new {
                    id = "sal_finance",
                    text = "财务人员维护",
                    modulePerm = new YZModulePermision("a34a8e0a-ee92-466c-85ef-6baf38985090", YZModuleDeniedBehavior.Hide),
                    glyph = 0xea99,
                    xclass = "YZModules.Sys.Panel.sal_finance"
                }
            };

            return YZSecurityManager.ApplayPermision(modules);
        }
    }
}
