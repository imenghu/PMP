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
    <script>
        function GetFinal(initvalue,deposit,flag){
            if(flag==1){
                return initvalue+deposit;
            }
            else if(flag==0){
                return initvalue-deposit;
            }
            else{
                return 0;
            }
        }
    </script>
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
                    <td width="120" height="34" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        押金日期 
                    </td>
                    <td width="200" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XDateTimePicker id="ctrlSal_deposit_recorddeposit_date" runat="server" XDataBind="SFDATA:sal_deposit_record.deposit_date" width="100px"></aspxform:XDateTimePicker>
                    </td>
                    <td width="120" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        录入日期 
                    </td>
                    <td width="200" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XDateTimePicker id="ctrlSal_deposit_recordinsert_date" runat="server" XDataBind="SFDATA:Sal_deposit_record.insert_date" width="100px"></aspxform:XDateTimePicker>
                    </td>
                    <td width="120" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        财务名称 
                    </td>
                    <td width="200" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlSal_deposit_recordfinance_name" runat="server" XDataBind="SFDATA:Sal_deposit_record.finance_name" width="170px" DisableExpress="1"></aspxform:XTextBox>
                        <aspxform:XDataBrowserButton id="XDataBrowserButton1" runat="server" XDataSource="DataSource:SFDATA;TableName:sal_finance" Width="21px" DisplayColumns="finance_name:财务名称;finance_company:公司" DataMap="finance_id->SFDATA:sal_deposit_record.finance_id;finance_name->SFDATA:Sal_deposit_record.finance_name"></aspxform:XDataBrowserButton>
                    </td>
                </tr>
                <tr>
                    <td height="34" class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        经销商</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlSal_deposit_recordpayment_account" runat="server" XDataBind="SFDATA:Sal_deposit_record.payment_account" width="170px" Max="0" Min="0" ValueToDisplayText HiddenInput="False" PlaceHolder DisableExpress="1"></aspxform:XTextBox>
                        <aspxform:XDataBrowserButton id="XDataBrowserButton3" runat="server" XClass="YZSoft.Forms.Field.DataBrowserButton" XDataSource="DataSource:SFDATA;TableName:sal_customer" Width="21px" DisplayColumns="area:销售大区;customer_name:收货人;phone_number:收货手机号;receiving_address:收货地址" DataMap="customer_code->SFDATA:Sal_deposit_record.customer_code;area->SFDATA:Sal_deposit_record.name;payment_account->SFDATA:Sal_deposit_record.payment_account;customer_name->SFDATA:Sal_deposit_record.customer_name" PopupWndWidth="-1" PopupWndHeight="-1" UseSubmitBehavior="False" Text="..."></aspxform:XDataBrowserButton>
                    </td>
                    <td class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        对方单位</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlSal_deposit_recordcustomer_name" runat="server" XDataBind="SFDATA:Sal_deposit_record.customer_name" width="100%" DisableExpress="1"></aspxform:XTextBox>
                    </td>
                    <td class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        销售大区 
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlSal_deposit_recordname" runat="server" XDataBind="SFDATA:sal_deposit_record.name" width="100%" DisableExpress="1"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td height="34" class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        发货仓库名称 
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlSal_deposit_recorddepot_name" runat="server" XDataBind="SFDATA:Sal_deposit_record.depot_name" width="170px" Max="0" Min="0" ValueToDisplayText HiddenInput="False" PlaceHolder DisableExpress="1"></aspxform:XTextBox>
                        <aspxform:XDataBrowserButton id="XDataBrowserButton2" runat="server" XDataSource="DataSource:SFDATA;TableName:ctl_depot;Filter:state->1" Width="21px" DisplayColumns="depot_name:仓库名称" DataMap="depot_id->SFDATA:sal_deposit_record.depot_id;depot_name->SFDATA:Sal_deposit_record.depot_name"></aspxform:XDataBrowserButton>
                    </td>
                    <td class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        金额 
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlSal_deposit_recorddeposit_money" runat="server" XDataBind="SFDATA:Sal_deposit_record.deposit_money" width="100%"></aspxform:XTextBox>
                    </td>
                    <td class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        保证金增加减少 
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XDropDownList id="XDropDownList1" runat="server" XDataBind="SFDATA:Sal_deposit_record.deposit_flag" XDataSource Width="100px" PromptText="--请选择--">
                            <asp:ListItem Value="1">增加</asp:ListItem>
                            <asp:ListItem Value="0">减少</asp:ListItem>
                        </aspxform:XDropDownList>
                    </td>
                </tr>
                <tr>
                    <td height="34" class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        摘要 
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none" colspan="5">
                        <aspxform:XTextBox id="ctrlSal_deposit_recordsummary" runat="server" XDataBind="SFDATA:Sal_deposit_record.summary" width="100%" TextMode="MultiLine" Rows="5"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td height="34" class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        备注 
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none" colspan="5">
                        <aspxform:XTextBox id="ctrlSal_deposit_recordremark" runat="server" XDataBind="SFDATA:Sal_deposit_record.remark" width="100%" TextMode="MultiLine" Rows="5"></aspxform:XTextBox>
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
                        <aspxform:XTextBox id="ctrlSal_deposit_recordcustomer_code" runat="server" XDataBind="SFDATA:Sal_deposit_record.customer_code" width="100%" ValueToDisplayText></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td width="100" height="25" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                        期初余额 
                    </td>
                    <td style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlSal_deposit_recorddeposit_initial_balance" runat="server" XDataBind="SFDATA:Sal_deposit_record.deposit_initial_balance" width="100%">0</aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td width="100" height="25" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                        期末余额 
                    </td>
                    <td style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlSal_deposit_recorddeposit_final_balance" runat="server" XDataBind="SFDATA:Sal_deposit_record.deposit_final_balance" width="100%" Express="javascript('GetFinal',SFDATA:Sal_deposit_record.deposit_initial_balance,SFDATA:Sal_deposit_record.deposit_money,SFDATA:Sal_deposit_record.deposit_flag)"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td width="100" height="25" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                        发货仓库主键 
                    </td>
                    <td style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlSal_deposit_recorddepot_id" runat="server" XDataBind="SFDATA:Sal_deposit_record.depot_id" width="100%"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td width="100" height="25" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                        财务 
                    </td>
                    <td style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlSal_deposit_recordfinance_id" runat="server" XDataBind="SFDATA:Sal_deposit_record.finance_id" width="100%"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        获取期初余额</td>
                    <td>
                        <aspxform:XDropDownList id="XDropDownList2" runat="server" XDataSource="DataSource:SFDATA;TableName:sal_deposit_record;Filter:customer_code->SFDATA:sal_deposit_record.customer_code;OrderBy:deposit_id desc" DataMap="deposit_final_balance->SFDATA:sal_deposit_record.deposit_initial_balance" ValueColumn="deposit_id" DisplayColumn="customer_name"></aspxform:XDropDownList>
                    </td>
                </tr>
                <tr>
                    <td>
                        <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator1" runat="server" ControlToValidate="ctrlSal_deposit_recorddeposit_date" ErrorMessage="请选择押金日期" ForeColor="Red" Display="None">押金日期</aspxform:XRequiredFieldValidator>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td>
                        <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator2" runat="server" ControlToValidate="ctrlSal_deposit_recordinsert_date" ErrorMessage="请选择录入日期" ForeColor="Red" Display="None">录入日期</aspxform:XRequiredFieldValidator>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td>
                        <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator3" runat="server" ControlToValidate="ctrlSal_deposit_recordfinance_name" ErrorMessage="请选择财务名称" ForeColor="Red" Display="None">财务名称</aspxform:XRequiredFieldValidator>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td>
                        <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator4" runat="server" ControlToValidate="ctrlSal_deposit_recordpayment_account" ErrorMessage="请选择经销商" ForeColor="Red" Display="None">经销商</aspxform:XRequiredFieldValidator>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td>
                        <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator5" runat="server" ControlToValidate="ctrlSal_deposit_recorddepot_name" ErrorMessage="请选择发货仓库名称" ForeColor="Red" Display="None">发货仓库名称</aspxform:XRequiredFieldValidator>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td>
                        <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator6" runat="server" ControlToValidate="ctrlSal_deposit_recorddeposit_money" ErrorMessage="请填写金额" ForeColor="Red" Display="None">金额</aspxform:XRequiredFieldValidator>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td>
                        <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator7" runat="server" ControlToValidate="XDropDownList1" ErrorMessage="请选择保证金是否增加" ForeColor="Red" Display="None">保证金增加减少</aspxform:XRequiredFieldValidator>
                    </td>
                    <td>
                    </td>
                </tr>
            </tbody>
        </table>
    </form>
</body>
</html>
