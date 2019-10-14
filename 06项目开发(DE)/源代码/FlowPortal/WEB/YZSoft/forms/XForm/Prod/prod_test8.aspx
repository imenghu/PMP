<%@ Page Language="C#" %>
<%@ Register TagPrefix="aspxform" Namespace="XFormDesigner.Framework.Web.UI" Assembly="XFormDesigner.Framework" %>
<script runat="server">

    // Insert page code here
    //

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
                        <strong><font size="5">麦芽质检</font></strong> 
                    </td>
                    <td width="200" class="header-td-sn">
                    </td>
                </tr>
            </tbody>
        </table>
        <table width="960" align="center" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none" border="0" cellspacing="0" cellpadding="0">
            <tbody>
                <tr>
                    <td width="100" height="34" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                        分析日期 
                    </td>
                    <td width="214" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XDateTimePicker id="ctrlprod_test8analyze_date" runat="server" width="100%" XDataBind="SFDATA:prod_test8.analyze_date" FieldName="分析日期"></aspxform:XDateTimePicker>
                    </td>
                    <td width="100" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        品名名称 
                    </td>
                    <td width="214" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlprod_test8mat_name" runat="server" width="100%" XDataBind="SFDATA:prod_test8.mat_name" FieldName="品名名称"></aspxform:XTextBox>
                    </td>
                    <td width="100" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        夹杂物 % 
                    </td>
                    <td width="214" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlprod_test8impurity" runat="server" width="100%" XDataBind="SFDATA:prod_test8.impurity" FieldName="夹杂物 %"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td height="34" class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                        水份 % 
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlprod_test8moisture" runat="server" width="100%" XDataBind="SFDATA:prod_test8.moisture" FieldName="水份 %"></aspxform:XTextBox>
                    </td>
                    <td class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        无水浸出率 % 
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlprod_test8leach_rate" runat="server" width="100%" XDataBind="SFDATA:prod_test8.leach_rate" FieldName="无水浸出率 %"></aspxform:XTextBox>
                    </td>
                    <td class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        糖化时间/分 
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlprod_test8sac_time" runat="server" width="100%" XDataBind="SFDATA:prod_test8.sac_time" FieldName="糖化时间/分"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td height="34" class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                        糖化酵素力 WK 
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlprod_test8sac_WK" runat="server" width="100%" XDataBind="SFDATA:prod_test8.sac_WK" FieldName="糖化酵素力 WK"></aspxform:XTextBox>
                    </td>
                    <td class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        α－氨基氮 mg/L 
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlprod_test8a_nitrogen" runat="server" width="100%" XDataBind="SFDATA:prod_test8.a_nitrogen" FieldName="α－氨基氮 mg/L"></aspxform:XTextBox>
                    </td>
                    <td class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        总酸ml/100ml 
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlprod_test8total_acid" runat="server" width="100%" XDataBind="SFDATA:prod_test8.total_acid" FieldName="总酸ml/100ml"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td height="34" class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                        发芽率% 
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlprod_test8sprout" runat="server" width="100%" XDataBind="SFDATA:prod_test8.sprout" FieldName="发芽率%"></aspxform:XTextBox>
                    </td>
                    <td class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        粉状粒% 
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlprod_test8powdery" runat="server" width="100%" XDataBind="SFDATA:prod_test8.powdery" FieldName="粉状粒%"></aspxform:XTextBox>
                    </td>
                    <td class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        色度 EBC 
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlprod_test8chroma_ebc" runat="server" width="100%" XDataBind="SFDATA:prod_test8.chroma_ebc" FieldName="色度 EBC"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td height="34" class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                        煮沸色度 EBC 
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlprod_test8chroma_ebc_boil" runat="server" width="100%" XDataBind="SFDATA:prod_test8.chroma_ebc_boil" FieldName="煮沸色度 EBC"></aspxform:XTextBox>
                    </td>
                    <td class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        PH值 
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlprod_test8ph" runat="server" width="100%" XDataBind="SFDATA:prod_test8.ph" FieldName="PH值"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                    </td>
                </tr>
                <tr>
                    <td height="34" class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                        备注 
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none" colspan="5">
                        <aspxform:XTextBox id="ctrlprod_test8memo" runat="server" width="100%" XDataBind="SFDATA:prod_test8.memo" FieldName="备注"></aspxform:XTextBox>
                    </td>
                </tr>
            </tbody>
        </table>
        <br />
        <table width="800" align="center" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none" border="0" cellspacing="0" cellpadding="0" hiddenexpress="1">
            <tbody>
                <tr>
                    <td width="100" height="25" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                        组织id 
                    </td>
                    <td style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlprod_test8org_id" runat="server" width="100%" XDataBind="SFDATA:prod_test8.org_id" FieldName="组织id"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td width="100" height="25" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                        部门名称 
                    </td>
                    <td style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlprod_test8DeptName" runat="server" width="100%" XDataBind="SFDATA:prod_test8.DeptName" FieldName="部门名称"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td width="100" height="25" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                        公司编码 
                    </td>
                    <td style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlprod_test8Company" runat="server" width="100%" XDataBind="SFDATA:prod_test8.Company" FieldName="公司编码"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td width="100" height="25" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                        公司名称 
                    </td>
                    <td style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlprod_test8CompanyName" runat="server" width="100%" XDataBind="SFDATA:prod_test8.CompanyName" FieldName="公司名称"></aspxform:XTextBox>
                    </td>
                </tr>
            </tbody>
        </table>
    </form>
</body>
</html>
