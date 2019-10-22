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
                        <strong><font size="5">汇款明细</font></strong> 
                    </td>
                    <td width="200" class="header-td-sn">
                    </td>
                </tr>
            </tbody>
        </table>
        <table width="960" align="center" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none" border="0" cellspacing="0" cellpadding="0">
            <tbody>
                <tr>
                    <td width="100" height="36" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                        订单号 
                    </td>
                    <td width="214" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlSal_remittanceremittance_no" runat="server" width="100%" XDataBind="SFDATA:Sal_remittance.remittance_no"></aspxform:XTextBox>
                    </td>
                    <td width="100" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        客户名称 
                    </td>
                    <td width="214" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlSal_remittancecustomer_name" runat="server" width="180px" XDataBind="SFDATA:Sal_remittance.customer_name" DisableExpress="1"></aspxform:XTextBox>
                        <aspxform:XDataBrowserButton id="XDataBrowserButton3" runat="server" XDataSource="DataSource:SFDATA;TableName:sal_customer" DisplayColumns="area:销售大区;customer_name:收货人;phone_number:收货手机号;receiving_address:收货地址" DataMap="customer_code->SFDATA:Sal_remittance.customer_code;area->SFDATA:Sal_remittance.name;payment_account->SFDATA:sal_remittance.remittance_man;customer_name->SFDATA:Sal_remittance.customer_name" Width="21px"></aspxform:XDataBrowserButton>
                    </td>
                    <td width="100" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        汇款金额 
                    </td>
                    <td width="214" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlSal_remittanceremittance_money" runat="server" width="100%" XDataBind="SFDATA:Sal_remittance.remittance_money"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td height="34" class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                        客户编号 
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlSal_remittancecustomer_code" runat="server" width="100%" XDataBind="SFDATA:Sal_remittance.customer_code" DisableExpress="1"></aspxform:XTextBox>
                    </td>
                    <td class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        付款人 
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlSal_remittanceremittance_man" runat="server" width="100%" XDataBind="SFDATA:sal_remittance.remittance_man" DisableExpress="1" HiddenInput="False"></aspxform:XTextBox>
                    </td>
                    <td class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        销售大区名称 
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlSal_remittancename" runat="server" width="100%" XDataBind="SFDATA:Sal_remittance.name" DisableExpress="1"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td height="34" class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                        类型 
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XDropDownList id="XDropDownList1" runat="server" XDataBind="SFDATA:Sal_remittance.remittance_type" Width="100%" PromptText="--请选择--">
                            <asp:ListItem>电汇</asp:ListItem>
                            <asp:ListItem>支票</asp:ListItem>
                            <asp:ListItem>网银</asp:ListItem>
                        </aspxform:XDropDownList>
                    </td>
                    <td class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        汇款日期 
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XDateTimePicker id="ctrlSal_remittanceremittance_date" runat="server" width="100%" XDataBind="SFDATA:Sal_remittance.remittance_date"></aspxform:XDateTimePicker>
                    </td>
                    <td class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        收款人 
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlSal_remittanceremittance_recer" runat="server" width="180px" XDataBind="SFDATA:Sal_remittance.remittance_recer"></aspxform:XTextBox>
                        <aspxform:XDataBrowserButton id="XDataBrowserButton1" runat="server" XDataSource="DataSource:SFDATA;TableName:sal_finance" DisplayColumns="finance_name:财务;finance_company:公司" DataMap="finance_name->SFDATA:Sal_remittance.remittance_recer" Width="21px"></aspxform:XDataBrowserButton>
                    </td>
                </tr>
                <tr>
                    <td height="34" class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                        作用 
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none" colspan="5">
                        <aspxform:XTextBox id="ctrlSal_remittanceremittance_effect" runat="server" width="100%" XDataBind="SFDATA:Sal_remittance.remittance_effect" TextMode="MultiLine"></aspxform:XTextBox>
                    </td>
                </tr>
            </tbody>
        </table>
        <br />
        <table width="795" align="center" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none" border="0" cellspacing="0" cellpadding="0" hiddenexpress="1">
            <tbody>
                <tr>
                    <td width="100" height="34" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                        物料名称 
                    </td>
                    <td width="693" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlSal_remittanceremittance_name" runat="server" width="100%" XDataBind="SFDATA:Sal_remittance.remittance_name"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator1" runat="server" Display="None" ForeColor="Red" ErrorMessage="请填写订单号" ControlToValidate="ctrlSal_remittanceremittance_no">订单号</aspxform:XRequiredFieldValidator>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td>
                        <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator2" runat="server" Display="None" ForeColor="Red" ErrorMessage="请选择客户名称" ControlToValidate="ctrlSal_remittancecustomer_name">客户名称</aspxform:XRequiredFieldValidator>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td>
                        <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator3" runat="server" Display="None" ForeColor="Red" ErrorMessage="请填写汇款金额 " ControlToValidate="ctrlSal_remittanceremittance_money">汇款金额 </aspxform:XRequiredFieldValidator>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td>
                        <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator4" runat="server" Display="None" ForeColor="Red" ErrorMessage="请选择类型" ControlToValidate="XDropDownList1">类型</aspxform:XRequiredFieldValidator>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td>
                        <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator5" runat="server" Display="None" ForeColor="Red" ErrorMessage="请选择汇款日期" ControlToValidate="ctrlSal_remittanceremittance_date">汇款日期</aspxform:XRequiredFieldValidator>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td>
                        <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator6" runat="server" Display="None" ForeColor="Red" ErrorMessage="请选择收款人" ControlToValidate="ctrlSal_remittanceremittance_recer">收款人</aspxform:XRequiredFieldValidator>
                    </td>
                    <td>
                    </td>
                </tr>
            </tbody>
        </table>
    </form>
</body>
</html>
