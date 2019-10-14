﻿<%@ Page Language="C#" %>
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
        <table width="800" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none" border="0" cellspacing="0" cellpadding="0">
            <tbody>
                <tr>
                    <td width="149" height="14" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                        列表标识</td>
                    <td width="247" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox1" runat="server" width="100%" BorderWidth="1" BorderColor="#DCDCDC" XDataBind="DevDATA:SysGrid.GridId"></aspxform:XTextBox>
                    </td>
                    <td width="149" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        列表标题</td>
                    <td width="247" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox2" runat="server" width="100%" BorderWidth="1" BorderColor="#DCDCDC" XDataBind="DevDATA:SysGrid.GridTitle"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                        数据源</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox7" runat="server" width="100%" BorderWidth="1" BorderColor="#DCDCDC" XDataBind="DevDATA:SysGrid.ServerName">SFDATA</aspxform:XTextBox>
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        模块编码</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox12" runat="server" width="100%" BorderWidth="1" BorderColor="#DCDCDC" XDataBind="DevDATA:SysGrid.ModuleCode"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                        列表指标集主键</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox6" runat="server" width="100%" BorderWidth="1" BorderColor="#DCDCDC" XDataBind="DevDATA:SysGrid.GridKeyId"></aspxform:XTextBox>
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
                        <aspxform:XTextBox id="XTextBox3" runat="server" width="100%" BorderWidth="1" BorderColor="#DCDCDC" XDataBind="DevDATA:SysGrid.Description"></aspxform:XTextBox>
                    </td>
                </tr>
            </tbody>
        </table>
        <table width="800" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none" border="0" cellspacing="0" cellpadding="0" dynamicarea="2,2" menudock="Left">
            <tbody>
                <tr>
                    <td height="20" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid" colspan="2">
                        指标集明细</td>
                    <td align="right" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XDataBrowserButton id="XDataBrowserButton1" runat="server" Width="21px" XDataSource="DataSource:DevDATA;TableName:SysSet;Filter:IsUse->varIsUse" DisplayColumns="SetId:指标集编码;SetName:指标集名称;Description:备注" DataMap="SetId->DevDATA:SysGridSet.SetId;SetName->DevDATA:SysGridSet.SetName" MultiSelect="True"></aspxform:XDataBrowserButton>
                        <aspxform:XAddBlockButton id="XAddBlockButton1" runat="server" Text="新增" DataSource="DevDATA" TableName="SysGridSet"></aspxform:XAddBlockButton>
                    </td>
                </tr>
                <tr>
                    <td width="50" height="14" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                        序号</td>
                    <td width="375" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        指标集编码</td>
                    <td width="375" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        指标集名称</td>
                </tr>
                <tr>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid" rowspan="2">
                        <aspxform:XGridLineNo id="XGridLineNo1" runat="server" BorderWidth="1" Width="100%" BackColor="Transparent" TextAlign="Center" BorderStyle="None">1</aspxform:XGridLineNo>
                    </td>
                    <td height="21" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox4" runat="server" width="220px" BorderWidth="1" BorderColor="#DCDCDC" XDataBind="DevDATA:SysGridSet.SetId" DisableExpress="1"></aspxform:XTextBox>
                        <aspxform:XDataBrowserButton id="XDataBrowserButton4" runat="server" Width="21px" XDataSource="DataSource:DevDATA;TableName:SysSet;Filter:IsUse->varIsUse" DisplayColumns="SetId:指标集编码;SetName:指标集名称;Description:备注" DataMap="SetId->DevDATA:SysGridSet.SetId;SetName->DevDATA:SysGridSet.SetName"></aspxform:XDataBrowserButton>
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox5" runat="server" width="100%" BorderWidth="1" BorderColor="#DCDCDC" XDataBind="DevDATA:SysGridSet.SetName"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td align="center" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none" colspan="2">
                        <table width="750" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none" border="0" cellspacing="0" cellpadding="0" dynamicarea="2,1" datamap="ItemId->DevDATA:SysGridItem.ItemId;ItemName->DevDATA:SysGridItem.ItemName;ItemType->DevDATA:SysGridItem.ItemType" xdatasource="DataSource:DevDATA;TableName:SysItem;Filter:SetId->DevDATA:SysGridSet.SetId,IsUse->varIsUse;OrderBy:OrderIndex">
                            <tbody>
                                <tr>
                                    <td height="21" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none" colspan="5">
                                        指标明细</td>
                                    <td align="right" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        <aspxform:XDataBrowserButton id="XDataBrowserButton2" runat="server" Width="21px" XDataSource="DataSource:DevDATA;TableName:SysItem;Filter:SetId->DevDATA:SysGridSet.SetId,IsUse->varIsUse;OrderBy:OrderIndex" DisplayColumns="ItemId:指标编码;ItemName:指标名称;ItemType:指标类型;ItemLength:长度;ItemDecimal:小数位;Description:备注" DataMap="ItemId->DevDATA:SysGridItem.ItemId;ItemName->DevDATA:SysGridItem.ItemName;ItemType->DevDATA:SysGridItem.ItemType" MultiSelect="True"></aspxform:XDataBrowserButton>
                                        <aspxform:XAddBlockButton id="XAddBlockButton2" runat="server" Text="新增" DataSource="DevDATA" TableName="SysGridItem"></aspxform:XAddBlockButton>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="50" height="14" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        序号</td>
                                    <td width="150" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        指标编码</td>
                                    <td width="200" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        指标名称</td>
                                    <td width="100" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        指标类型</td>
                                    <td width="100" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        列宽</td>
                                    <td width="150" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        显示格式</td>
                                </tr>
                                <tr>
                                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        <aspxform:XGridLineNo id="XGridLineNo2" runat="server" BorderWidth="1" Width="100%" BackColor="Transparent" TextAlign="Center" BorderStyle="None">1</aspxform:XGridLineNo>
                                    </td>
                                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        <aspxform:XTextBox id="XTextBox8" runat="server" width="120px" BorderWidth="1" BorderColor="#DCDCDC" XDataBind="DevDATA:SysGridItem.ItemId" DisableExpress="1"></aspxform:XTextBox>
                                        <aspxform:XDataBrowserButton id="XDataBrowserButton3" runat="server" Width="20px" XDataSource="DataSource:DevDATA;TableName:SysItem;Filter:SetId->DevDATA:SysGridSet.SetId,IsUse->varIsUse" DisplayColumns="ItemId:指标编码;ItemName:指标名称;ItemType:指标类型;ItemLength:长度;ItemDecimal:小数位;Description:备注" DataMap="ItemId->DevDATA:SysGridItem.ItemId;ItemName->DevDATA:SysGridItem.ItemName;ItemType->DevDATA:SysGridItem.ItemType"></aspxform:XDataBrowserButton>
                                    </td>
                                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        <aspxform:XTextBox id="XTextBox9" runat="server" width="100%" BorderWidth="1" BorderColor="#DCDCDC" XDataBind="DevDATA:SysGridItem.ItemName"></aspxform:XTextBox>
                                    </td>
                                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        <aspxform:XDropDownList id="XDropDownList1" runat="server" XDataBind="DevDATA:SysGridItem.ItemType" Width="100%" DisableExpress="1">
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
                                        <aspxform:XTextBox id="XTextBox13" runat="server" width="100%" BorderWidth="1" BorderColor="#DCDCDC" XDataBind="DevDATA:SysGridItem.DisplayWidth">100</aspxform:XTextBox>
                                    </td>
                                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        <aspxform:XDropDownList id="XDropDownList2" runat="server" XDataBind="DevDATA:SysGridItem.DisplayFormat" Width="100%" XDataSource="DataSource:DevDATA;TableName:SysFormat" ValueColumn="FormatName" DisplayColumn="FormatSample" PromptText="--请选择--"></aspxform:XDropDownList>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
            </tbody>
        </table>
        <table width="800" border="0" cellspacing="0" cellpadding="0" hiddenexpress="1">
            <tbody>
                <tr>
                    <td width="266">
                    </td>
                    <td width="267">
                    </td>
                    <td width="267">
                    </td>
                </tr>
                <tr>
                    <td>
                        是否可用</td>
                    <td>
                        <aspxform:XTextBox id="XTextBox15" runat="server" width="100%" BorderWidth="1" BorderColor="#DCDCDC" XDataBind="varIsUse">1</aspxform:XTextBox>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
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
