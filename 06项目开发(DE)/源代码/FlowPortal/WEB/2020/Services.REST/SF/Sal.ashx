<%@ WebHandler Language="C#" Class="SF.Sal" %>

using System;
using System.Web;
using System.Text;
using Newtonsoft.Json.Linq;

namespace SF
{
    public class Sal : YZServiceHandler
    {
        public object GetModuleTree(HttpContext context)
        {
            object[] modules = new object[] {
                new {
                    id = "sal_order_master",
                    text = "销售订单",
                    modulePerm = new YZModulePermision("65b6de93-a553-44d6-a26d-0434ae7ca129", YZModuleDeniedBehavior.Hide),
                    glyph = 0xea9c,
                    xclass = "YZModules.Sal.Panel.sal_order_master"
                },
                new {
                    id = "sal_order_deliver",
                    text = "订单发货",
                    modulePerm = new YZModulePermision("8945d0d7-4566-497a-8101-b3c41ee6ae18", YZModuleDeniedBehavior.Hide),
                    glyph = 0xea9c,
                    xclass = "YZModules.Sal.Panel.sal_order_deliver"
                },
                new {
                    id = "sal_prod_deliver",
                    text = "订单发货",
                    modulePerm = new YZModulePermision("d7c0a77c-72c0-4b6f-9869-a4ac29a86b69", YZModuleDeniedBehavior.Hide),
                    glyph = 0xea9c,
                    xclass = "YZModules.Sal.Panel.sal_prod_deliver"
                },
                //new {
                //    id = "close_order",
                //    text = "订单确认",
                //    glyph = 0xea9c,
                //    xclass = "YZModules.Sal.Panel.close_order"
                //},
                new {
                    id = "KC1",
                    text = "押金明细",
                    modulePerm = new YZModulePermision("2e8a4c68-17ed-420a-aa47-7f2118b0771e", YZModuleDeniedBehavior.Hide),
                    glyph = 0xe62d,
                    xclass = "YZModules.Sal.Panel.Sal_deposit_record"
                },
                new {
                    id = "KC2",
                    text = "发票登记",
                    modulePerm = new YZModulePermision("60ebc75b-3f26-45c6-b8b9-42c00b81cf5e", YZModuleDeniedBehavior.Hide),
                    glyph = 0xe62d,
                    xclass = "YZModules.Sal.Panel.sal_invoice"
                },
                new {
                    id = "KC3",
                    text = "发货明细",
                    modulePerm = new YZModulePermision("a0b8cb11-8736-4d17-8840-91fdc2b6230a", YZModuleDeniedBehavior.Hide),
                    glyph = 0xe62d,
                    xclass = "YZModules.Sal.Panel.Sal_deliver_detail"
                },
                new {
                    id = "KC4",
                    text = "汇款明细",
                    modulePerm = new YZModulePermision("b013a43e-7bf9-49de-a916-05827f0c83ac", YZModuleDeniedBehavior.Hide),
                    glyph = 0xe62d,
                    xclass = "YZModules.Sal.Panel.Sal_remittance"
                },
                new {
                    id = "KC5",
                    text = "往来对账",
                    modulePerm = new YZModulePermision("a4b35fef-cec0-4cba-8878-85aaf5117d05", YZModuleDeniedBehavior.Hide),
                    glyph = 0xe62d,
                    xclass = "YZModules.Sal.Panel.sal_confirmation_info"
                }
            };

            return YZSecurityManager.ApplayPermision(modules);
        }
    }
}
