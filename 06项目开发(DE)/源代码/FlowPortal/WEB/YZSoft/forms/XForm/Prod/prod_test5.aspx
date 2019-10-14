<%@ Page Language="C#" %>
<%@ Register TagPrefix="aspxform" Namespace="XFormDesigner.Framework.Web.UI" Assembly="XFormDesigner.Framework" %>
<script runat="server">

    // Insert page code here
    //
    
    void XTextBox1_TextChanged(object sender, EventArgs e) {
    
    }

</script>
<html xmlns:xform="xmlns:xform">
<head runat="server">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge" />
    <title>BPM Form</title>
    <link href="../../style/FormGray.css" rel="stylesheet" />
</head>
<body>
    <form runat="server">
        <!--
$Scripts-->
        <table width="960" align="center" border="0" cellspacing="0" cellpadding="0">
            <tbody>
                <tr>
                    <td width="200">
                    </td>
                    <td width="400" align="center" class="header-td-title">
                        <strong><font size="5">溶解氧质检</font></strong> 
                    </td>
                    <td width="200" class="header-td-sn">
                    </td>
                </tr>
            </tbody>
        </table>
        <table align="center" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none" border="0" cellspacing="0" cellpadding="0">
            <tbody>
                <tr>
                    <td width="100" height="34" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                        分析日期 
                    </td>
                    <td width="214" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XDateTimePicker id="ctrlprod_test5analyze_date" runat="server" width="100%" XDataBind="SFDATA:prod_test5.analyze_date"></aspxform:XDateTimePicker>
                    </td>
                    <td width="100" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        品名 
                    </td>
                    <td width="214" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlprod_test5mat_name" runat="server" width="100%" XDataBind="SFDATA:prod_test5.mat_name"></aspxform:XTextBox>
                    </td>
                    <td width="100" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        罐号 
                    </td>
                    <td width="214" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlprod_test5tank_id" runat="server" width="100%" XDataBind="SFDATA:prod_test5.tank_id"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td height="34" class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                        清酒罐溶解氧ppb 
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlprod_test5dis_oxygen1" runat="server" width="100%" XDataBind="SFDATA:prod_test5.dis_oxygen1"></aspxform:XTextBox>
                    </td>
                    <td class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        酒机前溶解氧ppb 
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlprod_test5dis_oxygen2" runat="server" width="100%" XDataBind="SFDATA:prod_test5.dis_oxygen2"></aspxform:XTextBox>
                    </td>
                    <td class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        生酒溶解氧ppb 
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlprod_test5dis_oxygen3" runat="server" width="100%" XDataBind="SFDATA:prod_test5.dis_oxygen3"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td height="34" class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                        检验人员 
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlprod_test5operator_name" runat="server" width="100%" XDataBind="SFDATA:prod_test5.operator_name"></aspxform:XTextBox>
                    </td>
                    <td class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        备注（离心或稀释） 
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none" colspan="3">
                        <aspxform:XTextBox id="ctrlprod_test5memo" runat="server" width="100%" XDataBind="SFDATA:prod_test5.memo" Max="0" Min="0" PlaceHolder HiddenInput="False" ValueToDisplayText></aspxform:XTextBox>
                    </td>
                </tr>
            </tbody>
        </table>
        <br />
        <table width="800" align="center" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none" border="0" cellspacing="0" cellpadding="0" hiddenexpress="1">
            <tbody>
                <tr>
                    <td width="100" height="25" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                        部门名称 
                    </td>
                    <td style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlprod_test5DeptName" runat="server" width="100%" XDataBind="SFDATA:prod_test5.DeptName"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td width="100" height="25" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                        公司编码 
                    </td>
                    <td style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlprod_test5Company" runat="server" width="100%" XDataBind="SFDATA:prod_test5.Company"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td width="100" height="25" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                        公司名称 
                    </td>
                    <td style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlprod_test5CompanyName" runat="server" width="100%" XDataBind="SFDATA:prod_test5.CompanyName"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td width="100" height="25" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                        组织id 
                    </td>
                    <td style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlprod_test5org_id" runat="server" width="100%" XDataBind="SFDATA:prod_test5.org_id"></aspxform:XTextBox>
                    </td>
                </tr>
            </tbody>
        </table>
    </form>
</body>
</html>
