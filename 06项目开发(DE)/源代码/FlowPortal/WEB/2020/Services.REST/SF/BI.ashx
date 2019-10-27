<%@ WebHandler Language="C#" Class="Biz.BI" %>

using System;
using System.Web;
using System.Text;
using Newtonsoft.Json.Linq;

namespace Biz
{
    public class BI : YZServiceHandler
    {
        public object GetModuleTree(HttpContext context)
        {
            object[] modules = new object[] {
                new {
                    id = "r1",
                    text = "统计门户",
                    glyph = 0xeb26,
                    xclass = "YZSoft.report.rpt.Panel",
                    config = new {
                        path = "D12.MSChart/BPM系统利用率"
                    }
                },
                new {
                    id = "r2",
                    text = "集团经营",
                    glyph = 0xeb28,
                    xclass = "YZSoft.report.rpt.Panel",
                    config = new {
                        path = "D13.Excel/BPM系统利用率"
                    }
                },
                new {
                    id = "r3",
                    text = "生产监控",
                    glyph = 0xe955,
                    xclass = "YZSoft.report.Panel",
                    config = new {
                        path = "生产报表"
                    }
                },
                new {
                    text = "采购分析",
                    expanded = true,
                    children = new object[]{
                        new {
                            id = "r4",
                            text = "采购分析一",
                            glyph = 0xe610,
                            xclass = "YZSoft.report.Panel",
                            config = new {
                                path="采购分析"
                            }
                        },
		                new {
                            id = "a4",
                            text = "采购分析二",
                            glyph = 0xe610,
                            xclass = "YZSoft.report.Panel",
                            config = new {
                                path="采购分析2"
                            }
                        },
		                new {
                            id = "b4",
                            text = "采购分析三",
                            glyph = 0xe610,
                            xclass = "YZSoft.report.Panel",
                            config = new {
                                path="采购分析3"
                            }
                        },
		                new {
                            id = "c4",
                            text = "采购分析四",
                            glyph = 0xe610,
                            xclass = "YZSoft.report.Panel",
                            config = new {
                                path="采购分析4"
                            }
                        }
                    }
                },
                new {
                    text = "销售分析",
                    expanded = true,
                    children = new object[]{
	                    new {
                            id = "r5",
                            text = "销售分析一",
                            glyph = 0xe93e,
                            xclass = "YZSoft.report.Panel",
                            config = new {
                                path="发货统计"
                            }
                        },
		                new {
                            id = "s5",
                            text = "销售分析二",
                            glyph = 0xe93e,
                            xclass = "YZSoft.report.Panel",
                            config = new {
                                path="销售分析"
                            }
                        }
                    }
                },
                new {
                    id = "t5",
                    text = "库存分析",
                    glyph = 0xe93e,
                    xclass = "YZSoft.report.Panel",
                    config = new {
                        path="库存分析"
                    }
                }
            };

            return YZSecurityManager.ApplayPermision(modules);
        }
    }
}
