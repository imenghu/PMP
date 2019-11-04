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
                        <aspxform:XDateTimePicker id="ctrlSal_deposit_recorddeposit_date" runat="server" width="100px" XDataBind="SFDATA:sal_deposit_record.deposit_date"></aspxform:XDateTimePicker>
                    </td>
                    <td width="120" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        录入日期 
                    </td>
                    <td width="200" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XDateTimePicker id="ctrlSal_deposit_recordinsert_date" runat="server" width="100px" XDataBind="SFDATA:Sal_deposit_record.insert_date"></aspxform:XDateTimePicker>
                    </td>
                    <td width="120" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        财务名称 
                    </td>
                    <td width="200" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XDropDownList id="XDropDownList4" runat="server" XDataBind="SFDATA:sal_deposit_record.finance_id" DataMap="finance_name->SFDATA:sal_deposit_record.finance_name" XDataSource="DataSource:SFDATA;TableName:sal_finance;Filter:state->varState" PromptText="--请选择--" DisplayColumn="finance_name" ValueColumn="finance_id"></aspxform:XDropDownList>
                    </td>
                </tr>
                <tr>
                    <td height="34" class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        客户名称</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlSal_deposit_recordcustomer_name" runat="server" width="170px" XDataBind="SFDATA:Sal_deposit_record.customer_name" DisableExpress="1"></aspxform:XTextBox>
                        <aspxform:XDataBrowserButton id="XDataBrowserButton3" runat="server" XClass="YZSoft.Forms.Field.DataBrowserButton" DataMap="area->SFDATA:Sal_deposit_record.name;dealer_code->SFDATA:sal_deposit_record.customer_code;dealer_name->SFDATA:sal_deposit_record.customer_name;payment_account->SFDATA:Sal_deposit_record.payment_account" XDataSource="DataSource:SFDATA;TableName:ctl_dealer" DisplayColumns="area:销售大区;dealer_name:客户名称;payment_account:账户名称;phone_number:收货手机号;receiving_address:收货地址;dealer_contact:收货人" Width="21px" Text="..." UseSubmitBehavior="False" PopupWndHeight="-1" PopupWndWidth="-1"></aspxform:XDataBrowserButton>
                    </td>
                    <td class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        账户名称</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlSal_deposit_recordpayment_account" runat="server" width="100%" XDataBind="SFDATA:Sal_deposit_record.payment_account" DisableExpress="1" Max="0" Min="0" PlaceHolder HiddenInput="False" ValueToDisplayText></aspxform:XTextBox>
                    </td>
                    <td class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        销售大区 
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlSal_deposit_recordname" runat="server" width="100%" XDataBind="SFDATA:sal_deposit_record.name" DisableExpress="1"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td height="34" class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        发货仓库 
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XDropDownList id="XDropDownList3" runat="server" XDataBind="SFDATA:sal_deposit_record.deposit_id" DataMap="depot_name->SFDATA:sal_deposit_record.depot_name" XDataSource="DataSource:SFDATA;TableName:ctl_depot;Filter:state->varState,Company->SFDATA:sal_deposit_record.Company" PromptText="--请选择--" DisplayColumn="depot_name" ValueColumn="depot_id"></aspxform:XDropDownList>
                    </td>
                    <td class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        金额 
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlSal_deposit_recorddeposit_money" runat="server" width="100%" XDataBind="SFDATA:Sal_deposit_record.deposit_money"></aspxform:XTextBox>
                    </td>
                    <td class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        保证金增加减少 
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XDropDownList id="XDropDownList1" runat="server" XDataBind="SFDATA:Sal_deposit_record.deposit_flag" XDataSource PromptText="--请选择--" Width="100px">
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
                        <aspxform:XTextBox id="ctrlSal_deposit_recordsummary" runat="server" width="100%" XDataBind="SFDATA:Sal_deposit_record.summary" Rows="5" TextMode="MultiLine"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td height="34" class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        备注 
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none" colspan="5">
                        <aspxform:XTextBox id="ctrlSal_deposit_recordremark" runat="server" width="100%" XDataBind="SFDATA:Sal_deposit_record.remark" Rows="5" TextMode="MultiLine"></aspxform:XTextBox>
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
                        <aspxform:XTextBox id="ctrlSal_deposit_recordcustomer_code" runat="server" width="100%" XDataBind="SFDATA:Sal_deposit_record.customer_code" ValueToDisplayText></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td width="100" height="25" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                        期初余额 
                    </td>
                    <td style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlSal_deposit_recorddeposit_initial_balance" runat="server" width="100%" XDataBind="SFDATA:Sal_deposit_record.deposit_initial_balance">0</aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td width="100" height="25" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                        期末余额 
                    </td>
                    <td style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlSal_deposit_recorddeposit_final_balance" runat="server" width="100%" XDataBind="SFDATA:Sal_deposit_record.deposit_final_balance" Express="javascript('GetFinal',SFDATA:Sal_deposit_record.deposit_initial_balance,SFDATA:Sal_deposit_record.deposit_money,SFDATA:Sal_deposit_record.deposit_flag)"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td width="100" height="35" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                        发货仓库 
                    </td>
                    <td style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlSal_deposit_recorddepot_id" runat="server" width="100%" XDataBind="SFDATA:Sal_deposit_record.depot_name"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td width="100" height="25" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                        财务 
                    </td>
                    <td style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlSal_deposit_recordfinance_id" runat="server" width="100%" XDataBind="SFDATA:Sal_deposit_record.finance_name"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        varState</td>
                    <td>
                        <aspxform:XTextBox id="XTextBox1" runat="server" XDataBind="varState" BorderColor="#DCDCDC" BorderWidth="1">1</aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        公司</td>
                    <td>
                        <aspxform:XTextBox id="XTextBox2" runat="server" XDataBind="SFDATA:sal_deposit_record.Company" BorderColor="#DCDCDC" BorderWidth="1"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        获取期初余额</td>
                    <td>
                        <aspxform:XDropDownList id="XDropDownList2" runat="server" DataMap="deposit_final_balance->SFDATA:sal_deposit_record.deposit_initial_balance" XDataSource="DataSource:SFDATA;TableName:sal_deposit_record;Filter:customer_code->SFDATA:sal_deposit_record.customer_code;OrderBy:deposit_id desc" DisplayColumn="customer_name" ValueColumn="deposit_id"></aspxform:XDropDownList>
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
                        <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator3" runat="server" Display="None" ForeColor="Red" ErrorMessage="请选择财务名称" ControlToValidate="XDropDownList4">财务名称</aspxform:XRequiredFieldValidator>
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
                    <td>
                        <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator5" runat="server" Display="None" ForeColor="Red" ErrorMessage="请选择发货仓库" ControlToValidate="XDropDownList3">发货仓库</aspxform:XRequiredFieldValidator>
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
