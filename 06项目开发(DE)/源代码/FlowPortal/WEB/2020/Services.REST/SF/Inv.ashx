<%@ WebHandler Language="C#" Class="SF.Inv" %>

using System;
using System.Web;
using System.Text;
using Newtonsoft.Json.Linq;

namespace SF
{
    public class Inv : YZServiceHandler
    {
        public object GetModuleTree(HttpContext context)
        {
            object[] modules = new object[] {
                  
                    new {
                        id = "inv_matrefund",
                        text = "物料退库",
                        modulePerm = new YZModulePermision("b3facb0b-67be-4373-b187-17066caf95d2", YZModuleDeniedBehavior.Hide),
                        glyph = 0xea9c,
                        xclass = "YZModules.Inv.Panel.inv_matrefund"
                    },
                    new {
                        id = "inv_out_master",
                        text = "物料出库",
                        modulePerm = new YZModulePermision("4284d710-9839-425f-ba8f-6762da0f0c4c", YZModuleDeniedBehavior.Hide),
                        glyph = 0xea9c,
                        xclass = "YZModules.Inv.Panel.inv_out_master"
                    },
                     new {
                        id = "inv_inventory_master",
                        text = "物料盘存",
                        modulePerm = new YZModulePermision("aa016f07-c991-4803-ad17-e8c8f44dbcbd", YZModuleDeniedBehavior.Hide),
                        glyph = 0xea9c,
                        xclass = "YZModules.Inv.Panel.inv_inventory_master"
                    },
                     new {
                        id = "inv_depot_detail",
                        text = "库存明细",
                        modulePerm = new YZModulePermision("ad88c9a5-58a9-4718-af38-0ad23a28d0af", YZModuleDeniedBehavior.Hide),
                        glyph = 0xea9c,
                        xclass = "YZModules.Inv.Panel.inv_depot_detail"
                    },
                    new {
                        id = "inv_prod_in",
                        text = "产成品入库",
                        modulePerm = new YZModulePermision("4d7c6cff-838b-4729-b04f-19e346c8e986", YZModuleDeniedBehavior.Hide),
                        glyph = 0xea9c,
                        xclass = "YZModules.Inv.Panel.inv_prod_in"
                    },
                    new {
                        id = "inv_prod_out",
                        text = "产成品出库",
                        modulePerm = new YZModulePermision("56f24c1b-dea4-45a8-ab6b-c04eca9e56a4", YZModuleDeniedBehavior.Hide),
                        glyph = 0xea9c,
                        xclass = "YZModules.Inv.Panel.inv_prod_out"
                    },
                    new {
                        id = "inv_prod",
                        text = "产成品库存查询",
                        modulePerm = new YZModulePermision("79d908fa-22c5-4e3f-ade2-657daa736fa8", YZModuleDeniedBehavior.Hide),
                        glyph = 0xea9c,
                        xclass = "YZModules.Inv.Panel.inv_prod"
                    }
            };

            return YZSecurityManager.ApplayPermision(modules);
        }
    }
}
