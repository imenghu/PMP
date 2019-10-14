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
    <script>
        function getCtrlName(varType){
            var ctrlName='';
            switch(varType){
                case 'int':
                    ctrlName='XTextBox';
                case 'char':
                    ctrlName='XTextBox';
                case 'int':
                    ctrlName='XTextBox';
                case 'varchar':
                    ctrlName='XTextBox';
                case 'nvarchar':
                    ctrlName='XTextBox';
                case 'text':
                    ctrlName='XTextBox';
                    break;
                case 'date':
                    ctrlName='XDateTimePicker';
                case 'datetime':
                    ctrlName='XDateTimePicker';
                    break
                case 'bit':
                    ctrlName='XCheckBox';
                    break;
            }
            return ctrlName;
        }
    </script>
</head>
<body>
    <form runat="server">
        <!-- Insert content here -->
        <table width="1000" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none" border="0" cellspacing="0" cellpadding="0">
            <tbody>
                <tr>
                    <td width="149" height="14" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                        表单名称</td>
                    <td width="247" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox1" runat="server" width="100%" BorderWidth="1" BorderColor="#DCDCDC" XDataBind="DevDATA:SysForm.FormName"></aspxform:XTextBox>
                    </td>
                    <td width="149" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        表单标题</td>
                    <td width="247" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox2" runat="server" width="100%" BorderWidth="1" BorderColor="#DCDCDC" XDataBind="DevDATA:SysForm.FormTitle"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                        数据源</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox7" runat="server" width="100%" BorderWidth="1" BorderColor="#DCDCDC" XDataBind="DevDATA:SysForm.ServerName">SFDATA</aspxform:XTextBox>
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
                        <aspxform:XTextBox id="XTextBox3" runat="server" width="100%" BorderWidth="1" BorderColor="#DCDCDC" XDataBind="DevDATA:SysForm.Description"></aspxform:XTextBox>
                    </td>
                </tr>
            </tbody>
        </table>
        <table width="1000" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none" border="0" cellspacing="0" cellpadding="0" dynamicarea="2,2" menudock="Left">
            <tbody>
                <tr>
                    <td height="14" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid" colspan="4">
                        指标集明细</td>
                    <td align="right" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XDataBrowserButton id="XDataBrowserButton1" runat="server" Width="21px" XDataSource="DataSource:DevDATA;TableName:SysSet;Filter:IsUse->varIsUse" DisplayColumns="SetId:指标集编码;SetName:指标集名称;Description:备注" DataMap="SetId->DevDATA:SysFormSet.SetId;SetName->DevDATA:SysFormSet.SetName" MultiSelect="True"></aspxform:XDataBrowserButton>
                        <aspxform:XAddBlockButton id="XAddBlockButton1" runat="server" Text="新增" DataSource="DevDATA" TableName="SysFormSet"></aspxform:XAddBlockButton>
                    </td>
                </tr>
                <tr>
                    <td width="50" height="14" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                        序号</td>
                    <td width="300" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        指标集编码</td>
                    <td width="250" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        指标集名称</td>
                    <td width="200" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        是否可重复</td>
                    <td width="200" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        是否显示名称</td>
                </tr>
                <tr>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid" rowspan="2">
                        <aspxform:XGridLineNo id="XGridLineNo1" runat="server" BorderWidth="1" Width="100%" BackColor="Transparent" TextAlign="Center" BorderStyle="None">1</aspxform:XGridLineNo>
                    </td>
                    <td height="21" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox4" runat="server" width="220px" BorderWidth="1" BorderColor="#DCDCDC" XDataBind="DevDATA:SysFormSet.SetId" DisableExpress="1"></aspxform:XTextBox>
                        <aspxform:XDataBrowserButton id="XDataBrowserButton4" runat="server" Width="21px" XDataSource="DataSource:DevDATA;TableName:SysSet;Filter:IsUse->varIsUse" DisplayColumns="SetId:指标集编码;SetName:指标集名称;Description:备注" DataMap="SetId->DevDATA:SysFormSet.SetId;SetName->DevDATA:SysFormSet.SetName"></aspxform:XDataBrowserButton>
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox5" runat="server" width="100%" BorderWidth="1" BorderColor="#DCDCDC" XDataBind="DevDATA:SysFormSet.SetName"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XCheckBox id="XCheckBox1" runat="server" XDataBind="DevDATA:SysFormSet.IsRepeatable"></aspxform:XCheckBox>
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XCheckBox id="XCheckBox2" runat="server" XDataBind="DevDATA:SysFormSet.IsShowHeader"></aspxform:XCheckBox>
                    </td>
                </tr>
                <tr>
                    <td height="14" align="center" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none" colspan="4">
                        <table width="100%" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none" border="0" cellspacing="0" cellpadding="0" dynamicarea="2,1" datamap="SetId->DevDATA:SysFormItem.SetId;ItemId->DevDATA:SysFormItem.ItemId;ItemName->DevDATA:SysFormItem.ItemName;ItemType->DevDATA:SysFormItem.ItemType;ItemLength->DevDATA:SysFormItem.ItemLength;ItemDecimal->DevDATA:SysFormItem.ItemDecimal" xdatasource="DataSource:DevDATA;TableName:SysItem;Filter:SetId->DevDATA:SysFormSet.SetId,IsUse->varIsUse;OrderBy:DisplayOrder">
                            <tbody>
                                <tr>
                                    <td height="21" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none" colspan="10">
                                        指标明细</td>
                                    <td align="right" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        <aspxform:XDataBrowserButton id="XDataBrowserButton2" runat="server" Width="21px" XDataSource="DataSource:DevDATA;TableName:SysItem;Filter:SetId->DevDATA:SysFormSet.SetId,IsUse->varIsUse;OrderBy:DisplayOrder" DisplayColumns="ItemId:指标编码;ItemName:指标名称;ItemType:指标类型;ItemLength:长度;ItemDecimal:小数位;Description:备注" DataMap="SetId->DevDATA:SysFormItem.SetId;ItemId->DevDATA:SysFormItem.ItemId;ItemName->DevDATA:SysFormItem.ItemName;ItemType->DevDATA:SysFormItem.ItemType;ItemLength->DevDATA:SysFormItem.ItemLength;ItemDecimal->DevDATA:SysFormItem.ItemDecimal" MultiSelect="True"></aspxform:XDataBrowserButton>
                                        <aspxform:XAddBlockButton id="XAddBlockButton2" runat="server" Text="新增" DataSource="DevDATA" TableName="SysFormItem"></aspxform:XAddBlockButton>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="50" height="14" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        序号</td>
                                    <td width="150" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        指标编码</td>
                                    <td width="150" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        指标名称</td>
                                    <td width="80" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        指标类型</td>
                                    <td width="50" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        长度</td>
                                    <td width="50" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        小数位</td>
                                    <td width="80" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        是否显示名称</td>
                                    <td width="50" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        列宽</td>
                                    <td width="100" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        是否显示</td>
                                    <td width="80" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        是否临时变量</td>
                                    <td width="140" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        控件名称</td>
                                </tr>
                                <tr>
                                    <td height="14" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        <aspxform:XGridLineNo id="XGridLineNo2" runat="server" BorderWidth="1" Width="100%" BackColor="Transparent" TextAlign="Center" BorderStyle="None">1</aspxform:XGridLineNo>
                                    </td>
                                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        <aspxform:XTextBox id="XTextBox8" runat="server" width="120px" BorderWidth="1" BorderColor="#DCDCDC" XDataBind="DevDATA:SysFormItem.ItemId" DisableExpress="1"></aspxform:XTextBox>
                                        <aspxform:XDataBrowserButton id="XDataBrowserButton3" runat="server" Width="20px" XDataSource="DataSource:DevDATA;TableName:SysItem;Filter:SetId->DevDATA:SysFormSet.SetId,IsUse->varIsUse;OrderBy:DisplayOrder" DisplayColumns="ItemId:指标编码;ItemName:指标名称;ItemType:指标类型;ItemLength:长度;ItemDecimal:小数位;Description:备注" DataMap="SetId->DevDATA:SysFormItem.SetId;ItemId->DevDATA:SysFormItem.ItemId;ItemName->DevDATA:SysFormItem.ItemName;ItemType->DevDATA:SysFormItem.ItemType;ItemLength->DevDATA:SysFormItem.ItemLength;ItemDecimal->DevDATA:SysFormItem.ItemDecimal"></aspxform:XDataBrowserButton>
                                        <aspxform:XTextBox id="XTextBox16" runat="server" width="100%" BorderWidth="1" BorderColor="#DCDCDC" XDataBind="DevDATA:SysFormItem.SetId" DisableExpress="1" HiddenExpress="1"></aspxform:XTextBox>
                                    </td>
                                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        <aspxform:XTextBox id="XTextBox9" runat="server" width="100%" BorderWidth="1" BorderColor="#DCDCDC" XDataBind="DevDATA:SysFormItem.ItemName"></aspxform:XTextBox>
                                    </td>
                                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        <aspxform:XDropDownList id="XDropDownList1" runat="server" XDataBind="DevDATA:SysFormItem.ItemType" Width="100%" DisableExpress="1">
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
                                        <aspxform:XTextBox id="XTextBox10" runat="server" width="100%" BorderWidth="1" BorderColor="#DCDCDC" XDataBind="DevDATA:SysFormItem.ItemLength" DisableExpress="1"></aspxform:XTextBox>
                                    </td>
                                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        <aspxform:XTextBox id="XTextBox11" runat="server" width="100%" BorderWidth="1" BorderColor="#DCDCDC" XDataBind="DevDATA:SysFormItem.ItemDecimal" DisableExpress="1"></aspxform:XTextBox>
                                    </td>
                                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        <aspxform:XCheckBox id="XCheckBox3" runat="server" XDataBind="DevDATA:SysFormItem.IsShowLabel" Width="50px" Checked="True"></aspxform:XCheckBox>
                                    </td>
                                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        <aspxform:XTextBox id="XTextBox13" runat="server" width="100%" BorderWidth="1" BorderColor="#DCDCDC" XDataBind="DevDATA:SysFormItem.Width">100</aspxform:XTextBox>
                                    </td>
                                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        <aspxform:XCheckBox id="XCheckBox4" runat="server" XDataBind="DevDATA:SysFormItem.IsShow" Width="50px" Checked="True"></aspxform:XCheckBox>
                                    </td>
                                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        <aspxform:XCheckBox id="XCheckBox5" runat="server" XDataBind="DevDATA:SysFormItem.IsTmp" Width="50px"></aspxform:XCheckBox>
                                    </td>
                                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        <aspxform:XDropDownList id="XDropDownList2" runat="server" XDataBind="DevDATA:SysFormItem.CtrlName" Width="100%" XDataSource="DataSource:DevDATA;TableName:SysControl;Filter:CtrlType->varInput" ValueColumn="CtrlName" DisplayColumn="CtrlDescription" PromptText="--请选择--" Express="javascript('getCtrlName',DevDATA:SysFormItem.ItemType)"></aspxform:XDropDownList>
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
                        输入控件</td>
                    <td>
                        <aspxform:XTextBox id="XTextBox14" runat="server" width="100%" BorderWidth="1" BorderColor="#DCDCDC" XDataBind="varInput">input</aspxform:XTextBox>
                    </td>
                    <td>
                    </td>
                </tr>
            </tbody>
        </table>
    </form>
</body>
</html>
