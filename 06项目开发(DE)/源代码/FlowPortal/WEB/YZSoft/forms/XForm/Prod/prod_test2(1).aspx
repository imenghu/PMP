<%@ Page Language="C#" %>
<%@ Register TagPrefix="aspxform" Namespace="XFormDesigner.Framework.Web.UI" Assembly="XFormDesigner.Framework" %>
<script runat="server">

    // Insert page code here
    //

</script>
<html xmlns:XForm="xmlns:xform">
<head runat="server">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge" />
    <title>BPM Form</title>
    <style>
    BODY {FONT-SIZE: 12px; FONT-FAMILY: verdana}
    TABLE {border-collapse: collapse; FONT-SIZE: 12px; FONT-FAMILY: verdana}
    P {PADDING-RIGHT: 0px; PADDING-LEFT: 0px; PADDING-BOTTOM: 0px; MARGIN: 0px; PADDING-TOP: 0px; FONT-SIZE: 12px; FONT-FAMILY: verdana}
    TD {padding:1px}
    TD.NoPadding {PADDING-RIGHT: 0px; PADDING-LEFT: 0px; PADDING-BOTTOM: 0px; PADDING-TOP: 0px}
    /*INPUT {height: 15px}*/
    INPUT.UL {BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #33ff33 1px solid}
    TEXTAREA {FONT-SIZE:12px}
    input {vertical-align:middle;/*margin-right:-3px*/}
    </style>
</head>
<body>
    <form runat="server">
        <!-- Insert content here -->
        <table width="960" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none" border="0" cellspacing="0" cellpadding="0">
            <tbody>
                <tr>
                    <td height="14" align="center" colspan="6">
                        清酒质检</td>
                </tr>
                <tr>
                    <td width="130" height="20" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                        公司</td>
                    <td width="129" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox1" runat="server" XDataBind="SFDATA:prod_test2.CompanyName" width="100%" BorderWidth="1" BorderColor="#DCDCDC"></aspxform:XTextBox>
                    </td>
                    <td width="132" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        部门</td>
                    <td width="133" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox2" runat="server" XDataBind="SFDATA:prod_test2.DeptName" width="100%" BorderWidth="1" BorderColor="#DCDCDC"></aspxform:XTextBox>
                    </td>
                    <td width="130" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        取样日期</td>
                    <td width="134" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XDateTimePicker id="XDateTimePicker2" runat="server" XDataBind="SFDATA:prod_test2.sample_date" BorderWidth="1" BorderColor="#DCDCDC"></aspxform:XDateTimePicker>
                    </td>
                </tr>
                <tr>
                    <td height="20" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                        品名名称</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox4" runat="server" XDataBind="SFDATA:prod_test2.mat_name" width="80%" BorderWidth="1" BorderColor="#DCDCDC"></aspxform:XTextBox>
                        <aspxform:XDataBrowserButton id="XDataBrowserButton1" runat="server" Width="21px"></aspxform:XDataBrowserButton>
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        灌号</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox5" runat="server" XDataBind="SFDATA:prod_test2.tank_id" width="100%" BorderWidth="1" BorderColor="#DCDCDC"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        原麦汁浓度°P</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox3" runat="server" XDataBind="SFDATA:prod_test2.wort_concent" width="100%" BorderWidth="1" BorderColor="#DCDCDC"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td height="20" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                        酒精%(w/w)</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox8" runat="server" XDataBind="SFDATA:prod_test2.alcohol" width="100%" BorderWidth="1" BorderColor="#DCDCDC"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        真正发酵度%</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox7" runat="server" XDataBind="SFDATA:prod_test2.real_ferment" width="100%" BorderWidth="1" BorderColor="#DCDCDC"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        真正浓度%(m/m)</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox6" runat="server" XDataBind="SFDATA:prod_test2.true_concent" width="100%" BorderWidth="1" BorderColor="#DCDCDC"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td height="20" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                        溶解氧ppb</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox9" runat="server" XDataBind="SFDATA:prod_test2.dis_oxygen" width="100%" BorderWidth="1" BorderColor="#DCDCDC"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        总酸ml/100ml</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox10" runat="server" XDataBind="SFDATA:prod_test2.total_acid" width="100%" BorderWidth="1" BorderColor="#DCDCDC"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        浊度EBC</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox11" runat="server" XDataBind="SFDATA:prod_test2.turbidity_ebc" width="100%" BorderWidth="1" BorderColor="#DCDCDC"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td height="20" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                        色度EBC</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox13" runat="server" XDataBind="SFDATA:prod_test2.chroma_ebc" width="100%" BorderWidth="1" BorderColor="#DCDCDC"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        PH值</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox12" runat="server" XDataBind="SFDATA:prod_test2.ph" width="100%" BorderWidth="1" BorderColor="#DCDCDC"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        co2</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox16" runat="server" XDataBind="SFDATA:prod_test2.co2" width="100%" BorderWidth="1" BorderColor="#DCDCDC"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td height="20" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                        备注</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none" colspan="5">
                        <aspxform:XTextBox id="XTextBox14" runat="server" XDataBind="SFDATA:prod_test2.memo" width="100%" BorderWidth="1" BorderColor="#DCDCDC" TextMode="MultiLine"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td height="20" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                        检验人员</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox15" runat="server" XDataBind="SFDATA:prod_test2.operator_name" width="100%" BorderWidth="1" BorderColor="#DCDCDC"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        录入日期</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XDateTimePicker id="XDateTimePicker1" runat="server" XDataBind="SFDATA:prod_test2.analyze_date" BorderWidth="1" BorderColor="#DCDCDC"></aspxform:XDateTimePicker>
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                    </td>
                </tr>
            </tbody>
        </table>
    </form>
</body>
</html>
