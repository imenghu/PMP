<%@ WebHandler Language="C#" Class="Purchase.SysItem" %>

using System;
using System.Web;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Collections;
using System.Collections.Generic;
using BPM;
using BPM.Client;
using YZSoft.Web.DAL;
using Newtonsoft.Json.Linq;

namespace Purchase
{
    public class SysItem : Develop.Service.SysItem
    {
    }
}