using System;
using System.Collections.Generic;
using System.Text;
using BPM;
using BPM.Client;

namespace WGExcelImporter
{
    public class BufferOUCollection : BPMList<BufferOU>
    {
        protected override string GetKey(BufferOU value)
        {
            if (value == null)
                return String.Empty;
            else
                return value.Name;
        }
    }
}
