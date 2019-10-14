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
        <table width="800" align="left" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none" border="0" cellspacing="0" cellpadding="0">
            <tbody>
                <tr>
                    <td width="150" height="16" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                        指标集编码</td>
                    <td width="250" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox2" runat="server" XDataBind="DevDATA:SysSet.SetId" width="100%" BorderWidth="1" BorderColor="#DCDCDC"></aspxform:XTextBox>
                    </td>
                    <td width="150" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        指标集名称</td>
                    <td width="250" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox3" runat="server" XDataBind="DevDATA:SysSet.SetName" width="100%" BorderWidth="1" BorderColor="#DCDCDC"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                        是否可用</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XCheckBox id="XCheckBox1" runat="server" XDataBind="DevDATA:SysSet.IsUse" Checked="True"></aspxform:XCheckBox>
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                    </td>
                </tr>
                <tr>
                    <td height="14" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                        备注</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none" colspan="3">
                        <aspxform:XTextBox id="XTextBox11" runat="server" XDataBind="DevDATA:SysSet.Description" width="100%" BorderWidth="1" BorderColor="#DCDCDC"></aspxform:XTextBox>
                    </td>
                </tr>
            </tbody>
        </table>
        <table width="800" align="left" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none" border="0" cellspacing="0" cellpadding="0" dynamicarea="2,1">
            <tbody>
                <tr>
                    <td height="20" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid" colspan="6">
                        指标明细</td>
                    <td align="right" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none" colspan="2">
                        <aspxform:XExcelDataImportButton id="XExcelDataImportButton3" runat="server" XClass="YZSoft.Forms.Field.ExcelDataImportButton" DataMap="A->DevDATA:SysItem.ItemId;B->DevDATA:SysItem.ItemName;C->DevDATA:SysItem.ItemType;D->DevDATA:SysItem.ItemLength;E->DevDATA:SysItem.ItemDecimal;F->DevDATA:SysItem.Description" ColumnCount="6" UseSubmitBehavior="False" PopupWndHeight="-1" PopupWndWidth="-1" text="Excel导入" Width="71px"></aspxform:XExcelDataImportButton>
                        <aspxform:XExcelDataImportButton id="XExcelDataImportButton1" runat="server" XClass="YZSoft.Forms.Field.ExcelDataImportButton" UseSubmitBehavior="False" PopupWndHeight="-1" PopupWndWidth="-1" text="Excel导出" Width="71px"></aspxform:XExcelDataImportButton>
                    </td>
                </tr>
                <tr>
                    <td width="80" height="13" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                        显示顺序</td>
                    <td width="100" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        指标编码</td>
                    <td width="120" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        指标名称</td>
                    <td width="120" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        指标类型</td>
                    <td width="80" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        长度</td>
                    <td width="80" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        小数位</td>
                    <td width="140" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        备注</td>
                    <td width="80" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        是否可用</td>
                </tr>
                <tr>
                    <td height="21" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                        <aspxform:XGridLineNo id="XGridLineNo1" runat="server" BorderWidth="1" Width="100%" BackColor="Transparent" TextAlign="Center" BorderStyle="None">1</aspxform:XGridLineNo>
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox4" runat="server" XDataBind="DevDATA:SysItem.ItemId" width="100%" BorderWidth="1" BorderColor="#DCDCDC"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox5" runat="server" XDataBind="DevDATA:SysItem.ItemName" width="100%" BorderWidth="1" BorderColor="#DCDCDC"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XDropDownList id="XDropDownList1" runat="server" XDataBind="DevDATA:SysItem.ItemType" Width="100%">
                            <asp:ListItem>bit</asp:ListItem>
                            <asp:ListItem>char</asp:ListItem>
                            <asp:ListItem>date</asp:ListItem>
                            <asp:ListItem>datetime</asp:ListItem>
                            <asp:ListItem>decimal</asp:ListItem>
                            <asp:ListItem>int</asp:ListItem>
                            <asp:ListItem Selected="True">nvarchar</asp:ListItem>
                            <asp:ListItem>text</asp:ListItem>
                            <asp:ListItem>varchar</asp:ListItem>
                        </aspxform:XDropDownList>
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox7" runat="server" XDataBind="DevDATA:SysItem.ItemLength" width="100%" BorderWidth="1" BorderColor="#DCDCDC" TextMode="Number">50</aspxform:XTextBox>
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox8" runat="server" XDataBind="DevDATA:SysItem.ItemDecimal" width="100%" BorderWidth="1" BorderColor="#DCDCDC" TextMode="Number">0</aspxform:XTextBox>
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox9" runat="server" XDataBind="DevDATA:SysItem.Description" width="100%" BorderWidth="1" BorderColor="#DCDCDC"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XCheckBox id="XCheckBox2" runat="server" XDataBind="DevDATA:SysItem.IsUse" Checked="True"></aspxform:XCheckBox>
                    </td>
                </tr>
            </tbody>
        </table>
    </form>
</body>
</html>
