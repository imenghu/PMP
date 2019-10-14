<%@ WebHandler Language="C#" Class="Biz.Sale" %>

using System;
using System.Web;
using System.Text;
using Newtonsoft.Json.Linq;

namespace Biz
{
    public class Sale : YZServiceHandler
    {
        public object GetModuleTree(HttpContext context)
        {
            object[] modules = new object[] {
                new {
                    text = "订单管理",
                    expanded = false,
                    children = new object[]{
                        new {
                            id = "SalesOrder",
                            text = "销售订单",
                            glyph = 0xe9B4,
                            xclass = "Demo.ProductionDevice.BasicPanel"
                        },
                        new {
                            id = "SalesSearch",
                            text = "销售查询",
                            glyph = 0xe9B4,
                            xclass = "Demo.ProductionDevice.BasicPanel"
                        },
                        new {
                            id = "OrderConfirm",
                            text = "订单确认",
                            glyph = 0xe9B4,
                            xclass = "Demo.ProductionDevice.BasicPanel"
                        },
                        new {
                            id = "SalesProceeds",
                            text = "销售收款",
                            glyph = 0xe9B4,
                            xclass = "Demo.ProductionDevice.BasicPanel"
                        },
                        new {
                            id = "OrderShipments",
                            text = "订单发货",
                            glyph = 0xe9B4,
                            xclass = "Demo.ProductionDevice.BasicPanel"
                        },
                        new {
                            id = "OrderSearch",
                            text = "发货查询",
                            glyph = 0xe9B4,
                            xclass = "Demo.ProductionDevice.BasicPanel"
                        }
                    }
                },
                new {
                    text = "账务管理",
                    expanded = false,
                    children = new object[]{
                        new {
                            id = "KC1",
                            text = "押金明细",
                            glyph = 0xe62d,
                            xclass = "YZSoft.bpm.sharetask.Panel"
                        },
                        new {
                            id = "KC2",
                            text = "发票登记",
                            glyph = 0xe62d,
                            xclass = "YZSoft.bpm.sharetask.Panel"
                        },
                        new {
                            id = "KC3",
                            text = "发货明细",
                            glyph = 0xe62d,
                            xclass = "YZSoft.bpm.sharetask.Panel"
                        },
                        new {
                            id = "KC4",
                            text = "汇款明细",
                            glyph = 0xe62d,
                            xclass = "YZSoft.bpm.sharetask.Panel"
                        },
                        new {
                            id = "KC5",
                            text = "财务报表",
                            glyph = 0xe62d,
                            xclass = "YZSoft.bpm.sharetask.Panel"
                        }
                    }
                }
            };

            return YZSecurityManager.ApplayPermision(modules);
        }
    }
}
