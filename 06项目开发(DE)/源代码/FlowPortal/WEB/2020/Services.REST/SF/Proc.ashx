<%@ WebHandler Language="C#" Class="Proc" %>

using System;
using System.Web;
using System.Text;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using YZSoft.Web.DAL;
using System.Data;
using YZSoft.Library;
using System.Collections.Generic;

public class Proc : YZServiceHandler
{

    public object GetModuleTree(HttpContext context)
    {
        object[] modules = new object[] {
            new {
                id = "plan",
                text = "采购计划",
                glyph = 0xe606,
                xclass = "YZModules.Proc.Panel.Annual_Pur_Plan"
            },
            new {
                id = "Request",
                text = "采购需求",
                glyph = 0xe606,
                xclass = "YZModules.Proc.Panel.Proc_Demand"
            },
            new {
                id = "Proc_Contract",
                text = "采购合同",
                glyph = 0xe606,
                xclass = "YZModules.Proc.Panel.Proc_Contract"
            },
            new {
                id = "proc_pur_task",
                text = "我的任务",
                glyph = 0xe606,
                xclass = "YZModules.Proc.Panel.proc_pur_task"
            },
            new {
                id = "proc_pur_task_enquiry",
                text = "我的任务",
                glyph = 0xe606,
                xclass = "YZModules.Proc.Panel.proc_pur_task_enquiry"
            },
            new {
                id = "proc_arrival_notice",
                text = "到货入库",
                glyph = 0xe606,
                xclass = "YZModules.Proc.Panel.proc_arrival_notice"
            },
            new {
                id = "proc_tests",
                text = "检测化验",
                glyph = 0xe606,
                xclass = "YZModules.Proc.Panel.proc_tests"
            }
        };

        return YZSecurityManager.ApplayPermision(modules);
    }

}