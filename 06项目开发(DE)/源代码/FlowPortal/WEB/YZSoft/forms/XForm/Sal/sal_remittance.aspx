﻿<%@ Page Language="C#" %>
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
                    <td width="100" height="36" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        订单编号 
                    </td>
                    <td width="214" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlSal_remittanceremittance_no" runat="server" XDataBind="SFDATA:Sal_remittance.remittance_no" width="100%"></aspxform:XTextBox>
                    </td>
                    <td width="100" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        客户名称 
                    </td>
                    <td width="214" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlSal_remittancecustomer_name" runat="server" XDataBind="SFDATA:Sal_remittance.customer_name" width="180px" DisableExpress="1"></aspxform:XTextBox>
                        <aspxform:XDataBrowserButton id="XDataBrowserButton3" runat="server" Width="21px" DataMap="area->SFDATA:Sal_remittance.name;dealer_code->SFDATA:sal_remittance.customer_code;dealer_name->SFDATA:sal_remittance.customer_name;payment_account->SFDATA:sal_remittance.remittance_man" DisplayColumns="area:销售大区;dealer_code:客户编号;dealer_name:客户名称;phone_number:收货手机号;receiving_address:收货地址" XDataSource="DataSource:SFDATA;TableName:ctl_dealer;Filter:state->1,Company->SFDATA:sal_remittance.Company"></aspxform:XDataBrowserButton>
                    </td>
                    <td width="100" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        汇款金额 
                    </td>
                    <td width="214" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlSal_remittanceremittance_money" runat="server" XDataBind="SFDATA:Sal_remittance.remittance_money" width="100%"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td height="34" class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        客户编号 
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlSal_remittancecustomer_code" runat="server" XDataBind="SFDATA:Sal_remittance.customer_code" width="100%" DisableExpress="1"></aspxform:XTextBox>
                    </td>
                    <td class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        付款人 
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlSal_remittanceremittance_man" runat="server" XDataBind="SFDATA:sal_remittance.remittance_man" width="100%" DisableExpress="1" HiddenInput="False"></aspxform:XTextBox>
                    </td>
                    <td class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        销售大区 
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlSal_remittancename" runat="server" XDataBind="SFDATA:Sal_remittance.name" width="100%" DisableExpress="1"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td height="34" class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        类型 
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XDropDownList id="XDropDownList1" runat="server" XDataBind="SFDATA:Sal_remittance.remittance_type" Width="100px" PromptText="--请选择--">
                            <asp:ListItem>电汇</asp:ListItem>
                            <asp:ListItem>支票</asp:ListItem>
                            <asp:ListItem>网银</asp:ListItem>
                        </aspxform:XDropDownList>
                    </td>
                    <td class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        汇款日期 
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XDateTimePicker id="ctrlSal_remittanceremittance_date" runat="server" XDataBind="SFDATA:Sal_remittance.remittance_date" width="100px"></aspxform:XDateTimePicker>
                    </td>
                    <td class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        收款人 
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XDropDownList id="XDropDownList2" runat="server" XDataBind="SFDATA:sal_remittance.remittance_recer" XDataSource="DataSource:SFDATA;TableName:sal_finance" PromptText="--请选择--" DisplayColumn="finance_name" ValueColumn="finance_name"></aspxform:XDropDownList>
                    </td>
                </tr>
                <tr>
                    <td height="34" class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        作用 
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none" colspan="5">
                        <aspxform:XTextBox id="ctrlSal_remittanceremittance_effect" runat="server" XDataBind="SFDATA:Sal_remittance.remittance_effect" width="100%" TextMode="MultiLine" Rows="5"></aspxform:XTextBox>
                    </td>
                </tr>
            </tbody>
        </table>
        <br />
        <table width="788" align="center" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none" border="0" cellspacing="0" cellpadding="0" hiddenexpress="1">
            <tbody>
                <tr>
                    <td>
                        公司编码</td>
                    <td>
                        <aspxform:XTextBox id="XTextBox1" runat="server" XDataBind="SFDATA:sal_remittance.Company" width="100%" DisableExpress="1"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td width="99" height="34">
                        <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator1" runat="server" ControlToValidate="ctrlSal_remittanceremittance_no" ErrorMessage="请填写订单编号" ForeColor="Red" Display="None">订单编号</aspxform:XRequiredFieldValidator>
                    </td>
                    <td width="689">
                    </td>
                </tr>
                <tr>
                    <td height="34">
                        <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator2" runat="server" ControlToValidate="ctrlSal_remittancecustomer_name" ErrorMessage="请选择客户名称" ForeColor="Red" Display="None">客户名称</aspxform:XRequiredFieldValidator>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td height="34">
                        <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator3" runat="server" ControlToValidate="ctrlSal_remittanceremittance_money" ErrorMessage="请填写汇款金额 " ForeColor="Red" Display="None">汇款金额 </aspxform:XRequiredFieldValidator>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td>
                        <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator7" runat="server" ControlToValidate="ctrlSal_remittancecustomer_code" ErrorMessage="请维护客户编号 " ForeColor="Red" Display="None">客户编号 </aspxform:XRequiredFieldValidator>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td height="34">
                        <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator4" runat="server" ControlToValidate="XDropDownList1" ErrorMessage="请选择类型" ForeColor="Red" Display="None">类型</aspxform:XRequiredFieldValidator>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td height="34">
                        <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator5" runat="server" ControlToValidate="ctrlSal_remittanceremittance_date" ErrorMessage="请选择汇款日期" ForeColor="Red" Display="None">汇款日期</aspxform:XRequiredFieldValidator>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td height="34">
                        <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator6" runat="server" ControlToValidate="XDropDownList2" ErrorMessage="请选择收款人" ForeColor="Red" Display="None">收款人</aspxform:XRequiredFieldValidator>
                    </td>
                    <td>
                    </td>
                </tr>
            </tbody>
        </table>
    </form>
</body>
</html>
