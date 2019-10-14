using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Data.OleDb;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using BPM;
using BPM.Client;
using BPM.Collections;
using BPM.Resources;
using BPM.Security;
using System.Collections;


namespace WGExcelImporter
{
    public partial class Form1 : Form
    {
        string type = "ou";
        private string ProviderPerfix = "BPMOU";
        DataTable dt;

        public Form1()
        {
            InitializeComponent();
       
            this._txtBPMServer.Text = Config.GetConfig("BPMServer");
            this._txtBPMUID.Text = Config.GetConfig("BPMUid");
            this._txtBPMPwd.Text = Config.GetConfig("BPMPassword");

            this.textBox1.Visible = false;
            this.btnSelect.Visible = false;
            this.btnSelect.Enabled = false;
            this.label6.Visible = false;
            this.textBox2.Visible = false;
        }

        private void button5_Click(object sender, EventArgs e)
        {
            type = "ou";
            if (dt != null)
            {
                dt.Clear();
                treeView1.Nodes.Clear();
            }
            try
            {
                if (openFileDialog1.ShowDialog() == DialogResult.OK)
                {
                    comboBox1.Text = openFileDialog1.FileName;
                    DataSet dsExcel = ExcelHelper.ToDataTable(comboBox1.Text);
                    dt = dsExcel.Tables[0];
                    dt.Columns.Add(new DataColumn("RSID", typeof(string)));
                    dt.Columns.Add(new DataColumn("SID", typeof(string)));

                    //将Sheet1的数据加载到DataGridView中
                    dataGridView1.DataSource = dt;

                    TreeNode node;
                    //获取根节点
                    DataRow[] rows = dt.Select("p_id='NULL'");
                    if (rows.Length == 0)
                    {
                        DataTable dtOnlyTopParent = dt.Clone();
                        foreach (DataRow row in dt.Rows)
                        {
                            bool flag = false;
                            foreach (DataRow row2 in dt.Rows)
                            {
                                if (Convert.ToString(row["p_id"]) == Convert.ToString(row2["org_id"]))
                                {
                                    flag = true;
                                }
                            }
                            if (!flag)
                            {
                                dtOnlyTopParent.Rows.Add(row.ItemArray);
                            }
                        }
                        foreach (DataRow row in dtOnlyTopParent.Rows)
                        {
                            node = new TreeNode();
                            //给根节点赋值
                            node.Name = row["org_id"].ToString();
                            node.Text = row["name"].ToString();
                            //将节点加入到树中
                            treeView1.Nodes.Add(node);
                            //递归加入此根节点的子节点
                            InitTreeView(node, Convert.ToString(row["org_id"]), dt);
                        }
                    }
                    else
                    {
                        foreach (DataRow row in rows)
                        {
                            node = new TreeNode();
                            //给根节点赋值
                            node.Name = row["org_id"].ToString();
                            node.Text = row["name"].ToString();
                            //将节点加入到树中
                            treeView1.Nodes.Add(node);
                            //递归加入此根节点的子节点
                            InitTreeView(node, Convert.ToString(row["org_id"]), dt);
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }
        private void InitTreeView(TreeNode pNode, string pid, DataTable dt)
        {
            TreeNode node;
            //取得以此节点为父节点的数据行
            DataRow[] rows = dt.Select(String.Format("p_id='{0}'", pid), "org_id");
            foreach (DataRow row in rows)
            {
                node = new TreeNode();
                //给根节点赋值
                node.Name = row["org_id"].ToString();
                node.Text = row["name"].ToString();
                //将节点加入到树中
                pNode.Nodes.Add(node);
                //递归加入此节点的子节点
                InitTreeView(node, Convert.ToString(row["org_id"]), dt);
            }
        }
        private void button6_Click(object sender, EventArgs e)
        {
            //展开TreeView所有节点
            treeView1.ExpandAll();
        }
        private void button1_Click(object sender, EventArgs e)
        {
            treeView1.CollapseAll();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            try
            {
                using (BPMConnection cn = new BPMConnection())
                {
                    string server = this._txtBPMServer.Text;
                    string uid = this._txtBPMUID.Text;
                    string pwd = this._txtBPMPwd.Text;
                    int port = Convert.ToInt32(this.numericUpDown1.Value);
                    cn.Open(server, uid, pwd, port);
                }
                MessageBox.Show("连接成功");

                this.btnSelect.Enabled = true;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }
        private void radioButton1_CheckedChanged(object sender, EventArgs e)
        {
            this.textBox1.Visible = false;
            this.btnSelect.Visible = false;
            this.label6.Visible = false;
            this.textBox2.Visible = false;
        }
        private void radioButton2_CheckedChanged(object sender, EventArgs e)
        {
            this.textBox1.Visible = true;
            this.btnSelect.Visible = true;
            this.label6.Visible = true;
            this.textBox2.Visible = true;
        }
        private void btnSelect_Click(object sender, EventArgs e)
        {
            Form2 frm2 = new Form2();
            frm2.server = this._txtBPMServer.Text;
            frm2.uid = this._txtBPMUID.Text;
            frm2.pwd = this._txtBPMPwd.Text;
            frm2.port = Convert.ToInt32(this.numericUpDown1.Value);
            if (frm2.ShowDialog() == DialogResult.OK)
            {
                this.textBox1.Text = frm2.fullname;
            }
            else
            {
                this.textBox1.Text = "";
            }
        }

        private void btnImport_Click(object sender, EventArgs e)
        {
            StringBuilder warn = new StringBuilder();
            try
            {
                DateTime StartDate = DateTime.Now;
                //生成组织树
                using (BPMConnection cn = new BPMConnection())
                {
                    cn.Open(this._txtBPMServer.Text, this._txtBPMUID.Text, this._txtBPMPwd.Text,Convert.ToInt32(this.numericUpDown1.Value));

                    if (type.ToUpper() == "OU")
                    {
                        if (radioButton1.Checked)
                        {
                            //获取根节点
                            DataRow[] rows = dt.Select("p_id='NULL'");
                            foreach (DataRow row in rows)
                            {
                                OU ou = new OU();
                                ou.Name = row["name"].ToString();
                                ou.OULevel = row["type"].ToString();
                                ou.Code = row["org_id"].ToString();
                                ou.OrderIndex = Convert.ToInt32(row["order_num"].ToString());

                                OU ouroot = cn.GetRootOUs().TryGetItem(ou.Name);
                                if (ouroot != null)
                                {
                                    row["RSID"] = ouroot.RSID;
                                    row["SID"] = ouroot.SID;

                                    ou.RSID = ouroot.RSID;
                                    ou.SID = ouroot.SID;
                                    //重组dt,将原来的SID和RSID赋给当前OU信息所在的Table
                                    ReOU(cn, ouroot, Convert.ToString(row["org_id"]));

                                    //删除现有的组织结构
                                    ouroot.Delete(cn);
                                }

                                //创建新的OU
                                OU createdOU = cn.CreateOrg(this.ProviderPerfix, ou);

                                CreateOUS(cn, createdOU, Convert.ToString(row["org_id"]));
                            }
                        }
                        else if (radioButton2.Checked)
                        {
                            OU ouparent = new OU();
                            ouparent.Open(cn, this.textBox1.Text);

                            //指定Excel中最高级部门的上级部门编码
                            string pid = Convert.ToString(this.textBox2.Text);
                            CreateOUS(cn, ouparent, pid);
                        }
                    }
                    else if (type.ToUpper() == "USER")
                    {
                        int count = 1;
                        foreach (DataRow row in dt.Rows)
                        {
                            string deptID = Convert.ToString(row["org_id"]);
                            if (!String.IsNullOrEmpty(deptID))
                            {
                                try
                                {
                                    OU ou = OU.TryGetOUFromCode(cn, deptID);

                                    User user = new User();
                                    user.Account = Convert.ToString(row["login_uid"]);
                                    user.DisplayName = Convert.ToString(row["display_name"]);
                                    user.Disabled = !Convert.ToBoolean(row["active_flag"]);

                                    Member member = new Member();
                                    member.UserAccount = user.Account;
                                    member.FullName = String.Format("{0}/{1}", ou.FullName, user.Account);

                                    //直接上级设置
                                    SupervisorCollection supervisors = new SupervisorCollection();

                                    //string strSupervisorAccount=Convert.ToString(row["直接上级login_uid"]);
                                    //if (!String.IsNullOrEmpty(strSupervisorAccount))
                                    //{
                                    //    MemberCollection supervisorMembers = OrgSvr.GetUserPositions(cn, strSupervisorAccount);
                                    //    foreach (Member supervisorMember in supervisorMembers)
                                    //    {
                                    //        Supervisor supervisor = new Supervisor();
                                    //        OU supervisorMemberOU = supervisorMember.GetParentOU(cn);
                                    //        //1.所在部门及同条上级部门线
                                    //        Hashtable hashtable = GetOUFullNames(ou.FullName);
                                    //        for (int i = hashtable.Count - 1; i >= 0; i--)
                                    //        {
                                    //            string fullname = Convert.ToString(hashtable[i]);
                                    //            if (fullname == supervisorMemberOU.FullName)
                                    //            {
                                    //                supervisor.UserAccount = strSupervisorAccount;
                                    //                supervisor.MemberFullName = String.Format("{0}/{1}", fullname, supervisor.UserAccount);
                                    //                if (!supervisors.Contains(supervisor))
                                    //                    supervisors.Add(supervisor);
                                    //            }
                                    //        }
                                    //        //2.其他部门
                                    //        if (supervisor.UserAccount == null)
                                    //        {
                                    //            supervisor.UserAccount = strSupervisorAccount;
                                    //            supervisor.MemberFullName = String.Format("{0}/{1}", supervisorMemberOU.FullName, supervisor.UserAccount);
                                    //            if (!supervisors.Contains(supervisor))
                                    //                supervisors.Add(supervisor);
                                    //        }
                                    //    }


                                    //}

                                    OU.AddMember(cn, ou.FullName, null, member, user, new BPMObjectNameCollection(), new BPMObjectNameCollection(), supervisors);
                                }
                                catch (Exception ex)
                                {
                                    warn.AppendLine(count + ":" + ex.Message);
                                    count++;
                                    cn.Open(this._txtBPMServer.Text, this._txtBPMUID.Text, this._txtBPMPwd.Text, Convert.ToInt32(this.numericUpDown1.Value));
                                    continue;
                                }
                            }
                        }
                    }
                    this._progressBar.Value = 0;
                    this._progressBar.Maximum = dt.Rows.Count;
                }
                DateTime EndDate = DateTime.Now;

                this._txtResult.Text = warn.ToString();
                MessageBox.Show("导入已完成\n开始时间：" + StartDate + "\n结束时间：" + EndDate, "提示");
            }
            catch (Exception exp)
            {
                MessageBox.Show("导入失败，原因：\n" + exp.Message + exp.StackTrace, "警告");
            }
        }
        public void ReOU(BPMConnection cn, OU parentou, string pid)
        {
            DataRow[] rows = dt.Select(String.Format("p_id='{0}'", pid), "org_id");
            foreach (DataRow row in rows)
            {
                OU bpmou = parentou.GetChildren(cn).TryGetItem(row["name"].ToString());
                if (bpmou != null)
                {
                    row["RSID"] = bpmou.RSID;
                    row["SID"] = bpmou.SID;

                    ReOU(cn, bpmou, Convert.ToString(row["org_id"]));
                }
            }
        }

        private void CreateOUS(BPMConnection cn,OU parentou, string pid)
        {
            DataRow[] rows = dt.Select(String.Format("p_id='{0}'", pid), "org_id");
            foreach (DataRow row in rows)
            {
                OU ou = new OU();
                ou.Name = row["name"].ToString();
                ou.OULevel = row["type"].ToString();
                ou.Code = row["org_id"].ToString();
                ou.RSID = row["RSID"].ToString();
                ou.SID = row["SID"].ToString();

                OU createdOU = OU.AddChildOU(cn, parentou.FullName, ou);
                CreateOUS(cn, createdOU, Convert.ToString(row["org_id"]));
            }
        }
        /// <summary>
        /// 将成员的所有部门组成Hashtable跟上级的部门做对比
        /// </summary>
        /// <param name="fullname"></param>
        /// <returns></returns>
        private Hashtable GetOUFullNames(string fullname)
        {
            Hashtable hashTable = new Hashtable();

            string[] ouname = fullname.Split('/');
            string newFullName = "BPMOU:/";
            int j = 0;
            for (int i = 2; i < ouname.Length;i++)
            {
                newFullName = newFullName + "/" + ouname[i];

                hashTable.Add(j, newFullName);
                j++;
            }
            return hashTable;
        }

        private void button3_Click(object sender, EventArgs e)
        {
            type = "user";
            if (dt != null)
            {
                dt.Clear();
                treeView1.Nodes.Clear();
            }
            try
            {
                if (openFileDialog1.ShowDialog() == DialogResult.OK)
                {
                    comboBox1.Text = openFileDialog1.FileName;
                    DataSet dsUser = ExcelHelper.ToDataTable(comboBox1.Text);
                    if (dsUser.Tables.Count > 0)
                    {
                        dt = dsUser.Tables[0];
                        dataGridView1.DataSource = dt;

                        radioButton1.Checked = false;
                        radioButton2.Checked = true;
                    }
                }
            }
            catch (Exception exp)
            {
                MessageBox.Show("加载失败，原因：\n" + exp.Message, "警告");
            }
        }

    }
}
