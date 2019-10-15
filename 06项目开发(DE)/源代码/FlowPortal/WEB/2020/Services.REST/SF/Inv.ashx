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
                        glyph = 0xea9c,
                        xclass = "YZModules.Inv.Panel.inv_matrefund"
                    },
                    new {
                        id = "inv_out_master",
                        text = "物料出库",
                        glyph = 0xea9c,
                        xclass = "YZModules.Inv.Panel.inv_out_master"
                    },
                     new {
                        id = "inv_inventory_master",
                        text = "物料盘存",
                        glyph = 0xea9c,
                        xclass = "YZModules.Inv.Panel.inv_inventory_master"
                    },
                     new {
                        id = "inv_depot_detail",
                        text = "库存明细",
                        glyph = 0xea9c,
                        xclass = "YZModules.Inv.Panel.inv_depot_detail"
                    },
                    new {
                        id = "inv_prod_in",
                        text = "产成品入库",
                        glyph = 0xea9c,
                        xclass = "YZModules.Inv.Panel.inv_prod_in"
                    },
                    new {
                        id = "inv_prod_out",
                        text = "产成品出库",
                        glyph = 0xea9c,
                        xclass = "YZModules.Inv.Panel.inv_prod_out"
                    },
                    new {
                        id = "inv_prod",
                        text = "产成品库存查询",
                        glyph = 0xea9c,
                        xclass = "YZModules.Inv.Panel.inv_prod"
                    }
            };

            return YZSecurityManager.ApplayPermision(modules);
        }
    }
}
