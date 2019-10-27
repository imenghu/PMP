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
        function onselectechanged(el){
            debugger;
            var ckbox=Ext.get(el).getParent().down('input').dom;
            if(ckbox.value=='on'){
                var txtprice=Ext.get(Ext.get(el).getParent().getParent().dom.children[6]);
                var price=txtprice.down('.yz-xform-field-ele').dom;
                price.value=0;
                XFormOnChange(price);
            }
            //var txtid=Ext.get('tbVendorId').down('.yz-xform-field-ele').dom;
            //txtid.value=ckbox.value;
            //XFormOnChange(document.getElementById('tbVendorId'));
        }
    </script>
</head>
<body>
    <form runat="server">
        <!--
$Scripts-->
        <table width="1050" align="center" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none" border="0" cellspacing="0" cellpadding="0">
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
        <table width="1050" align="center" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none" border="0" cellspacing="0" cellpadding="0">
            <tbody>
                <tr>
                </tr>
                <tr>
                    <td width="150" height="34" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        订单编号</td>
                    <td width="200" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlsal_order_mastersale_order" runat="server" FieldName="订单号" XDataBind="SFDATA:sal_order_master.sale_order" width="100%" DisableExpress="1">自动生成</aspxform:XTextBox>
                    </td>
                    <td width="150" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        经销商名称 
                    </td>
                    <td width="200" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlsal_order_masterdealer_name" runat="server" FieldName="经销商名称" XDataBind="SFDATA:sal_order_master.dealer_name" width="170px" DisableExpress="1"></aspxform:XTextBox>
                        <aspxform:XDataBrowserButton id="XDataBrowserButton1" runat="server" Width="21px" XDataSource="DataSource:SFDATA;TableName:ctl_dealer" DisplayColumns="dealer_name:经销商名称;dealer_contact:联系人;dealer_tel:联系电话;dealer_addr:地址" DataMap="dealer_id->SFDATA:sal_order_master.dealer_id;dealer_name->SFDATA:sal_order_master.dealer_name;dealer_contact->SFDATA:sal_order_master.consignee_name;dealer_tel->SFDATA:sal_order_master.consignee_tel;dealer_addr->SFDATA:sal_order_master.consignee_addr" HiddenExpress="Global.StepName!='开始'"></aspxform:XDataBrowserButton>
                    </td>
                    <td width="150" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        纳税人登记号</td>
                    <td width="200" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox15" runat="server" FieldName="纳税人登记号" XDataBind="vartaxno" width="100%" DisableExpress="1" BorderColor="#DCDCDC"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td height="34" class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        省</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox3" runat="server" FieldName="省" XDataBind="varprovince" width="100%" DisableExpress="1" BorderColor="#DCDCDC" ValueToDisplayText="DataSource:SFDATA;TableName:ctl_area;FilterColumn:id;DisplayColumn:name"></aspxform:XTextBox>
                    </td>
                    <td class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        市</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox4" runat="server" FieldName="市" XDataBind="varcity" width="100%" DisableExpress="1" BorderColor="#DCDCDC" ValueToDisplayText="DataSource:SFDATA;TableName:ctl_area;FilterColumn:id;DisplayColumn:name"></aspxform:XTextBox>
                    </td>
                    <td class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        销售大区</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox1" runat="server" FieldName="销售大区" XDataBind="vararea" width="100%" DisableExpress="1" BorderColor="#DCDCDC"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        法人</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox16" runat="server" FieldName="法人" XDataBind="varlegalperson" width="100%" DisableExpress="1" BorderColor="#DCDCDC"></aspxform:XTextBox>
                    </td>
                    <td class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        联系电话</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox17" runat="server" FieldName="联系电话" XDataBind="varphone" width="100%" DisableExpress="1" BorderColor="#DCDCDC"></aspxform:XTextBox>
                    </td>
                    <td class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        注册地址</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox18" runat="server" FieldName="注册地址" XDataBind="varregisteraddr" width="100%" DisableExpress="1" BorderColor="#DCDCDC"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td height="34" class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        收货人姓名</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlsal_order_masterconsignee_name" runat="server" FieldName="收货人姓名" XDataBind="SFDATA:sal_order_master.consignee_name" width="100%"></aspxform:XTextBox>
                    </td>
                    <td class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        收货人电话 
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlsal_order_masterconsignee_tel" runat="server" FieldName="收货人电话" XDataBind="SFDATA:sal_order_master.consignee_tel" width="100%"></aspxform:XTextBox>
                    </td>
                    <td class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        收货地址 
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlsal_order_masterconsignee_addr" runat="server" FieldName="收货地址" XDataBind="SFDATA:sal_order_master.consignee_addr" width="100%"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td height="34" class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        销售员姓名 
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlsal_order_mastersalesman_name" runat="server" FieldName="销售员姓名" XDataBind="SFDATA:sal_order_master.salesman_name" width="100%" ValueToDisplayText ReadOnly="True"></aspxform:XTextBox>
                    </td>
                    <td class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        销售员电话 
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlsal_order_mastersalesman_tel" runat="server" FieldName="销售员电话" XDataBind="SFDATA:sal_order_master.salesman_tel" width="100%" ReadOnly="True"></aspxform:XTextBox>
                    </td>
                    <td class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        订单金额</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlsal_order_masterpay_price" runat="server" FieldName="订单金额" XDataBind="SFDATA:sal_order_master.total_price" width="100%" DisableExpress="1" Express="sum(SFDATA:sal_order_detail.item_price)"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td height="73" class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        附件</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none" colspan="5">
                        <aspxform:XAttachments id="XAttachments1" runat="server" FieldName="附件" XDataBind="SFDATA:sal_order_master.Attachment" width="100%" FileTypesDescription="Word,Excel,Pdf" FileTypes="*.doc;*.docx;*.xls;*.xlsx;*.pdf;*.png;*.jpg;*.jpeg;*.gif"></aspxform:XAttachments>
                    </td>
                </tr>
                <tr>
                    <td height="34" class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        备注</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none" colspan="5">
                        <aspxform:XTextBox id="XTextBox2" runat="server" FieldName="备注" XDataBind="SFDATA:sal_order_master.sales_remarks" width="100%" BorderColor="#DCDCDC" TextMode="MultiLine" Rows="5"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td height="34" class="xttl" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: black 1px solid" colspan="5">
                        物料明细</td>
                    <td align="right" class="xttl" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XDataBrowserButton id="XDataBrowserButton3" runat="server" XClass="YZSoft.Forms.Field.DataBrowserButton" Width="70px" XDataSource="DataSource:SFDATA;TableName:ctl_material;Filter:first_code->var2,state->varState" DisplayColumns="mat_code:物料编码;mat_name:物料名称;mat_spec:规格;base_unit:基准单位" DataMap="mat_id->SFDATA:sal_order_detail.mat_id;mat_code->SFDATA:sal_order_detail.mat_code;mat_name->SFDATA:sal_order_detail.mat_name;mat_spec->SFDATA:sal_order_detail.mat_spesc;base_unit->SFDATA:sal_order_detail.order_stnum_unit" UseSubmitBehavior="False" PopupWndHeight="-1" PopupWndWidth="-1" MultiSelect="True" Text="选择物料" HiddenExpress="Global.StepName!='开始'"></aspxform:XDataBrowserButton>
                        <aspxform:XAddBlockButton id="XAddBlockButton1" runat="server" Text="新增" DataSource="SFDATA" TableName="sal_order_detail" HiddenExpress="Global.StepName!='开始'"></aspxform:XAddBlockButton>
                    </td>
                </tr>
            </tbody>
        </table>
        <table width="1050" align="center" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none" border="0" cellspacing="0" cellpadding="0" dynamicarea=" 1,1 ">
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
                    <td width="80" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        数量</td>
                    <td width="80" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        单位</td>
                    <td width="80" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        单价</td>
                    <td width="100" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        税率</td>
                    <td width="80" class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        税额</td>
                    <td width="80" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        合计</td>
                    <td width="100" class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        是否促销政策</td>
                    <td width="100" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        备注</td>
                </tr>
                <tr>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                        <aspxform:xgridlineno id="XGridLineNo1" runat="server" width="62px" textalign="Center" backcolor="White" borderstyle="None" borderwidth="1px" Height="20px">1</aspxform:xgridlineno>
                    </td>
                    <td align="center" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlsal_order_detailmat_name" runat="server" FieldName="物料名称" XDataBind="SFDATA:sal_order_detail.mat_name" width="70px" DisableExpress="1"></aspxform:XTextBox>
                        <aspxform:XDataBrowserButton id="XDataBrowserButton2" runat="server" Width="21px" XDataSource="DataSource:SFDATA;TableName:ctl_material;Filter:first_code->var2,state->varState" DisplayColumns="mat_code:物料编码;mat_name:物料名称;mat_spec:规格;base_unit:基准单位" DataMap="mat_id->SFDATA:sal_order_detail.mat_id;mat_code->SFDATA:sal_order_detail.mat_code;mat_name->SFDATA:sal_order_detail.mat_name;mat_spec->SFDATA:sal_order_detail.mat_spesc;base_unit->SFDATA:sal_order_detail.order_stnum_unit" HiddenExpress="Global.StepName!='开始'"></aspxform:XDataBrowserButton>
                        <aspxform:XTextBox id="ctrl_sal_order_detailmat_id" runat="server" XDataBind="SFDATA:sal_order_detail.mat_id" width="100%" HiddenExpress="1"></aspxform:XTextBox>
                        <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator2" runat="server" Display="None" ForeColor="Red" ErrorMessage="请选择物料" ControlToValidate="ctrlsal_order_detailmat_name">物料名称</aspxform:XRequiredFieldValidator>
                    </td>
                    <td align="center" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlsal_order_detailmat_code" runat="server" FieldName="物料编码" XDataBind="SFDATA:sal_order_detail.mat_code" width="100%" DisableExpress="1"></aspxform:XTextBox>
                    </td>
                    <td align="center" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlsal_order_detailmat_spesc" runat="server" FieldName="规格" XDataBind="SFDATA:sal_order_detail.mat_spesc" width="100%" DisableExpress="1"></aspxform:XTextBox>
                    </td>
                    <td align="center" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlsal_order_detailorder_stnum" style="HEIGHT: 28px; WIDTH: 95px" runat="server" FieldName="数量" XDataBind="SFDATA:sal_order_detail.order_stnum" width="100%"></aspxform:XTextBox>
                        <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator3" runat="server" Display="None" ForeColor="Red" ErrorMessage="请填写数量" ControlToValidate="ctrlsal_order_detailorder_stnum">数量</aspxform:XRequiredFieldValidator>
                    </td>
                    <td align="center" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlsal_order_detailorder_stnum_unit" runat="server" FieldName="单位" XDataBind="SFDATA:sal_order_detail.order_stnum_unit" width="100%" DisableExpress="1"></aspxform:XTextBox>
                    </td>
                    <td align="center" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox5" runat="server" FieldName="单价" XDataBind="SFDATA:sal_order_detail.Price" width="100%" DisableExpress="SFDATA:sal_order_detail.IsFree"></aspxform:XTextBox>
                        <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator4" runat="server" Display="None" ForeColor="Red" ErrorMessage="请填写单价" ControlToValidate="XTextBox5">单价</aspxform:XRequiredFieldValidator>
                    </td>
                    <td align="left" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox6" runat="server" FieldName="税率" XDataBind="SFDATA:sal_order_detail.TaxRate" width="80px"></aspxform:XTextBox>
                        %</td>
                    <td width="99" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox14" runat="server" FieldName="税额" XDataBind="SFDATA:sal_order_detail.TaxNum" width="100%" DisableExpress="1" Express="SFDATA:sal_order_detail.item_price*SFDATA:sal_order_detail.TaxRate/100"></aspxform:XTextBox>
                    </td>
                    <td align="center" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlsal_order_detailitem_price" runat="server" FieldName="合计" XDataBind="SFDATA:sal_order_detail.item_price" width="100%" DisableExpress="1" Express="SFDATA:sal_order_detail.Price*SFDATA:sal_order_detail.order_stnum"></aspxform:XTextBox>
                    </td>
                    <td width="99" align="center" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XCheckBox id="XCheckBox1" runat="server" XDataBind="SFDATA:sal_order_detail.IsFree" Width="50px" onchange="onselectechanged(this)"></aspxform:XCheckBox>
                    </td>
                    <td align="center" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlsal_order_detailsales_remarks" runat="server" FieldName="备注" XDataBind="SFDATA:sal_order_detail.sales_remarks" width="100%"></aspxform:XTextBox>
                    </td>
                </tr>
            </tbody>
        </table>
        <br />
        <table width="786" align="center" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none" border="0" cellspacing="0" cellpadding="0" hiddenexpress="1">
            <tbody>
                <tr>
                    <td width="100" height="34" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                        经销商id</td>
                    <td width="686" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlsal_order_masterdealer_id" runat="server" XDataBind="SFDATA:sal_order_master.dealer_id" width="100%" DataMap="province_id->varprovince;city_id->varcity;area->vararea;tax_cer_no->vartaxno;registration_address->varregisteraddr;legal_preson->varlegalperson;phone_number->varphone" ValueToDisplayText="DataSource:SFDATA;TableName:ctl_dealer;FilterColumn:dealer_id;DisplayColumn:dealer_id"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td height="34">
                        CreateUser</td>
                    <td>
                        <aspxform:XTextBox id="XTextBox12" runat="server" XDataBind="SFDATA:sal_order_master.CreateUser" width="100%" DataMap="salesman_id->SFDATA:sal_order_master.salesman_id;salesman_name->SFDATA:sal_order_master.salesman_name;salesman_tel->SFDATA:sal_order_master.salesman_tel" BorderColor="#DCDCDC" ValueToDisplayText="DataSource:SFDATA;TableName:ctl_salesman;FilterColumn:SalesmanAccount;DisplayColumn:SalesmanAccount" BorderWidth="1"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td height="34" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                        销售员id</td>
                    <td style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox7" runat="server" XDataBind="SFDATA:sal_order_master.salesman_id" width="100%" ValueToDisplayText ReadOnly="True"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td height="34">
                        部门名称</td>
                    <td>
                        <aspxform:XTextBox id="XTextBox8" runat="server" XDataBind="SFDATA:sal_order_master.DeptName" width="100%" BorderColor="#DCDCDC" BorderWidth="1"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td height="34">
                        KL</td>
                    <td>
                        <aspxform:XTextBox id="XTextBox9" runat="server" XDataBind="varKL" width="100%" BorderColor="#DCDCDC" BorderWidth="1">KL</aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td height="34">
                        varState</td>
                    <td>
                        <aspxform:XTextBox id="XTextBox10" runat="server" XDataBind="varState" width="100%" BorderColor="#DCDCDC" BorderWidth="1">1</aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td height="34">
                        var2</td>
                    <td>
                        <aspxform:XTextBox id="XTextBox11" runat="server" XDataBind="var2" width="100%" BorderColor="#DCDCDC" BorderWidth="1">2</aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td height="34">
                        <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator1" runat="server" Display="None" ForeColor="Red" ErrorMessage="请选择经销商" ControlToValidate="ctrlsal_order_masterdealer_name">经销商名称</aspxform:XRequiredFieldValidator>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td height="34">
                        <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator5" runat="server" Display="None" ForeColor="Red" ErrorMessage="请填写已付款金额" ControlToValidate="ctrlsal_order_masterpay_price">已付款金额</aspxform:XRequiredFieldValidator>
                    </td>
                    <td>
                    </td>
                </tr>
            </tbody>
        </table>
    </form>
</body>
</html>
