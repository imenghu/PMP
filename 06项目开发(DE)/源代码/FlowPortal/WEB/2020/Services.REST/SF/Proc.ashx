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
                modulePerm = new YZModulePermision("c0ab08aa-f20b-4333-9288-948b2266ee8c", YZModuleDeniedBehavior.Hide),
                glyph = 0xea9c,
                xclass = "YZModules.Proc.Panel.Annual_Pur_Plan"
            },
            new {
                id = "Request",
                text = "采购需求",
                modulePerm = new YZModulePermision("1f537a3f-564f-4b94-a39e-592f6d601577", YZModuleDeniedBehavior.Hide),
                glyph = 0xea9c,
                xclass = "YZModules.Proc.Panel.Proc_Demand"
            },
            new {
                id = "Proc_Contract",
                text = "采购合同",
                modulePerm = new YZModulePermision("1df9d8a7-6c33-416e-aa53-0dcee003b414", YZModuleDeniedBehavior.Hide),
                glyph = 0xea9c,
                xclass = "YZModules.Proc.Panel.Proc_Contract"
            },
            new {
                id = "proc_pur_task",
                text = "我的任务",
                modulePerm = new YZModulePermision("0dfe13ee-66ae-4af1-aa7e-b919ceb79135", YZModuleDeniedBehavior.Hide),
                glyph = 0xea9c,
                xclass = "YZModules.Proc.Panel.proc_pur_task"
            },
            new {
                id = "proc_pur_task_enquiry",
                text = "我的任务",
                modulePerm = new YZModulePermision("e026627d-3e64-4bc4-8a63-df188aa10515", YZModuleDeniedBehavior.Hide),
                glyph = 0xea9c,
                xclass = "YZModules.Proc.Panel.proc_pur_task_enquiry"
            },
            new {
                id = "proc_arrival_notice",
                text = "到货入库",
                modulePerm = new YZModulePermision("87465539-60a2-4ac8-89c5-43529a525c9f", YZModuleDeniedBehavior.Hide),
                glyph = 0xea9c,
                xclass = "YZModules.Proc.Panel.proc_arrival_notice"
            },
            new {
                id = "proc_tests",
                text = "检测化验",
                modulePerm = new YZModulePermision("8f519421-6ea1-4087-bfbb-8d243786b085", YZModuleDeniedBehavior.Hide),
                glyph = 0xea9c,
                xclass = "YZModules.Proc.Panel.proc_tests"
            }
        };

        return YZSecurityManager.ApplayPermision(modules);
    }

}