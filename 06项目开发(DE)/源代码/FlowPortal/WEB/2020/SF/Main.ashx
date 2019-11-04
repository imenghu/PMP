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
                    id = "SF",
                    title = "流程管理",
                    modulePerm = new YZModulePermision("08c9ac55-db78-498c-b34e-53c1a033bbcd", YZModuleDeniedBehavior.Hide),
                    navigator = new {
                        dataURL = this.ResolveUrl(context,"../Services.REST/SF/BPM.ashx"),
                        activeNode = "Worklist" //"Worklist"
                    }
                },
                new {
                    id = "CG",
                    title = "采购管理",
                    modulePerm = new YZModulePermision("5c5b95ae-a510-4a70-b2bf-8b2c407c4316", YZModuleDeniedBehavior.Hide),
                    navigator = new {
                        dataURL = this.ResolveUrl(context,"../Services.REST/SF/Proc.ashx"),
                        activeNode = "PurchasePlan"
                    }
                },
                new {
                    id = "XS",
                    title = "销售管理",
                    modulePerm = new YZModulePermision("57a3b1f2-f574-4ecf-848a-efa6b0ba3324", YZModuleDeniedBehavior.Hide),
                    navigator = new {
                        dataURL = this.ResolveUrl(context,"../Services.REST/SF/Sal.ashx"),
                        activeNode = "SalesOrder"
                    }
                },
                new {
                    id = "SC",
                    title = "生产管理",
                    modulePerm = new YZModulePermision("fa6a2858-74d5-4d20-9e43-104578d8538c", YZModuleDeniedBehavior.Hide),
                    navigator = new {
                        dataURL = this.ResolveUrl(context,"../Services.REST/SF/Prod.ashx"),
                        //leafOnly = true,
                        activeNode = "QM1"
                    }
                },
                new {
                    id = "Inv",
                    title = "库存管理",
                    modulePerm = new YZModulePermision("f91f17a2-aa6f-4def-8699-bbac9214e00d", YZModuleDeniedBehavior.Hide),
                    navigator = new {
                        dataURL = this.ResolveUrl(context,"../Services.REST/SF/Inv.ashx"),
                        //leafOnly = true,
                        activeNode = "QM1"
                    }
                },
                new {
                    id = "Sys",
                    title = "基础数据",
                    modulePerm = new YZModulePermision("cb055424-0535-4af4-abaa-e4f55d7ef5fd", YZModuleDeniedBehavior.Hide),
                    navigator = new {
                        dataURL = this.ResolveUrl(context,"../Services.REST/SF/Sys.ashx"),
                        //leafOnly = true,
                        activeNode = "QM1"
                    }
                }
                //,
                //new {
                //    id = "CW",
                //    title = "财务管理",
                //    xclass="YZSoft.src.panel.BuildingPanel"
                //},
                //new {
                //    id = "ZC",
                //    title = "资产管理",
                //    xclass="YZSoft.src.panel.BuildingPanel"
                //},
                //new {
                //    id = "JX",
                //    title = "绩效管理",
                //    xclass="YZSoft.src.panel.BuildingPanel"
                //},
                //new {
                //    id = "DJ",
                //    title = "党建管理",
                //    xclass="YZSoft.src.panel.BuildingPanel"
                //},
                //new {
                //    id = "XZ",
                //    title = "行政管理",
                //    xclass="YZSoft.src.panel.BuildingPanel"
                //},
                //new {
                //    id = "RL",
                //    title = "人力资源",
                //    xclass="YZSoft.src.panel.BuildingPanel"
                //},
                //new {
                //    id = "GC",
                //    title = "工程管理",
                //    xclass="YZSoft.src.panel.BuildingPanel"
                //}
            };
            return YZSecurityManager.ApplayPermision(modules);
        }
    }
}