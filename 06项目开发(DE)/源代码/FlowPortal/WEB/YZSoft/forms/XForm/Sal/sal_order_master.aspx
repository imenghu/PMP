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
        function getAreaName(val){
            return val=val.substring(val.indexOf('('),val.indexOf(')'));
        }
    </script>
</head>
<body>
    <form runat="server">
        <!--
$Scripts-->
        <table width="960" align="center" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none" border="0" cellspacing="0" cellpadding="0">
            <tbody>
                <tr>
                    <td width="200" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none">
                    </td>
                    <td width="400" align="center" class="header-td-title" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none">
                        <strong><font size="5">销售订单</font></strong> 
                    </td>
                    <td width="200" class="header-td-sn" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none">
                    </td>
                </tr>
            </tbody>
        </table>
        <table width="960" align="center" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none" border="0" cellspacing="0" cellpadding="0">
            <tbody>
                <tr>
                </tr>
                <tr>
                    <td width="101" height="34" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        订单号 
                    </td>
                    <td width="215" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlsal_order_mastersale_order" runat="server" DisableExpress="1" width="100%" XDataBind="SFDATA:sal_order_master.sale_order" FieldName="订单号">自动生成</aspxform:XTextBox>
                    </td>
                    <td width="101" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        经销商名称 
                    </td>
                    <td width="215" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlsal_order_masterdealer_name" runat="server" DisableExpress="1" width="80%" XDataBind="SFDATA:sal_order_master.dealer_name" FieldName="经销商名称"></aspxform:XTextBox>
                        <aspxform:XDataBrowserButton id="XDataBrowserButton1" runat="server" DataMap="dealer_id->SFDATA:sal_order_master.dealer_id;dealer_name->SFDATA:sal_order_master.dealer_name;dealer_contact->SFDATA:sal_order_master.consignee_name;dealer_tel->SFDATA:sal_order_master.consignee_tel;dealer_addr->SFDATA:sal_order_master.consignee_addr" DisplayColumns="dealer_name:经销商名称;dealer_contact:联系人;dealer_tel:联系电话;dealer_addr:地址" XDataSource="DataSource:SFDATA;TableName:ctl_dealer" Width="21px"></aspxform:XDataBrowserButton>
                    </td>
                    <td width="101" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        已付款金额 
                    </td>
                    <td width="215" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlsal_order_masterpay_price" runat="server" width="100%" XDataBind="SFDATA:sal_order_master.pay_price" FieldName="已付款金额"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td height="34" class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        收货人姓名</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlsal_order_masterconsignee_name" runat="server" width="100%" XDataBind="SFDATA:sal_order_master.consignee_name" FieldName="收货人姓名"></aspxform:XTextBox>
                    </td>
                    <td class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        收货人电话 
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlsal_order_masterconsignee_tel" runat="server" width="100%" XDataBind="SFDATA:sal_order_master.consignee_tel" FieldName="收货人电话"></aspxform:XTextBox>
                    </td>
                    <td class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        收货地址 
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlsal_order_masterconsignee_addr" runat="server" width="100%" XDataBind="SFDATA:sal_order_master.consignee_addr" FieldName="收货地址"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td height="34" class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        销售员姓名 
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlsal_order_mastersalesman_name" runat="server" width="100%" XDataBind="SFDATA:sal_order_master.salesman_name" FieldName="销售员姓名" ReadOnly="True" ValueToDisplayText></aspxform:XTextBox>
                    </td>
                    <td class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        销售员电话 
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlsal_order_mastersalesman_tel" runat="server" width="100%" XDataBind="SFDATA:sal_order_master.salesman_tel" FieldName="销售员电话" ReadOnly="True"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                    </td>
                </tr>
                <tr>
                    <td height="34" class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        订单时间 
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XDateTimePicker id="ctrlsal_order_mastercreate_time" runat="server" width="100%" XDataBind="SFDATA:sal_order_master.create_time" FieldName="订单时间"></aspxform:XDateTimePicker>
                    </td>
                    <td class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        销售区域</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox1" runat="server" DisableExpress="1" width="100%" XDataBind="vararea" FieldName="销售区域" BorderColor="#DCDCDC" Express="javascript('getAreaName',SFDATA:sal_order_master.DeptName)"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                    </td>
                </tr>
                <tr>
                    <td height="34" class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        省</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox3" runat="server" DisableExpress="1" width="100%" XDataBind="varprovice" FieldName="省" ValueToDisplayText="DataSource:SFDATA;TableName:ctl_area;FilterColumn:id;DisplayColumn:name" BorderColor="#DCDCDC"></aspxform:XTextBox>
                    </td>
                    <td class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        市</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox4" runat="server" DisableExpress="1" width="100%" XDataBind="varcity" FieldName="市" ValueToDisplayText="DataSource:SFDATA;TableName:ctl_area;FilterColumn:id;DisplayColumn:name" BorderColor="#DCDCDC"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                    </td>
                </tr>
                <tr>
                    <td height="73" class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        附件</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none" colspan="5">
                        <aspxform:XAttachments id="XAttachments1" runat="server" width="100%" XDataBind="SFDATA:sal_order_master.Attachment" FieldName="附件" FileTypes="*.doc;*.docx;*.xls;*.xlsx;*.pdf;*.png;*.jpg;*.jpeg;*.gif" FileTypesDescription="Word,Excel,Pdf"></aspxform:XAttachments>
                    </td>
                </tr>
                <tr>
                    <td height="34" class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        备注</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none" colspan="5">
                        <aspxform:XTextBox id="XTextBox2" runat="server" width="100%" XDataBind="SFDATA:sal_order_master.sales_remarks" FieldName="备注" BorderColor="#DCDCDC" Rows="5" TextMode="MultiLine" BorderWidth="1"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td height="34" class="xttl" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: black 1px solid" colspan="5">
                        物料明细</td>
                    <td align="right" class="xttl" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XDataBrowserButton id="XDataBrowserButton3" runat="server" XClass="YZSoft.Forms.Field.DataBrowserButton" DataMap="mat_id->SFDATA:sal_order_detail.mat_id;mat_code->SFDATA:sal_order_detail.mat_code;mat_name->SFDATA:sal_order_detail.mat_name;mat_spec->SFDATA:sal_order_detail.mat_spesc;base_unit->SFDATA:sal_order_detail.order_stnum_unit" DisplayColumns="mat_code:物料编码;mat_name:物料名称;mat_spec:规格;base_unit:基准单位" XDataSource="DataSource:SFDATA;TableName:ctl_material;Filter:first_code->var2,state->varState" Width="70px" Text="选择物料" MultiSelect="True" PopupWndWidth="-1" PopupWndHeight="-1" UseSubmitBehavior="False"></aspxform:XDataBrowserButton>
                        <aspxform:XAddBlockButton id="XAddBlockButton1" runat="server" Text="新增" TableName="sal_order_detail" DataSource="SFDATA"></aspxform:XAddBlockButton>
                    </td>
                </tr>
            </tbody>
        </table>
        <table width="960" align="center" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none" border="0" cellspacing="0" cellpadding="0" dynamicarea=" 1,1 ">
            <tbody>
                <tr>
                    <td width="50" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                        序号</td>
                    <td width="100" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        物料名称</td>
                    <td width="100" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        物料编码</td>
                    <td width="100" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        规格</td>
                    <td width="100" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        数量</td>
                    <td width="100" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        单位</td>
                    <td width="100" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        体积</td>
                    <td width="100" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        单位</td>
                    <td width="100" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        分项总金额</td>
                    <td width="100" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        备注</td>
                </tr>
                <tr>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                        <aspxform:xgridlineno id="XGridLineNo1" runat="server" width="62px" Height="20px" borderwidth="1px" borderstyle="None" backcolor="White" textalign="Center">1</aspxform:xgridlineno>
                    </td>
                    <td align="center" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlsal_order_detailmat_name" runat="server" DisableExpress="1" width="70px" XDataBind="SFDATA:sal_order_detail.mat_name" FieldName="物料名称"></aspxform:XTextBox>
                        <aspxform:XDataBrowserButton id="XDataBrowserButton2" runat="server" DataMap="mat_id->SFDATA:sal_order_detail.mat_id;mat_code->SFDATA:sal_order_detail.mat_code;mat_name->SFDATA:sal_order_detail.mat_name;mat_spec->SFDATA:sal_order_detail.mat_spesc;base_unit->SFDATA:sal_order_detail.order_stnum_unit" DisplayColumns="mat_code:物料编码;mat_name:物料名称;mat_spec:规格;base_unit:基准单位" XDataSource="DataSource:SFDATA;TableName:ctl_material;Filter:first_code->var2,state->varState" Width="21px"></aspxform:XDataBrowserButton>
                        <aspxform:XTextBox id="ctrl_sal_order_detailmat_id" runat="server" width="100%" XDataBind="SFDATA:sal_order_detail.mat_id" HiddenExpress="1"></aspxform:XTextBox>
                        <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator2" runat="server" ControlToValidate="ctrlsal_order_detailmat_name" ErrorMessage="请选择物料" ForeColor="Red" Display="None">物料名称</aspxform:XRequiredFieldValidator>
                    </td>
                    <td align="center" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlsal_order_detailmat_code" runat="server" DisableExpress="1" width="100%" XDataBind="SFDATA:sal_order_detail.mat_code" FieldName="物料编码"></aspxform:XTextBox>
                    </td>
                    <td align="center" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlsal_order_detailmat_spesc" runat="server" DisableExpress="1" width="100%" XDataBind="SFDATA:sal_order_detail.mat_spesc" FieldName="规格"></aspxform:XTextBox>
                    </td>
                    <td align="center" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlsal_order_detailorder_stnum" style="HEIGHT: 28px; WIDTH: 95px" runat="server" width="100%" XDataBind="SFDATA:sal_order_detail.order_stnum" FieldName="数量"></aspxform:XTextBox>
                        <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator3" runat="server" ControlToValidate="ctrlsal_order_detailorder_stnum" ErrorMessage="请填写数量" ForeColor="Red" Display="None">数量</aspxform:XRequiredFieldValidator>
                    </td>
                    <td align="center" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlsal_order_detailorder_stnum_unit" runat="server" DisableExpress="1" width="100%" XDataBind="SFDATA:sal_order_detail.order_stnum_unit" FieldName="单位"></aspxform:XTextBox>
                    </td>
                    <td align="center" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox5" runat="server" DisableExpress="1" width="100%" XDataBind="varstnum" FieldName="体积" Express="SFDATA:sal_order_detail.order_stnum*varnum"></aspxform:XTextBox>
                        <aspxform:XTextBox id="XTextBox14" runat="server" XDataBind="varnum" BorderColor="#DCDCDC" BorderWidth="1" HiddenExpress="1"></aspxform:XTextBox>
                    </td>
                    <td align="center" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox6" runat="server" DisableExpress="1" width="100%" XDataBind="varunit" FieldName="单位" DataMap="numerator->varnum" ValueToDisplayText="DataSource:SFDATA;TableName:ctl_mat_unit;FilterColumn:mat_unit_id;DisplayColumn:mat_unit_name">KL</aspxform:XTextBox>
                        <aspxform:XDropDownList id="XDropDownList1" runat="server" DataMap="mat_unit_id->varunit" XDataSource="DataSource:SFDATA;TableName:ctl_mat_unit;Filter:mat_id->SFDATA:sal_order_detail.mat_id,mat_unit_name->varKL,if_base_unit->0,state->1" HiddenExpress="1" DisplayColumn="mat_unit_name" ValueColumn="mat_unit_id"></aspxform:XDropDownList>
                    </td>
                    <td align="center" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlsal_order_detailitem_price" runat="server" width="100%" XDataBind="SFDATA:sal_order_detail.item_price" FieldName="分项总金额"></aspxform:XTextBox>
                        <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator4" runat="server" ControlToValidate="ctrlsal_order_detailitem_price" ErrorMessage="请填写分项总金额" ForeColor="Red" Display="None">分项总金额</aspxform:XRequiredFieldValidator>
                    </td>
                    <td align="center" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlsal_order_detailsales_remarks" runat="server" width="100%" XDataBind="SFDATA:sal_order_detail.sales_remarks" FieldName="备注"></aspxform:XTextBox>
                    </td>
                </tr>
            </tbody>
        </table>
        <br />
        <table width="793" align="center" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none" border="0" cellspacing="0" cellpadding="0" hiddenexpress="1">
            <tbody>
                <tr>
                    <td width="100" height="34" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                        经销商id</td>
                    <td width="693" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlsal_order_masterdealer_id" runat="server" width="100%" XDataBind="SFDATA:sal_order_master.dealer_id"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td height="34">
                        CreateUser</td>
                    <td>
                        <aspxform:XTextBox id="XTextBox12" runat="server" width="100%" XDataBind="SFDATA:sal_order_master.CreateUser" DataMap="salesman_id->SFDATA:sal_order_master.salesman_id;province_id->varprovice;city_id->varcity;salesman_name->SFDATA:sal_order_master.salesman_name;salesman_tel->SFDATA:sal_order_master.salesman_tel" ValueToDisplayText="DataSource:SFDATA;TableName:ctl_salesman;FilterColumn:SalesmanAccount;DisplayColumn:SalesmanAccount" BorderColor="#DCDCDC" BorderWidth="1"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        总金额</td>
                    <td>
                        <aspxform:XTextBox id="XTextBox13" runat="server" width="100%" XDataBind="SFDATA:sal_order_master.total_price" Express="sum(SFDATA:sal_order_detail.item_price)"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td height="34" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                        销售员id</td>
                    <td style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox7" runat="server" width="100%" XDataBind="SFDATA:sal_order_master.salesman_id" ReadOnly="True" ValueToDisplayText></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td height="34">
                        部门名称</td>
                    <td>
                        <aspxform:XTextBox id="XTextBox8" runat="server" width="100%" XDataBind="SFDATA:sal_order_master.DeptName" BorderColor="#DCDCDC" BorderWidth="1"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td height="34">
                        KL</td>
                    <td>
                        <aspxform:XTextBox id="XTextBox9" runat="server" width="100%" XDataBind="varKL" BorderColor="#DCDCDC" BorderWidth="1">KL</aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td height="34">
                        varState</td>
                    <td>
                        <aspxform:XTextBox id="XTextBox10" runat="server" width="100%" XDataBind="varState" BorderColor="#DCDCDC" BorderWidth="1">1</aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td height="34">
                        var2</td>
                    <td>
                        <aspxform:XTextBox id="XTextBox11" runat="server" width="100%" XDataBind="var2" BorderColor="#DCDCDC" BorderWidth="1">2</aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator1" runat="server" ControlToValidate="ctrlsal_order_masterdealer_name" ErrorMessage="请选择经销商" ForeColor="Red" Display="None">经销商名称</aspxform:XRequiredFieldValidator>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td>
                        <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator5" runat="server" ControlToValidate="ctrlsal_order_masterpay_price" ErrorMessage="请填写已付款金额" ForeColor="Red" Display="None">已付款金额</aspxform:XRequiredFieldValidator>
                    </td>
                    <td>
                    </td>
                </tr>
            </tbody>
        </table>
    </form>
</body>
</html>
