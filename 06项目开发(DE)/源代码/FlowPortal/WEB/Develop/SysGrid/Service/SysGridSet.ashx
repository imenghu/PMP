<%@ WebHandler Language="C#" Class="Develop.SysGridSet" %>

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

namespace Develop
{
    public class SysGridSet : Develop.Service.SysGridSet
    {
    }
}