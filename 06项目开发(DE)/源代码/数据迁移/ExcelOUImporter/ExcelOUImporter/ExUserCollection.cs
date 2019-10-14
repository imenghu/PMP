using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using BPM;
using BPM.Client;

namespace WGExcelImporter
{
    public class ExUserCollection : BPMList<ExUser>
    {
        protected override string GetKey(ExUser value)
        {
            if (value == null)
                return String.Empty;
            else
                return value.Account;
        }
    }
}
