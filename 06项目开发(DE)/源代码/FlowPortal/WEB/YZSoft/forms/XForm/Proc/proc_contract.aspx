<%@ Page Language="C#" %>
<%@ Register TagPrefix="aspxform" Namespace="XFormDesigner.Framework.Web.UI" Assembly="XFormDesigner.Framework" %>
<script runat="server">

    // Insert page code here
    //

</script>
<html xmlns:XForm="xmlns:xform">
<head runat="server">
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE8" />
    <title>Demo</title>
    <link rel="stylesheet" type="text/css" href="../../Style/FormGray.css" />
</head>
<body>
    <form runat="server">
        <!-- Insert content here -->
        <table width="960" align="center" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none" border="0" cellspacing="0" cellpadding="0">
            <tbody>
                <tr>
                    <td width="158" height="34" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                    </td>
                    <td width="158" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                    </td>
                    <td width="316" align="center" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <font size="4">采购合同</font></td>
                    <td width="158" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                    </td>
                    <td width="158" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                    </td>
                </tr>
            </tbody>
        </table>
        <table width="960" align="center" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none" border="0" cellspacing="0" cellpadding="0">
            <tbody>
                <tr>
                    <td width="157" height="36" class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        合同编号</td>
                    <td width="157" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox2" runat="server" BorderColor="#DCDCDC" BorderWidth="1" width="100%" XDataBind="SFDATA:proc_contract.contract_code"></aspxform:XTextBox>
                    </td>
                    <td width="157" class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        合同类型</td>
                    <td width="157" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XDropDownList id="XDropDownList1" runat="server" XDataBind="SFDATA:proc_contract.contract_type" PromptText="请选择">
                            <asp:ListItem Value="1">框架合同</asp:ListItem>
                            <asp:ListItem Value="2">普通合同</asp:ListItem>
                            <asp:ListItem Value="3">订单</asp:ListItem>
                        </aspxform:XDropDownList>
                    </td>
                    <td width="157" class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        合同名称</td>
                    <td width="157" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none" colspan="1">
                        <aspxform:XTextBox id="XTextBox6" runat="server" BorderColor="#DCDCDC" BorderWidth="1" width="100%" XDataBind="SFDATA:proc_contract.contract_name"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td height="34" class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        供应商名称</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox3" runat="server" BorderColor="#DCDCDC" BorderWidth="1" width="80%" XDataBind="SFDATA:proc_contract.vendor_name"></aspxform:XTextBox>
                        <aspxform:XDataBrowserButton id="XDataBrowserButton3" runat="server" Width="21px"></aspxform:XDataBrowserButton>
                    </td>
                    <td class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        委外</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XDropDownList id="XDropDownList2" runat="server" XDataBind="SFDATA:proc_contract.if_outsource" PromptText="请选择">
                            <asp:ListItem Value="1">是</asp:ListItem>
                            <asp:ListItem Value="0">否</asp:ListItem>
                        </aspxform:XDropDownList>
                    </td>
                    <td class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        总金额</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none" colspan="1">
                        <aspxform:XTextBox id="XTextBox7" runat="server" BorderColor="#DCDCDC" BorderWidth="1" width="100%" XDataBind="SFDATA:proc_contract.total_price"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td height="34" class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        提交人</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox4" runat="server" BorderColor="#DCDCDC" BorderWidth="1" width="100%" XDataBind="SFDATA:proc_contract.createuser"></aspxform:XTextBox>
                    </td>
                    <td class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        签订人员</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox5" runat="server" BorderColor="#DCDCDC" BorderWidth="1" width="80%" XDataBind="SFDATA:proc_contract.signname"></aspxform:XTextBox>
                        <aspxform:XSelectUserButton id="XSelectUserButton1" runat="server" Width="21px"></aspxform:XSelectUserButton>
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none" colspan="1">
                    </td>
                </tr>
                <tr>
                    <td class="xfld">
                        附件</td>
                    <td>
                        <aspxform:XAttachments id="XAttachments1" runat="server" width="100%" XDataBind="SFDATA:proc_contract.attachment" FileTypesDescription="Word,Excel,Pdf" FileTypes="*.doc;*.docx;*.xls;*.xlsx;*.pdf;*.png;*.jpg;*.jpeg;*.gif"></aspxform:XAttachments>
                    </td>
                    <td>
                    </td>
                    <td>
                    </td>
                    <td>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td height="34" align="left" class="xttl" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none" colspan="3">
                        任务列表</td>
                    <td align="right" class="xttl" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none" colspan="3">
                        <aspxform:XDataBrowserButton id="XDataBrowserButton2" runat="server" Width="70px" DataMap="pur_task_id->SFDATA:proc_contract_task.pur_task_id" DisplayColumns="mat_code:物料编码;mat_name:物料名称" XDataSource="DataSource:SFDATA;TableName:proc_pur_task" MultiSelect="True" Text="添加物料"></aspxform:XDataBrowserButton>
                        &nbsp; 
                        <aspxform:XAddBlockButton id="XAddBlockButton1" runat="server" Text="新增" TableName="proc_contract_task" DataSource="SFDATA"></aspxform:XAddBlockButton>
                    </td>
                </tr>
            </tbody>
        </table>
        <table width="960" align="center" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none" border="0" cellspacing="0" cellpadding="0" dynamicarea="1,1">
            <tbody>
                <tr>
                    <td width="30" height="35" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        序号</td>
                    <td width="95" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        物料编码</td>
                    <td width="78" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        物料名称</td>
                    <td width="78" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        物料规格</td>
                    <td width="78" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        申购数量</td>
                    <td width="78" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        申购单位</td>
                    <td width="78" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        计划单价</td>
                    <td width="78" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        价格单价</td>
                    <td width="78" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        计划金额</td>
                    <td width="83" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        计划到货时间</td>
                    <td width="78" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        是否紧急</td>
                    <td width="78" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        备注</td>
                </tr>
                <tr>
                    <td height="34" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XGridLineNo id="XGridLineNo1" runat="server" BorderWidth="1" Width="100%" BackColor="White" BorderStyle="None">1</aspxform:XGridLineNo>
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox1" runat="server" BorderColor="#DCDCDC" BorderWidth="1" width="60px" XDataBind="varcode" ValueToDisplayText Enabled="False"></aspxform:XTextBox>
                        <aspxform:XDataBrowserButton id="XDataBrowserButton1" runat="server" Width="21px" DataMap="pur_task_id->SFDATA:proc_contract_task.pur_task_id;mat_code->varcode" DisplayColumns="mat_code:物料编码;mat_name:物料名称" XDataSource="DataSource:SFDATA;TableName:proc_pur_task"></aspxform:XDataBrowserButton>
                        <br />
                        <aspxform:XTextBox id="XTextBox20" runat="server" BorderColor="#DCDCDC" BorderWidth="1" width="100%" XDataBind="SFDATA:proc_contract_task.pur_task_id" DataMap="mat_code->varcode;mat_name->varname;mat_spec->varspec;plan_price->varprice;pur_slnum->varslnum;pur_slnum_unit->varunit;plan_arrival_time->vartime;if_urg->varurg;item_price->varsprice;pur_task_remarks->varremark" ValueToDisplayText="DataSource:SFDATA;TableName:proc_pur_task;FilterColumn:pur_task_id;DisplayColumn:pur_task_id" HiddenExpress="1"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox10" runat="server" BorderColor="#DCDCDC" BorderWidth="1" width="100%" XDataBind="varname" Enabled="False"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox11" runat="server" BorderColor="#DCDCDC" BorderWidth="1" width="100%" XDataBind="varspec" Enabled="False"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox12" runat="server" BorderColor="#DCDCDC" BorderWidth="1" width="100%" XDataBind="varslnum" Enabled="False"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox13" runat="server" BorderColor="#DCDCDC" BorderWidth="1" width="100%" XDataBind="varunit" Enabled="False"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox14" runat="server" BorderColor="#DCDCDC" BorderWidth="1" width="100%" XDataBind="varprice" Enabled="False"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox15" runat="server" BorderColor="#DCDCDC" BorderWidth="1" width="100%" Enabled="False"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox16" runat="server" BorderColor="#DCDCDC" BorderWidth="1" width="100%" XDataBind="varsprice" Enabled="False"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox17" runat="server" BorderColor="#DCDCDC" BorderWidth="1" width="100%" XDataBind="vartime" Enabled="False"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox18" runat="server" BorderColor="#DCDCDC" BorderWidth="1" width="100%" XDataBind="varurg" Enabled="False"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox19" runat="server" BorderColor="#DCDCDC" BorderWidth="1" XDataBind="varremark" Enabled="False"></aspxform:XTextBox>
                    </td>
                </tr>
            </tbody>
        </table>
        <br />
        <table width="960" align="center" border="0" cellspacing="0" cellpadding="0" hiddenexpress="1">
            <tbody>
                <tr>
                    <td width="160">
                        公司</td>
                    <td width="160">
                        <aspxform:XTextBox id="XTextBox8" runat="server" BorderColor="#DCDCDC" BorderWidth="1" width="100%" XDataBind="SFDATA:proc_contract.companyname"></aspxform:XTextBox>
                    </td>
                    <td width="160">
                        部门</td>
                    <td width="160">
                        <aspxform:XTextBox id="XTextBox9" runat="server" BorderColor="#DCDCDC" BorderWidth="1" width="100%" XDataBind="SFDATA:proc_contract.dept"></aspxform:XTextBox>
                    </td>
                    <td width="160">
                    </td>
                    <td width="160">
                    </td>
                </tr>
                <tr>
                    <td>
                        供应商id</td>
                    <td>
                        <aspxform:XTextBox id="XTextBox21" runat="server" BorderColor="#DCDCDC" BorderWidth="1" width="100%" XDataBind="SFDATA:proc_contract.vendor_id">1</aspxform:XTextBox>
                    </td>
                    <td>
                        员工编号</td>
                    <td>
                        <aspxform:XTextBox id="XTextBox22" runat="server" BorderColor="#DCDCDC" BorderWidth="1" width="100%" XDataBind="SFDATA:proc_contract.sign_userid">1</aspxform:XTextBox>
                    </td>
                    <td>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td>
                        审批状态</td>
                    <td>
                        <aspxform:XTextBox id="XTextBox23" runat="server" BorderColor="#DCDCDC" BorderWidth="1" width="100%" XDataBind="SFDATA:proc_contract.approval_state">1</aspxform:XTextBox>
                    </td>
                    <td>
                    </td>
                    <td>
                    </td>
                    <td>
                    </td>
                    <td>
                    </td>
                </tr>
            </tbody>
        </table>
    </form>
</body>
</html>
