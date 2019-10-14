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
                    id = "BPM",
                    title = "流程管理",
                    modulePerm = new YZModulePermision("e52e8214-6e6e-4132-9873-d33a54eb977d", YZModuleDeniedBehavior.Hide),
                    navigator = new {
                        dataURL = this.ResolveUrl(context,"../Services.REST/SF/BPM.ashx"),
                        activeNode = "Worklist" //"Worklist"
                    }
                },
                new {
                    id = "CG",
                    title = "采购管理",
                    //modulePerm = new YZModulePermision("e52e8214-6e6e-4132-9873-d33a54eb977d", YZModuleDeniedBehavior.Hide),
                    navigator = new {
                        dataURL = this.ResolveUrl(context,"../Services.REST/SF/Proc.ashx"),
                        activeNode = "PurchasePlan"
                    }
                },
                new {
                    id = "XS",
                    title = "销售管理",
                    //modulePerm = new YZModulePermision("e52e8214-6e6e-4132-9873-d33a54eb977d", YZModuleDeniedBehavior.Hide),
                    navigator = new {
                        dataURL = this.ResolveUrl(context,"../Services.REST/SF/Sales.ashx"),
                        activeNode = "SalesOrder"
                    }
                },
                new {
                    id = "SC",
                    title = "生产管理",
                    //modulePerm = new YZModulePermision("e52e8214-6e6e-4132-9873-d33a54eb977d", YZModuleDeniedBehavior.Hide),
                    navigator = new {
                        dataURL = this.ResolveUrl(context,"../Services.REST/SF/Prod.ashx"),
                        //leafOnly = true,
                        activeNode = "QM1"
                    }
                },
                new {
                    id = "Inv",
                    title = "库存管理",
                    //modulePerm = new YZModulePermision("e52e8214-6e6e-4132-9873-d33a54eb977d", YZModuleDeniedBehavior.Hide),
                    navigator = new {
                        dataURL = this.ResolveUrl(context,"../Services.REST/SF/Inv.ashx"),
                        //leafOnly = true,
                        activeNode = "QM1"
                    }
                },
                new {
                    id = "Sys",
                    title = "基础数据",
                    //modulePerm = new YZModulePermision("e52e8214-6e6e-4132-9873-d33a54eb977d", YZModuleDeniedBehavior.Hide),
                    navigator = new {
                        dataURL = this.ResolveUrl(context,"../Services.REST/SF/Sys.ashx"),
                        //leafOnly = true,
                        activeNode = "QM1"
                    }
                },
                new {
                    id = "CW",
                    title = "财务管理",
                    //modulePerm = new YZModulePermision("e52e8214-6e6e-4132-9873-d33a54eb977d", YZModuleDeniedBehavior.Hide),
                    navigator = new {
                        dataURL = this.ResolveUrl(context,"../Services.REST/SF/Finance.ashx"),
                        leafOnly = true,
                        activeNode = "NotificationSetting"
                    }
                },
                new {
                    id = "ZC",
                    title = "资产管理",
                    //modulePerm = new YZModulePermision("e52e8214-6e6e-4132-9873-d33a54eb977d", YZModuleDeniedBehavior.Hide),
                    navigator = new {
                        dataURL = this.ResolveUrl(context,"../Services.REST/SF/Asset.ashx"),
                        leafOnly = true,
                        activeNode = "NotificationSetting"
                    }
                },
                new {
                    id = "JX",
                    title = "绩效管理",
                    //modulePerm = new YZModulePermision("e52e8214-6e6e-4132-9873-d33a54eb977d", YZModuleDeniedBehavior.Hide),
                    navigator = new {
                        dataURL = this.ResolveUrl(context,"../Services.REST/SF/Performance.ashx"),
                        leafOnly = true,
                        activeNode = "NotificationSetting"
                    }
                },
                new {
                    id = "DJ",
                    title = "党建管理",
                    //modulePerm = new YZModulePermision("e52e8214-6e6e-4132-9873-d33a54eb977d", YZModuleDeniedBehavior.Hide),
                    navigator = new {
                        dataURL = this.ResolveUrl(context,"../Services.REST/SF/Party.ashx"),
                        leafOnly = true,
                        activeNode = "NotificationSetting"
                    }
                },
                new {
                    id = "XZ",
                    title = "行政管理",
                    //modulePerm = new YZModulePermision("e52e8214-6e6e-4132-9873-d33a54eb977d", YZModuleDeniedBehavior.Hide),
                    navigator = new {
                        dataURL = this.ResolveUrl(context,"../Services.REST/SF/OA.ashx"),
                        leafOnly = true,
                        activeNode = "NotificationSetting"
                    }
                },
                new {
                    id = "RL",
                    title = "人力资源",
                    //modulePerm = new YZModulePermision("e52e8214-6e6e-4132-9873-d33a54eb977d", YZModuleDeniedBehavior.Hide),
                    navigator = new {
                        dataURL = this.ResolveUrl(context,"../Services.REST/Biz/HR.ashx"),
                        leafOnly = true,
                        activeNode = "NotificationSetting"
                    }
                },
                new {
                    id = "GC",
                    title = "工程管理",
                    //modulePerm = new YZModulePermision("e52e8214-6e6e-4132-9873-d33a54eb977d", YZModuleDeniedBehavior.Hide),
                    navigator = new {
                        dataURL = this.ResolveUrl(context,"../Services.REST/SF/Project.ashx"),
                        leafOnly = true,
                        activeNode = "NotificationSetting"
                    }
                }
            };
            return YZSecurityManager.ApplayPermision(modules);
        }
    }
}