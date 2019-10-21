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
        <table width="960" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none" border="0" cellspacing="0" cellpadding="0">
            <tbody>
                <tr>
                    <td width="320" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none">
                    </td>
                    <td width="320" align="center" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none">
                        <strong><font size="5">化验单</font></strong></td>
                    <td width="320" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none">
                    </td>
                </tr>
            </tbody>
        </table>
        <table width="960" align="center" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none" border="0" cellspacing="0" cellpadding="0">
            <tbody>
                <tr>
                    <td width="158" height="34" class="xtbd" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        部门名称</td>
                    <td width="158" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox2" runat="server" DisableExpress="1" width="100%" BorderColor="#DCDCDC" XDataBind="SFDATA:proc_tests.DeptName"></aspxform:XTextBox>
                    </td>
                    <td width="158" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        化验人姓名</td>
                    <td width="158" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox5" runat="server" DisableExpress="1" width="100%" BorderColor="#DCDCDC" XDataBind="SFDATA:proc_tests.UpdateUserName"></aspxform:XTextBox>
                    </td>
                    <td width="158" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        化验时间</td>
                    <td width="158" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XDateTimePicker id="XDateTimePicker1" runat="server" BorderColor="#DCDCDC" XDataBind="SFDATA:proc_tests.create_time"></aspxform:XDateTimePicker>
                    </td>
                </tr>
                <tr>
                    <td class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        物料名称</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox3" runat="server" DisableExpress="1" width="80%" BorderColor="#DCDCDC" XDataBind="SFDATA:proc_tests.mat_name"></aspxform:XTextBox>
                        <aspxform:XDataBrowserButton id="XDataBrowserButton1" runat="server" Width="21px" XDataSource="DataSource:SFDATA;TableName:ctl_material" DataMap="mat_code->SFDATA:proc_tests.mat_code;mat_name->SFDATA:proc_tests.mat_name;mat_spec->SFDATA:proc_tests.mat_spesc" DisplayColumns="mat_code:物料编码;mat_name:物料名称"></aspxform:XDataBrowserButton>
                    </td>
                    <td class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        物料编码</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox6" runat="server" DisableExpress="1" width="100%" BorderColor="#DCDCDC" XDataBind="SFDATA:proc_tests.mat_code"></aspxform:XTextBox>
                    </td>
                    <td class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        规格</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox9" runat="server" DisableExpress="1" width="100%" BorderColor="#DCDCDC" XDataBind="SFDATA:proc_tests.mat_spesc"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        供应商名称</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox4" runat="server" width="80%" BorderColor="#DCDCDC" XDataBind="SFDATA:proc_tests.vendor_name"></aspxform:XTextBox>
                        <aspxform:XDataBrowserButton id="XDataBrowserButton2" runat="server" Width="21px" XDataSource="DataSource:SFDATA;TableName:ctl_vendor" DataMap="vendor_id->SFDATA:proc_tests.vendor_id;vendor_name->SFDATA:proc_tests.vendor_name" DisplayColumns="vendor_name:供应商名称;vendor_contact:联系人;vendor_tel:联系电话;vendor_email:邮箱;vendor_addr:地址"></aspxform:XDataBrowserButton>
                    </td>
                    <td class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        化验类别</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XDropDownList id="XDropDownList1" runat="server" XDataBind="SFDATA:proc_tests.tests_class" Width="100%" PromptText="--请选择--">
                            <asp:ListItem>退库化验</asp:ListItem>
                            <asp:ListItem>入库化验</asp:ListItem>
                        </aspxform:XDropDownList>
                    </td>
                    <td class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        化验结果</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XDropDownList id="XDropDownList2" runat="server" XDataBind="SFDATA:proc_tests.tests_result" Width="100%" PromptText="--请选择--">
                            <asp:ListItem Value="1">合格</asp:ListItem>
                            <asp:ListItem Value="2">不合格（让步接收）</asp:ListItem>
                            <asp:ListItem Value="3">不合格（不接受）</asp:ListItem>
                        </aspxform:XDropDownList>
                    </td>
                </tr>
                <tr>
                    <td height="34" class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        备注</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none" colspan="5">
                        <aspxform:XTextBox id="XTextBox1" runat="server" width="100%" BorderColor="#DCDCDC" XDataBind="SFDATA:proc_tests.tests_remarks" Rows="5" TextMode="MultiLine"></aspxform:XTextBox>
                    </td>
                </tr>
            </tbody>
        </table>
        <table width="960" align="center" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none" border="0" cellspacing="0" cellpadding="0" dynamicarea="2,1">
            <tbody>
                <tr>
                    <td height="34" class="xttl" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid" colspan="4">
                        化验明细</td>
                </tr>
                <tr>
                    <td width="50" height="34" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                        序号</td>
                    <td width="300" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        指标名称</td>
                    <td width="300" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        范围值</td>
                    <td width="310" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        检测值</td>
                </tr>
                <tr>
                    <td height="34" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                        <aspxform:XGridLineNo id="XGridLineNo1" runat="server" Width="100%" TextAlign="Center" BorderStyle="None" BackColor="White">1</aspxform:XGridLineNo>
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox11" runat="server" width="100%" BorderColor="#DCDCDC" XDataBind="SFDATA:proc_tests_value.index_name"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox12" runat="server" width="100%" BorderColor="#DCDCDC" XDataBind="SFDATA:proc_tests_value.rang_value"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox13" runat="server" width="100%" BorderColor="#DCDCDC" XDataBind="SFDATA:proc_tests_value.tests_value"></aspxform:XTextBox>
                    </td>
                </tr>
            </tbody>
        </table>
        <br />
        <table width="794" align="center" border="0" cellspacing="0" cellpadding="0" hiddenexpress="1">
            <tbody>
                <tr>
                    <td width="264" height="34">
                        供应商Id</td>
                    <td width="265">
                        <aspxform:XTextBox id="XTextBox8" runat="server" DisableExpress="1" width="80%" BorderColor="#DCDCDC" XDataBind="SFDATA:proc_tests.vendor_id"></aspxform:XTextBox>
                    </td>
                    <td width="265">
                    </td>
                </tr>
                <tr>
                    <td height="34">
                        <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator1" runat="server" Display="None" ForeColor="Red" ErrorMessage="请选择物料名称">物料名称</aspxform:XRequiredFieldValidator>
                    </td>
                    <td>
                        <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator2" runat="server" Display="None" ForeColor="Red" ErrorMessage="请选择化验类别">化验类别</aspxform:XRequiredFieldValidator>
                    </td>
                    <td>
                        <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator3" runat="server" Display="None" ForeColor="Red" ErrorMessage="请选择化验结果">化验结果</aspxform:XRequiredFieldValidator>
                    </td>
                </tr>
            </tbody>
        </table>
    </form>
</body>
</html>
