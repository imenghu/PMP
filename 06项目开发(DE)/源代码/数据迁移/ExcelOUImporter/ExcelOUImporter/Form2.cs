using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using BPM.Client;

namespace WGExcelImporter
{
    public partial class Form2 : Form
    {
        public string server, uid, pwd;
        public int port;
        public string fullname;
        private Form1 frmparent;
        public Form2()
        {
            InitializeComponent();
        }

        private void Form2_Load(object sender, EventArgs e)
        {
            try
            {
                using (BPMConnection cn = new BPMConnection())
                {
                    cn.Open(server, uid, pwd, port);

                    OUCollection ouroot = cn.GetRootOUs();
                    for (int i = 0; i < ouroot.Count; i++)
                    {
                        OU ou = ouroot[i];
                        TreeNode node = new TreeNode();
                        //给根节点赋值
                        node.Name = ou.FullName;
                        node.Text = ou.Name;
                        node.Tag = String.Format("{0};{1};{2}", ou.FullName, ou.RSID, ou.SID);
                        //将节点加入到树中
                        treeView2.Nodes.Add(node);
                        //递归加入此根节点的子节点
                        InitTreeView(cn,node, ou.FullName);
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }
        private void InitTreeView(BPMConnection cn,TreeNode pNode, string oufullname)
        {
            TreeNode node;
            //取得以此节点为父节点的数据行
            OUCollection ous = OU.GetChildren(cn, oufullname);
            for(int i=0;i<ous.Count;i++)
            {
                OU ou = ous[i];
                node = new TreeNode();
                //给根节点赋值
                node.Name = ou.FullName;
                node.Text = ou.Name;
                //将节点加入到树中
                pNode.Nodes.Add(node);
                //递归加入此节点的子节点
                InitTreeView(cn, node, ou.FullName);
            }
        }

        private void button4_Click(object sender, EventArgs e)
        {
            treeView2.ExpandAll();
        }

        private void button5_Click(object sender, EventArgs e)
        {
            treeView2.CollapseAll();
        }

        private void treeView2_AfterSelect(object sender, TreeViewEventArgs e)
        {
            TreeNode node = treeView2.SelectedNode;
            fullname = node.Name;
            this.textBox1.Text = fullname;
        }

        private void button1_Click(object sender, EventArgs e)
        {
            frmparent = (Form1)this.Owner;
            this.DialogResult = DialogResult.OK;
            this.Close();

        }

        private void button2_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void button3_Click(object sender, EventArgs e)
        {
            frmparent = (Form1)this.Owner;
            this.DialogResult = DialogResult.Cancel;
            this.Close();
        }
    }
}
