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
                        <font size="4">化验单</font></td>
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
                    <td width="158" height="34" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        部门名称</td>
                    <td width="158" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox2" runat="server" XDataBind="SFDATA:proc_tests.dept" BorderColor="#DCDCDC" BorderWidth="1" width="100%"></aspxform:XTextBox>
                    </td>
                    <td width="158" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        化验人姓名</td>
                    <td width="158" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox5" runat="server" XDataBind="SFDATA:proc_tests.tests_userid" BorderColor="#DCDCDC" BorderWidth="1" width="100%"></aspxform:XTextBox>
                    </td>
                    <td width="158" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        化验时间</td>
                    <td width="158" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XDateTimePicker id="XDateTimePicker1" runat="server" XDataBind="SFDATA:proc_tests.create_time" BorderColor="#DCDCDC" BorderWidth="1"></aspxform:XDateTimePicker>
                    </td>
                </tr>
                <tr>
                    <td class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        物料名称</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox3" runat="server" XDataBind="SFDATA:proc_tests.mat_name" BorderColor="#DCDCDC" BorderWidth="1" width="80%"></aspxform:XTextBox>
                        <aspxform:XDataBrowserButton id="XDataBrowserButton1" runat="server" DisplayColumns="mat_code:物料编码;mat_name:物料名称" DataMap="mat_code->SFDATA:proc_tests.mat_code;mat_name->SFDATA:proc_tests.mat_name" XDataSource="DataSource:SFDATA;TableName:ctl_material" Width="21px"></aspxform:XDataBrowserButton>
                    </td>
                    <td class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        物料编码</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox6" runat="server" XDataBind="SFDATA:proc_tests.mat_code" BorderColor="#DCDCDC" BorderWidth="1" width="100%"></aspxform:XTextBox>
                    </td>
                    <td class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        规格</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox9" runat="server" XDataBind="SFDATA:proc_tests.mat_spesc" BorderColor="#DCDCDC" BorderWidth="1" width="100%"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        供应商名称</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox4" runat="server" XDataBind="SFDATA:proc_tests.vendor_name" BorderColor="#DCDCDC" BorderWidth="1" width="80%"></aspxform:XTextBox>
                        <aspxform:XDataBrowserButton id="XDataBrowserButton2" runat="server" Width="21px"></aspxform:XDataBrowserButton>
                    </td>
                    <td class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        化验类别</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XDropDownList id="XDropDownList1" runat="server" XDataBind="SFDATA:proc_tests.tests_class" PromptText="请选择">
                            <asp:ListItem>退库化验</asp:ListItem>
                        </aspxform:XDropDownList>
                    </td>
                    <td class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        化验结果</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XDropDownList id="XDropDownList2" runat="server" PromptText="请选择">
                            <asp:ListItem Value="1">合格</asp:ListItem>
                            <asp:ListItem Value="2">不合格（让步接收）</asp:ListItem>
                            <asp:ListItem Value="3">不合格（不接受）</asp:ListItem>
                        </aspxform:XDropDownList>
                    </td>
                </tr>
                <tr>
                    <td height="34" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        备注</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none" colspan="5">
                        <aspxform:XTextBox id="XTextBox1" runat="server" XDataBind="SFDATA:proc_tests.tests_remarks" BorderColor="#DCDCDC" BorderWidth="1" width="100%" TextMode="MultiLine" Rows="5"></aspxform:XTextBox>
                    </td>
                </tr>
            </tbody>
        </table>
        <table width="960" align="center" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none" border="0" cellspacing="0" cellpadding="0" dynamicarea="2,1">
            <tbody>
                <tr>
                    <td height="34" class="xttl" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none" colspan="4">
                        化验明细</td>
                </tr>
                <tr>
                    <td width="30" height="34" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                    </td>
                    <td width="238" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        指标名称</td>
                    <td width="238" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        范围值</td>
                    <td width="238" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        检测值</td>
                </tr>
                <tr>
                    <td height="34" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XGridLineNo id="XGridLineNo1" runat="server" BorderWidth="1" Width="100%" BackColor="White" BorderStyle="None" TextAlign="Center">1</aspxform:XGridLineNo>
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox11" runat="server" XDataBind="SFDATA:proc_tests_value.index_name" BorderColor="#DCDCDC" BorderWidth="1" width="100%"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox12" runat="server" XDataBind="SFDATA:proc_tests_value.rang_value" BorderColor="#DCDCDC" BorderWidth="1" width="100%"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox13" runat="server" XDataBind="SFDATA:proc_tests_value.tests_value" BorderColor="#DCDCDC" BorderWidth="1" width="100%"></aspxform:XTextBox>
                    </td>
                </tr>
            </tbody>
        </table>
    </form>
</body>
</html>
