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
            string url = "http://demo.smartbi.com.cn/smartbi/vision/openresource.jsp?resid={0}&user=zhangfy@newbpm.cn&password=123456";
            object[] modules = new object[] {
                new {
                    id = "r1",
                    text = "统计门户",
                    glyph = 0xeb26,
                    xclass = "YZSoft.src.panel.IFramePanel",
                    config = new {
                        url = String.Format(url,"af6ff6b398581a1860d87a6a49f39449"),
                    }
                },
                new {
                    id = "r2",
                    text = "集团经营",
                    glyph = 0xeb28,
                    xclass = "YZSoft.src.panel.IFramePanel",
                    config = new {
                        url = String.Format(url,"f37c99c7b56ea8c7afd6689f18c75dff"),
                    }
                },
                new {
                    id = "r3",
                    text = "生产监控",
                    glyph = 0xe955,
                    xclass = "YZSoft.src.panel.IFramePanel",
                    config = new {
                        url = String.Format(url,"I402881fd016a9fcf9fcff2ba016aa0bffe746c16"),
                    }
                },
                new {
                    id = "r4",
                    text = "采购分析",
                    glyph = 0xe610,
                    xclass = "YZSoft.src.panel.IFramePanel",
                    config = new {
                        url = String.Format(url,"I40280981016abb2bbb2be572016abfb25ffe18b2"),
                    }
                },
                new {
                    id = "r5",
                    text = "销售分析",
                    glyph = 0xe93e,
                    xclass = "YZSoft.src.panel.IFramePanel",
                    config = new {
                        url = String.Format(url,"I40280981016ad421d4212873016ad7ecf56b0ca5"),
                    }
                },
                new {
                    id = "r6",
                    text = "汇报",
                    glyph = 0xe615,
                    xclass = "YZSoft.src.panel.IFramePanel",
                    config = new {
                        url = String.Format(url,"I402881fd016a9fcf9fcff2ba016aa0bf4ef26c13"),
                    }
                },
                new {
                    id = "r7",
                    text = "资产分析",
                    glyph = 0xe623,
                    xclass = "YZSoft.src.panel.IFramePanel",
                    config = new {
                        url = String.Format(url,"470be355482bd73c3714373ba9497801"),
                    }
                },
                new {
                    id = "r8",
                    text = "绩效分析",
                    glyph = 0xeac3,
                    xclass = "YZSoft.src.panel.IFramePanel",
                    config = new {
                        url = String.Format(url,"ab5fe7bbc28c8b26ffc7316a0308eb9b"),
                    }
                },
                new {
                    id = "r9",
                    text = "行政分析",
                    glyph = 0xe637,
                    xclass = "YZSoft.src.panel.IFramePanel",
                    config = new {
                        url = String.Format(url,"I2c9199ae016bd123d1234704016bd66deb7c2205"),
                    }
                },
                new {
                    id = "r10",
                    text = "人力资源",
                    glyph = 0xe93f,
                    xclass = "YZSoft.src.panel.IFramePanel",
                    config = new {
                        url = String.Format(url,"I2c9199ae016bd123d1234704016bd662fec62092"),
                    }
                },
                new {
                    id = "r11",
                    text = "工程分析",
                    glyph = 0xeb2b,
                    xclass = "YZSoft.src.panel.IFramePanel",
                    config = new {
                        url = String.Format(url,"470be355482bd73c3714373ba9497801"),
                    }
                },
                new {
                    id = "r12",
                    text = "更多案例",
                    expaned = true,
                    children = new object[]{
                        new {
                            id = "ReportX",
                            text = "BPM报表",
                            glyph = 0xeb12,
                            xclass = "YZSoft.report.Panel",
                            config = new {
                                path = "D41.ReportX/年度销售统计"
                            }
                        },
                        new {
                            id = "Report5CustomSearch",
                            text = "自定义搜索",
                            glyph = 0xeb12,
                            xclass = "YZSoft.report.rpt.Panel",
                            config = new {
                                path = "D22.ReportLink/员工发起排行榜",
                                pnlSearch = new {
                                    xclass = "Demo.YZReport.CustomSearchBar"
                                }
                            }
                        },
                        new {
                            id = "MyReport21",
                            text = "eChart展示",
                            glyph = 0xeb12,
                            xclass = "YZSoft.src.panel.IFramePanel",
                            config = new {
                                url = "http://insight.baidu.com/chezhan_cd/#/detail/3307",
                                @params = new {
                                    accesstoken = "单点登录token",
                                    name = "保时捷"
                                }
                            }
                        }
                    }
                }
            };

            return YZSecurityManager.ApplayPermision(modules);
        }
    }
}
