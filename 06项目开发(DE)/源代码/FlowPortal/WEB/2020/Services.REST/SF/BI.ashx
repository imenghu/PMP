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
                
                    text = "生产监控",
                    children = new object[]{
                        new {
                            id = "r31",
                            text = "菏泽生产分析",
                            glyph = 0xe610,
                            xclass = "YZSoft.report.Panel",
                            config = new {
                                path="菏泽啤酒厂生产报表"
                            }
                        },
		                new {
                            id = "r32",
                            text = "广元生产分析",
                            glyph = 0xe610,
                            xclass = "YZSoft.report.Panel",
                            config = new {
                                path="广元啤酒厂生产报表"
                            }
                        }
                    }
                },
                new {
                    text = "采购分析",
                    expanded = true,
                    children = new object[]{
                        new {
                            id = "r4",
                            text = "采购需求分析",
                            glyph = 0xe610,
                            xclass = "YZSoft.report.Panel",
                            config = new {
                                path="采购分析"
                            }
                        },
		                new {
                            id = "a4",
                            text = "采购计划分析",
                            glyph = 0xe610,
                            xclass = "YZSoft.report.Panel",
                            config = new {
                                path="采购分析2"
                            }
                        },
		                new {
                            id = "b4",
                            text = "采购合同分析",
                            glyph = 0xe610,
                            xclass = "YZSoft.report.Panel",
                            config = new {
                                path="采购分析3"
                            }
                        },
		                new {
                            id = "c4",
                            text = "询价-化验分析",
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
                            id = "r51",
                            text = "菏泽销售统计",
                            glyph = 0xe93e,
                            xclass = "YZSoft.report.Panel",
                            config = new {
                                path="菏泽啤酒厂发货统计"
                            }
                        },
                            new {
                            id = "r52",
                            text = "广元销售统计",
                            glyph = 0xe93e,
                            xclass = "YZSoft.report.Panel",
                            config = new {
                                path="广元啤酒厂发货统计"
                            }
                        },
		                new {
                            id = "s5",
                            text = "经销商分析",
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
                },
                new{
                    text="个人信息",
                    expand=false,
                    children=new object[]{
                        new {
                            id = "UserInfo",
                            text = Resources.YZStrings.Module_UserInfo,
                            glyph = 0xea98,
                            xclass = "YZSoft.personal.UserInfoTab",
                            tabWrap = false
                        },
                        new {
                            id = "ChangePasswordPanel",
                            text = Resources.YZStrings.All_ChangePwd,
                            glyph = 0xea98,
                            xclass = "YZSoft.personal.ChangePasswordPanel",
                            tabWrap = false
                        }
                    }
                }
            };

            return YZSecurityManager.ApplayPermision(modules);
        }
    }
}
