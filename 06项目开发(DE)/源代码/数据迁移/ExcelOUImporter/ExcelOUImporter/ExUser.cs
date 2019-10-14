using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using BPM;
using BPM.Client;

namespace WGExcelImporter
{
    public class ExUser : User
    {
        //private string _userPrincipalName = null;
        public string Department1 = null;
        public string LeaderTitle = null;
        public string Manager = null;
        public OU ParentOU = null;
        //public string Path = null;
        public string OldFullName = null;
        public string FullName = null;

        public ExUser(string account, string password,string displayname, string leadertitle, string department1,string fullname, string manageraccount, bool resolveManager,string email)
        {
            Init(account, password,displayname, leadertitle, department1, fullname, manageraccount, resolveManager,email);
        }

        private void Init(string account,string password, string displayname, string leadertitle, string department1,string fullname, string manageraccount, bool resolveManager,string email)
        {
            this.Account = account;
            this.Password = password;
            this.DisplayName = displayname;
            this.LeaderTitle = leadertitle;
            this.Department1 = department1;
            this.FullName = fullname;
            this.EMail = email;
            if (resolveManager) 
            {
                this.Manager = manageraccount;
            }
        }
    }
}
