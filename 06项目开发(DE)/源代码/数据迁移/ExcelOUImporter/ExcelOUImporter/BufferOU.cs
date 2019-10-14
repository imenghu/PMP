using System;
using System.Collections.Generic;
using System.Text;
using BPM;
using BPM.Client;

namespace WGExcelImporter
{
    public class BufferOU : OU
    {
        private BufferOUCollection _childred;
        private ExUserCollection _users;
        //private ADRoleCollection _roles;

        public BufferOUCollection Children
        {
            get
            {
                if (this._childred == null)
                    this._childred = new BufferOUCollection();

                return this._childred;
            }
        }

        public ExUserCollection Users
        {
            get
            {
                if (this._users == null)
                    this._users = new ExUserCollection();

                return this._users;
            }
        }

        /*
        public ADRoleCollection Roles
        {
            get
            {
                if (this._roles == null)
                    this._roles = new ADRoleCollection();

                return this._roles;
            }
        }
        */
    }
}
