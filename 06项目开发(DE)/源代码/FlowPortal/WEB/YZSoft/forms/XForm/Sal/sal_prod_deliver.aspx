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
        function getQueryString(name) {
            var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)", "i");
            var r = window.location.search.substr(1).match(reg);
            if (r != null) return unescape(r[2]); return null;
        }
        Ext.onReady(function () {
            var purtaskid=getQueryString('proctaskid');
            Ext.get("xtxtPurTaskId").down('.yz-xform-field-ele').dom.value = purtaskid;
            XFormOnChange(document.getElementById("xtxtPurTaskId"));
        })
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
                        <strong><font size="5">订单发货</font></strong> 
                    </td>
                    <td width="200" class="header-td-sn" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none">
                    </td>
                </tr>
            </tbody>
        </table>
        <table width="960" align="center" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none" border="0" cellspacing="0" cellpadding="0">
            <tbody>
                <tr>
                    <td width="100" height="25" class="xfld" style="BORDER-TOP: #d1d1d1 1px solid; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        订单号 
                    </td>
                    <td style="BORDER-TOP: #d1d1d1 1px solid; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlsal_prod_deliversale_order" runat="server" DisableExpress="1" width="100%" XDataBind="SFDATA:sal_prod_deliver.sale_order" ReadOnly="True"></aspxform:XTextBox>
                    </td>
                    <td width="100" height="25" class="xfld" style="BORDER-TOP: #d1d1d1 1px solid; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        经销商名称</td>
                    <td style="BORDER-TOP: #d1d1d1 1px solid; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox2" runat="server" DisableExpress="1" width="100%" XDataBind="vardealer_name" ReadOnly="True" BorderStyle="None" BorderWidth="1" BorderColor="#DCDCDC"></aspxform:XTextBox>
                    </td>
                    <td width="100" height="25" class="xfld" style="BORDER-TOP: #d1d1d1 1px solid; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        收货人电话&nbsp;</td>
                    <td style="BORDER-TOP: #d1d1d1 1px solid; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlsal_prod_deliverconsignee_tel" runat="server" DisableExpress="1" width="100%" XDataBind="SFDATA:sal_prod_deliver.consignee_tel" ReadOnly="True"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        收货人姓名 
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlsal_prod_deliverconsignee_name" runat="server" DisableExpress="1" width="100%" XDataBind="SFDATA:sal_prod_deliver.consignee_name" ReadOnly="True"></aspxform:XTextBox>
                    </td>
                    <td class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        物料名称 
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlsal_prod_delivermat_name" runat="server" DisableExpress="1" width="100%" XDataBind="SFDATA:sal_prod_deliver.mat_name" ReadOnly="True"></aspxform:XTextBox>
                    </td>
                    <td class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        规格 
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlsal_prod_delivermat_spesc" runat="server" DisableExpress="1" width="100%" XDataBind="SFDATA:sal_prod_deliver.mat_spesc" ReadOnly="True"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td width="100" height="34" class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        物料编码 
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlsal_prod_delivermat_code" runat="server" DisableExpress="1" width="100%" XDataBind="SFDATA:sal_prod_deliver.mat_code" ReadOnly="True"></aspxform:XTextBox>
                    </td>
                    <td width="100" class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        单位 
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlsal_prod_deliverdeliver_stnum_unit" runat="server" DisableExpress="1" width="100%" XDataBind="SFDATA:sal_prod_deliver.deliver_stnum_unit" ReadOnly="True"></aspxform:XTextBox>
                    </td>
                    <td width="100" class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        实际发货时间 
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XDateTimePicker id="XDateTimePicker1" runat="server" XDataBind="SFDATA:sal_prod_deliver.deliver_time" BorderStyle="None" BorderWidth="1" BorderColor="#DCDCDC"></aspxform:XDateTimePicker>
                    </td>
                </tr>
                <tr>
                    <td width="100" height="25" class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        订单数量 
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox1" runat="server" DisableExpress="1" width="100%" XDataBind="varstnum" ReadOnly="True" BorderStyle="None" BorderWidth="1" BorderColor="#DCDCDC"></aspxform:XTextBox>
                    </td>
                    <td width="100" height="25" class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        已发数量</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox3" runat="server" DisableExpress="1" width="100%" XDataBind="vardelivernum" ReadOnly="True" BorderStyle="None" BorderWidth="1" BorderColor="Gainsboro">0</aspxform:XTextBox>
                    </td>
                    <td width="100" height="25" class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        可发数量</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlsal_prod_deliverdeliver_stnum" runat="server" width="100%" XDataBind="SFDATA:sal_prod_deliver.deliver_stnum" Express="varstnum-vardelivernum"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td width="100" height="25" class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        运输人 
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlsal_prod_delivertrans_name" runat="server" width="100%" XDataBind="SFDATA:sal_prod_deliver.trans_name"></aspxform:XTextBox>
                    </td>
                    <td width="100" height="25" class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        运输人电话 
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlsal_prod_delivertrans_mobile" runat="server" width="100%" XDataBind="SFDATA:sal_prod_deliver.trans_mobile"></aspxform:XTextBox>
                    </td>
                    <td width="100" height="25" class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        车牌号 
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlsal_prod_deliverplate_number" runat="server" width="100%" XDataBind="SFDATA:sal_prod_deliver.plate_number"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td width="100" height="25" class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        收货地址 
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlsal_prod_deliverconsignee_addr" runat="server" width="100%" XDataBind="SFDATA:sal_prod_deliver.consignee_addr"></aspxform:XTextBox>
                    </td>
                    <td width="100" height="25" class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        备注 
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none" colspan="3">
                        <aspxform:XTextBox id="ctrlsal_prod_deliverdeliver_remarks" runat="server" width="100%" XDataBind="SFDATA:sal_prod_deliver.deliver_remarks"></aspxform:XTextBox>
                    </td>
                </tr>
            </tbody>
        </table>
        <br />
        <table width="800" align="center" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none" border="0" cellspacing="0" cellpadding="0" hiddenexpress="1">
            <tbody>
            </tbody>
        </table>
        <table width="800" align="center" border="0" cellspacing="0" cellpadding="0" hiddenexpress="1">
            <tbody>
                <tr>
                    <td width="266">
                        订单明细id</td>
                    <td width="267">
                        <aspxform:XTextBox id="xtxtPurTaskId" runat="server" width="100%" XDataBind="SFDATA:sal_prod_deliver.order_detail_id" BorderWidth="1" BorderColor="#DCDCDC" ValueToDisplayText="DataSource:SFDATA;TableName:v_sal_order_detail;FilterColumn:order_detail_id;DisplayColumn:order_detail_id" DataMap="sale_order->SFDATA:sal_prod_deliver.sale_order;dealer_name->vardealer_name;consignee_name->SFDATA:sal_prod_deliver.consignee_name;consignee_tel->SFDATA:sal_prod_deliver.consignee_tel;mat_name->SFDATA:sal_prod_deliver.mat_name;mat_code->SFDATA:sal_prod_deliver.mat_code;mat_spesc->SFDATA:sal_prod_deliver.mat_spesc;order_stnum->varstnum;order_stnum_unit->SFDATA:sal_prod_deliver.deliver_stnum_unit;deliver_stnum->vardelivernum"></aspxform:XTextBox>
                    </td>
                    <td width="267">
                    </td>
                </tr>
                <tr>
                    <td height="32">
                        <aspxform:XCompareValidator id="XCompareValidator1" runat="server" Display="None" ForeColor="Red" ErrorMessage="发货数量不能超过可发数量" ValueToCompareExpress="varstnum-vardelivernum" ControlToValidate="ctrlsal_prod_deliverdeliver_stnum" Operator="LessThanEqual">可发数量</aspxform:XCompareValidator>
                    </td>
                    <td>
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
