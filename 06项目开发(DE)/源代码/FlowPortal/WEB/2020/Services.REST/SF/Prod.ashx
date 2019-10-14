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
                    expanded = true,
                    tabs = new object[]{
                        new {
                            id = "QM1",
                            text = "啤酒后发酵质检",
                            glyph = 0xeaa9,
                            xclass = "Demo.ProductionDevice.BasicPanel"
                        },
                        new {
                            id = "QM2",
                            text = "清酒质检",
                            glyph = 0xeaa9,
                            xclass = "Demo.ProductionDevice.BasicPanel"
                        },
                        new {
                            id = "QM3",
                            text = "糖化分析质检",
                            glyph = 0xeaa9,
                            xclass = "Demo.ProductionDevice.BasicPanel"
                        },
                        new {
                            id = "QM4",
                            text = "成品酒质检",
                            glyph = 0xeaa9,
                            xclass = "Demo.ProductionDevice.BasicPanel"
                        },
                        new {
                            id = "QM5",
                            text = "溶解氧质检",
                            glyph = 0xeaa9,
                            xclass = "Demo.ProductionDevice.BasicPanel"
                        },
                        new {
                            id = "QM6",
                            text = "双乙酰数据",
                            glyph = 0xeaa9,
                            xclass = "Demo.ProductionDevice.BasicPanel"
                        },
                        new {
                            id = "QM7",
                            text = "PU质检",
                            glyph = 0xeaa9,
                            xclass = "Demo.ProductionDevice.BasicPanel"
                        },
                        new {
                            id = "QM8",
                            text = "麦芽质检",
                            glyph = 0xeaa9,
                            xclass = "Demo.ProductionDevice.BasicPanel"
                        },
                        new {
                            id = "QM9",
                            text = "啤酒花检验",
                            glyph = 0xeaa9,
                            xclass = "Demo.ProductionDevice.BasicPanel"
                        },
                        new {
                            id = "QM10",
                            text = "糖浆质检",
                            glyph = 0xeaa9,
                            xclass = "Demo.ProductionDevice.BasicPanel"
                        },
                        new {
                            id = "QM11",
                            text = "二氧化碳检验",
                            glyph = 0xeaa9,
                            xclass = "Demo.ProductionDevice.BasicPanel"
                        }
                    }
                },
                new {
                    text = "生产日报",
                    expanded = true,
                    tabs = new object[]{
                        new {
                            id = "KC1",
                            text = "发酵酒损",
                            glyph = 0xeac8,
                            xclass = "YZSoft.bpm.sharetask.Panel"
                        },
                        new {
                            id = "KC2",
                            text = "过滤酒损",
                            glyph = 0xeac8,
                            xclass = "YZSoft.bpm.sharetask.Panel"
                        },
                        new {
                            id = "KC3",
                            text = "包装车间",
                            glyph = 0xeac8,
                            xclass = "YZSoft.bpm.sharetask.Panel"
                        },
                        new {
                            id = "KC4",
                            text = "糖化日报",
                            glyph = 0xeac8,
                            xclass = "YZSoft.bpm.sharetask.Panel"
                        },
                        new {
                            id = "KC5",
                            text = "产成品库存查询",
                            glyph = 0xeac8,
                            xclass = "YZSoft.bpm.sharetask.Panel"
                        }
                    }
                }
            };

            return YZSecurityManager.ApplayPermision(modules);
        }
    }
}
