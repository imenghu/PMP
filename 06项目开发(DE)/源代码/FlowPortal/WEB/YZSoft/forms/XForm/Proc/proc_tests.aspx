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
                        物料名称</td>
                    <td width="158" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox2" runat="server" BorderColor="#DCDCDC" BorderWidth="1" width="100%" XDataBind="SFDATA:proc_tests.mat_name"></aspxform:XTextBox>
                    </td>
                    <td width="158" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        化验结果</td>
                    <td width="158" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox3" runat="server" BorderColor="#DCDCDC" BorderWidth="1" width="100%" XDataBind="SFDATA:proc_tests.tests_result"></aspxform:XTextBox>
                    </td>
                    <td width="158" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        化验人</td>
                    <td width="158" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox4" runat="server" BorderColor="#DCDCDC" BorderWidth="1" width="100%" XDataBind="SFDATA:proc_tests.tests_userid"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td height="34" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        备注</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none" colspan="5">
                        <aspxform:XTextBox id="XTextBox1" runat="server" BorderColor="#DCDCDC" BorderWidth="1" width="100%" XDataBind="SFDATA:proc_tests.tests_remarks" TextMode="MultiLine" Rows="5"></aspxform:XTextBox>
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
                        <aspxform:XGridLineNo id="XGridLineNo1" runat="server" BorderWidth="1" Width="100%" BorderStyle="None" TextAlign="Center" BackColor="White">1</aspxform:XGridLineNo>
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox5" runat="server" BorderColor="#DCDCDC" BorderWidth="1" width="100%" XDataBind="SFDATA:proc_tests_value.index_name"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox6" runat="server" BorderColor="#DCDCDC" BorderWidth="1" width="100%" XDataBind="SFDATA:proc_tests_value.rang_value"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox7" runat="server" BorderColor="#DCDCDC" BorderWidth="1" width="100%" XDataBind="SFDATA:proc_tests_value.tests_value"></aspxform:XTextBox>
                    </td>
                </tr>
            </tbody>
        </table>
        <br />
        <table width="960" align="center" border="0" cellspacing="0" cellpadding="0" hiddenexpress="1">
            <tbody>
                <tr>
                    <td width="133">
                        化验情况</td>
                    <td width="133">
                        <aspxform:XTextBox id="XTextBox8" runat="server" BorderColor="#DCDCDC" BorderWidth="1" width="100%" XDataBind="SFDATA:proc_tests.test_happen">已化验</aspxform:XTextBox>
                    </td>
                    <td width="134">
                    </td>
                    <td width="133">
                    </td>
                    <td width="133">
                    </td>
                    <td width="134">
                    </td>
                </tr>
            </tbody>
        </table>
    </form>
</body>
</html>
