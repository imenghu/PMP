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
                        <strong><font size="5">押金明细</font></strong> 
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
                        押金日期 
                    </td>
                    <td width="197" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XDateTimePicker id="ctrlSal_deposit_recorddeposit_date" runat="server" width="100%" XDataBind="SFDATA:Sal_deposit_record.deposit_date"></aspxform:XDateTimePicker>
                    </td>
                    <td width="97" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        录入日期 
                    </td>
                    <td width="177" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XDateTimePicker id="ctrlSal_deposit_recordinsert_date" runat="server" width="100%" XDataBind="SFDATA:Sal_deposit_record.insert_date"></aspxform:XDateTimePicker>
                    </td>
                    <td width="100" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        财务名称 
                    </td>
                    <td width="271" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlSal_deposit_recordfinance_name" runat="server" width="220px" XDataBind="SFDATA:Sal_deposit_record.finance_name"></aspxform:XTextBox>
                        <aspxform:XDataBrowserButton id="XDataBrowserButton1" runat="server" DataMap="finance_name->SFDATA:Sal_deposit_record.finance_name" DisplayColumns="finance_name:财务名称;finance_company:公司" Width="21px" XDataSource="DataSource:SFDATA;TableName:sal_finance"></aspxform:XDataBrowserButton>
                    </td>
                </tr>
                <tr>
                    <td height="34" class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                        经销商</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlSal_deposit_recordpayment_account" runat="server" width="168px" XDataBind="SFDATA:Sal_deposit_record.payment_account" Max="0" Min="0" DisableExpress="1" PlaceHolder HiddenInput="False" ValueToDisplayText></aspxform:XTextBox>
                        <aspxform:XDataBrowserButton id="XDataBrowserButton3" runat="server" XClass="YZSoft.Forms.Field.DataBrowserButton" DataMap="customer_code->SFDATA:Sal_deposit_record.customer_code;area->SFDATA:Sal_deposit_record.name;payment_account->SFDATA:Sal_deposit_record.payment_account;customer_name->SFDATA:Sal_deposit_record.customer_name" DisplayColumns="area:销售大区;customer_name:收货人;phone_number:收货手机号;receiving_address:收货地址" Width="21px" XDataSource="DataSource:SFDATA;TableName:sal_customer" Text="..." UseSubmitBehavior="False" PopupWndHeight="-1" PopupWndWidth="-1"></aspxform:XDataBrowserButton>
                    </td>
                    <td class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        对方单位</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlSal_deposit_recordcustomer_name" runat="server" width="100%" XDataBind="SFDATA:Sal_deposit_record.customer_name" DisableExpress="1"></aspxform:XTextBox>
                    </td>
                    <td class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        销售大区 
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlSal_deposit_recordname" runat="server" width="100%" XDataBind="SFDATA:Sal_deposit_record.name" DisableExpress="1"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td height="34" class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                        发货仓库名称 
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlSal_deposit_recorddepot_name" runat="server" width="164px" XDataBind="SFDATA:Sal_deposit_record.depot_name" Max="0" Min="0" PlaceHolder HiddenInput="False" ValueToDisplayText></aspxform:XTextBox>
                        <aspxform:XDataBrowserButton id="XDataBrowserButton2" runat="server" DataMap="depot_name->SFDATA:Sal_deposit_record.depot_name" DisplayColumns="depot_name:仓库名称" Width="21px" XDataSource="DataSource:SFDATA;TableName:ctl_depot;Filter:state->1"></aspxform:XDataBrowserButton>
                    </td>
                    <td class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        金额 
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlSal_deposit_recorddeposit_money" runat="server" width="100%" XDataBind="SFDATA:Sal_deposit_record.deposit_money"></aspxform:XTextBox>
                    </td>
                    <td class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        保证金增加减少 
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XDropDownList id="XDropDownList1" runat="server" XDataBind="SFDATA:Sal_deposit_record.deposit_flag" Width="100%" XDataSource PromptText="--请选择--">
                            <asp:ListItem Value="1">增加</asp:ListItem>
                            <asp:ListItem Value="0">减少</asp:ListItem>
                        </aspxform:XDropDownList>
                    </td>
                </tr>
                <tr>
                    <td height="34" class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                        摘要 
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none" colspan="5">
                        <aspxform:XTextBox id="ctrlSal_deposit_recordsummary" runat="server" width="100%" XDataBind="SFDATA:Sal_deposit_record.summary" TextMode="MultiLine"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td height="34" class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                        备注 
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none" colspan="5">
                        <aspxform:XTextBox id="ctrlSal_deposit_recordremark" runat="server" width="100%" XDataBind="SFDATA:Sal_deposit_record.remark" TextMode="MultiLine"></aspxform:XTextBox>
                    </td>
                </tr>
            </tbody>
        </table>
        <br />
        <table width="800" align="center" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none" border="0" cellspacing="0" cellpadding="0" hiddenexpress="1">
            <tbody>
                <tr>
                    <td width="100" height="25" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                        客户编号 
                    </td>
                    <td style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlSal_deposit_recordcustomer_code" runat="server" width="100%" XDataBind="SFDATA:Sal_deposit_record.customer_code"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td width="100" height="25" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                        期初余额 
                    </td>
                    <td style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlSal_deposit_recorddeposit_initial_balance" runat="server" width="100%" XDataBind="SFDATA:Sal_deposit_record.deposit_initial_balance"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td width="100" height="25" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                        期末余额 
                    </td>
                    <td style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlSal_deposit_recorddeposit_final_balance" runat="server" width="100%" XDataBind="SFDATA:Sal_deposit_record.deposit_final_balance"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td width="100" height="25" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                        发货仓库主键 
                    </td>
                    <td style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlSal_deposit_recorddepot_id" runat="server" width="100%" XDataBind="SFDATA:Sal_deposit_record.depot_id"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td width="100" height="25" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                        财务 
                    </td>
                    <td style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlSal_deposit_recordfinance_id" runat="server" width="100%" XDataBind="SFDATA:Sal_deposit_record.finance_id"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator1" runat="server" Display="None" ForeColor="Red" ErrorMessage="请选择押金日期" ControlToValidate="ctrlSal_deposit_recorddeposit_date">押金日期</aspxform:XRequiredFieldValidator>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td>
                        <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator2" runat="server" Display="None" ForeColor="Red" ErrorMessage="请选择录入日期" ControlToValidate="ctrlSal_deposit_recordinsert_date">录入日期</aspxform:XRequiredFieldValidator>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td>
                        <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator3" runat="server" Display="None" ForeColor="Red" ErrorMessage="请选择财务名称" ControlToValidate="ctrlSal_deposit_recordfinance_name">财务名称</aspxform:XRequiredFieldValidator>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td>
                        <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator4" runat="server" Display="None" ForeColor="Red" ErrorMessage="请选择经销商" ControlToValidate="ctrlSal_deposit_recordpayment_account">经销商</aspxform:XRequiredFieldValidator>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td>
                        <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator5" runat="server" Display="None" ForeColor="Red" ErrorMessage="请选择发货仓库名称" ControlToValidate="ctrlSal_deposit_recorddepot_name">发货仓库名称</aspxform:XRequiredFieldValidator>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td>
                        <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator6" runat="server" Display="None" ForeColor="Red" ErrorMessage="请填写金额" ControlToValidate="ctrlSal_deposit_recorddeposit_money">金额</aspxform:XRequiredFieldValidator>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td>
                        <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator7" runat="server" Display="None" ForeColor="Red" ErrorMessage="请选择保证金是否增加" ControlToValidate="XDropDownList1">保证金增加减少</aspxform:XRequiredFieldValidator>
                    </td>
                    <td>
                    </td>
                </tr>
            </tbody>
        </table>
    </form>
</body>
</html>
