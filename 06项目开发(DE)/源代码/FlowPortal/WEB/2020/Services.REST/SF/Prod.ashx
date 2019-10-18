<%@ WebHandler Language="C#" Class="Biz.Production" %>

using System;
using System.Web;
using System.Text;
using Newtonsoft.Json.Linq;

namespace Biz
{
    public class Production : YZServiceHandler
    {
        public object GetModuleTree(HttpContext context)
        {
            object[] modules = new object[] {
                new {
                    text = "质量监控", //QualityMonitor
                    modulePerm = new YZModulePermision("2d1d2410-31da-4a8e-aafe-71cb4f35b5c8", YZModuleDeniedBehavior.Hide),
                    expanded = true,
                    tabs = new object[]{
                        new {
                            id = "QM1",
                            text = "啤酒后发酵质检",
                            modulePerm = new YZModulePermision("08e56d79-57d9-4a26-a48c-47a3d91a9e44", YZModuleDeniedBehavior.Hide),
                            glyph = 0xeaa9,
                            xclass = "YZModules.Prod.Panel.prod_test1"
                        },
                        new {
                            id = "QM2",
                            text = "清酒质检",
                            modulePerm = new YZModulePermision("ef2acf37-e479-4936-a7af-1e87a7d999ed", YZModuleDeniedBehavior.Hide),
                            glyph = 0xeaa9,
                            xclass = "YZModules.Prod.Panel.prod_test2"
                        },
                        new {
                            id = "QM3",
                            text = "糖化分析质检",
                            modulePerm = new YZModulePermision("61a87ecb-7a91-4d5e-93ae-af494a183fb7", YZModuleDeniedBehavior.Hide),
                            glyph = 0xeaa9,
                            xclass = "YZModules.Prod.Panel.prod_test3"
                        },
                        new {
                            id = "QM4",
                            text = "成品酒质检",
                            modulePerm = new YZModulePermision("3959779d-c619-45c9-b0cf-1d8270163fc5", YZModuleDeniedBehavior.Hide),
                            glyph = 0xeaa9,
                            xclass = "YZModules.Prod.Panel.prod_test4"
                        },
                        new {
                            id = "QM5",
                            text = "溶解氧质检",
                            modulePerm = new YZModulePermision("7e369e7c-6cbc-4ae8-acb4-7ee0fe343fa2", YZModuleDeniedBehavior.Hide),
                            glyph = 0xeaa9,
                            xclass = "YZModules.Prod.Panel.prod_test5"
                        },
                        new {
                            id = "QM6",
                            text = "双乙酰数据",
                            modulePerm = new YZModulePermision("8401ac95-ffd4-4121-acf7-08e967acc922", YZModuleDeniedBehavior.Hide),
                            glyph = 0xeaa9,
                            xclass = "YZModules.Prod.Panel.prod_test6"
                        },
                        new {
                            id = "QM7",
                            text = "PU质检",
                            modulePerm = new YZModulePermision("52081dfe-db6c-4de8-8023-3030d82dca85", YZModuleDeniedBehavior.Hide),
                            glyph = 0xeaa9,
                            xclass = "YZModules.Prod.Panel.prod_test7"
                        },
                        new {
                            id = "QM8",
                            text = "麦芽质检",
                            modulePerm = new YZModulePermision("194399e5-ac94-424b-9923-47ee406febe8", YZModuleDeniedBehavior.Hide),
                            glyph = 0xeaa9,
                            xclass = "YZModules.Prod.Panel.prod_test8"
                        }
                        ,
                        new {
                            id = "QM9",
                            text = "啤酒花检验",
                            modulePerm = new YZModulePermision("dd82286f-627e-4312-89f1-c396e5489b01", YZModuleDeniedBehavior.Hide),
                            glyph = 0xeaa9,
                            xclass = "YZModules.Prod.Panel.prod_test9"
                        },
                        new {
                            id = "QM10",
                            text = "糖浆质检",
                            modulePerm = new YZModulePermision("326022d4-d616-4d5a-b02b-296406fe0c04", YZModuleDeniedBehavior.Hide),
                            glyph = 0xeaa9,
                            xclass = "YZModules.Prod.Panel.prod_test10"
                        },
                        new {
                            id = "QM11",
                            text = "二氧化碳检验",
                            modulePerm = new YZModulePermision("865a3261-dcd6-4f99-8739-f591eed7837d", YZModuleDeniedBehavior.Hide),
                            glyph = 0xeaa9,
                            xclass = "YZModules.Prod.Panel.prod_test11"
                        }
                    }
                },
                new {
                    text = "生产日报",
                    modulePerm = new YZModulePermision("04327dd5-58b7-47ad-ab34-608511b2d190", YZModuleDeniedBehavior.Hide),
                    expanded = true,
                    tabs = new object[]{
                        new {
                            id = "KC1",
                            text = "发酵酒损",
                            modulePerm = new YZModulePermision("24299805-6e7a-4ca7-9191-0fe2569652d8", YZModuleDeniedBehavior.Hide),
                            glyph = 0xeac8,
                            xclass = "YZModules.Prod.Panel.prod_report1"
                        },
                        new {
                            id = "KC2",
                            text = "过滤酒损",
                            modulePerm = new YZModulePermision("738e63d0-3f13-4fb5-a5ee-0785f0a48487", YZModuleDeniedBehavior.Hide),
                            glyph = 0xeac8,
                            xclass = "YZModules.Prod.Panel.prod_report2"
                        },
                        new {
                            id = "KC3",
                            text = "包装车间",
                            modulePerm = new YZModulePermision("8dddb435-f7db-43dd-a42d-dd29b8f4601c", YZModuleDeniedBehavior.Hide),
                            glyph = 0xeac8,
                            xclass = "YZModules.Prod.Panel.prod_report3"
                        },
                        new {
                            id = "KC4",
                            text = "糖化日报",
                            modulePerm = new YZModulePermision("348e2030-4f4b-46ce-81d3-261dcf89dbc8", YZModuleDeniedBehavior.Hide),
                            glyph = 0xeac8,
                            xclass = "YZModules.Prod.Panel.prod_report4"
                        },
                        new {
                            id = "KC5",
                            text = "产成品库存查询",
                            modulePerm = new YZModulePermision("3a42d239-6a59-4ff7-9ad9-d7d77859528b", YZModuleDeniedBehavior.Hide),
                            glyph = 0xeac8,
                            xclass = "YZModules.Inv.Panel.inv_prod"
                        }
                    }
                }
            };

            return YZSecurityManager.ApplayPermision(modules);
        }
    }
}
