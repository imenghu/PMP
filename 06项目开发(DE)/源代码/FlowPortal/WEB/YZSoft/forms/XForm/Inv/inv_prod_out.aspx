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
                        <strong><font size="5">产成品出库单</font></strong> 
                    </td>
                    <td width="200" class="header-td-sn">
                    </td>
                </tr>
            </tbody>
        </table>
        <table width="960" align="center" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none" border="0" cellspacing="0" cellpadding="0">
            <tbody>
                <tr>
                    <td width="100" height="25" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        产成品名称 
                    </td>
                    <td width="220" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlinv_prod_outmat_name" runat="server" width="180px" XDataBind="SFDATA:inv_prod_out.mat_name" DisableExpress="1"></aspxform:XTextBox>
                        <aspxform:XDataBrowserButton id="XDataBrowserButton1" runat="server" Width="21px" XDataSource="DataSource:SFDATA;TableName:v_ctl_material_prod;Filter:state->varState" DisplayColumns="mat_code:物料编码;mat_name:物料名称;mat_spec:规格;base_unit:基准单位" DataMap="mat_id->SFDATA:inv_prod_out.mat_id;mat_code->SFDATA:inv_prod_out.mat_code;mat_name->SFDATA:inv_prod_out.mat_name;mat_spec->SFDATA:inv_prod_out.mat_spec;base_unit->SFDATA:inv_prod_out.out_stnum_unit"></aspxform:XDataBrowserButton>
                    </td>
                    <td width="100" height="25" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        规格 
                    </td>
                    <td width="220" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlinv_prod_outmat_spec" runat="server" width="100%" XDataBind="SFDATA:inv_prod_out.mat_spec" DisableExpress="1"></aspxform:XTextBox>
                    </td>
                    <td width="100" height="25" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        产成品编码 
                    </td>
                    <td width="220" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlinv_prod_outmat_code" runat="server" width="100%" XDataBind="SFDATA:inv_prod_out.mat_code" DisableExpress="1" DataMap="mat_unit_name->varUnit;numerator->varNum" ValueToDisplayText="DataSource:SFDATA;TableName:v_ctl_material_prod;FilterColumn:mat_code;DisplayColumn:mat_code"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td width="100" height="25" class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        仓库名称 
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XDropDownList id="XDropDownList2" runat="server" XDataBind="SFDATA:inv_prod_out.depot_id" XDataSource="DataSource:SFDATA;TableName:ctl_depot" DataMap="depot_name->SFDATA:inv_prod_out.depot_name" ValueColumn="depot_id" DisplayColumn="depot_name" PromptText="--请选择--"></aspxform:XDropDownList>
                    </td>
                    <td width="100" height="25" class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        基准单位 
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlinv_prod_outout_stnum_unit" runat="server" width="100%" XDataBind="SFDATA:inv_prod_out.out_stnum_unit" DisableExpress="1"></aspxform:XTextBox>
                    </td>
                    <td width="100" height="25" class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        出库数量 
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlinv_prod_outout_stnum" runat="server" width="100%" XDataBind="SFDATA:inv_prod_out.out_stnum"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td width="100" height="25" class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        当前库存 
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlinv_prod_outmat_stnum" runat="server" width="100%" XDataBind="SFDATA:inv_prod_out.mat_stnum" DisableExpress="1" Express="varInvNum"></aspxform:XTextBox>
                    </td>
                    <td width="100" height="25" class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        出库人</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlinv_prod_outdep_userid" runat="server" width="100%" XDataBind="SFDATA:inv_prod_out.ProdUserName" DisableExpress="1"></aspxform:XTextBox>
                    </td>
                    <td width="100" height="25" class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        出库日期 
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XDateTimePicker id="ctrlinv_prod_outout_time" runat="server" width="100%" XDataBind="SFDATA:inv_prod_out.out_time"></aspxform:XDateTimePicker>
                    </td>
                </tr>
                <tr>
                    <td class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        出库体积</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox1" runat="server" width="100%" XDataBind="varTJ" DisableExpress="1" Express="SFDATA:inv_prod_out.out_stnum*varNum" BorderColor="#DCDCDC"></aspxform:XTextBox>
                    </td>
                    <td class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        单位</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox2" runat="server" width="100%" XDataBind="varUnit" DisableExpress="1" BorderColor="#DCDCDC"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                    </td>
                </tr>
                <tr>
                    <td width="100" height="25" class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        备注 
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none" colspan="5">
                        <aspxform:XTextBox id="ctrlinv_prod_outprod_out_remarks" runat="server" width="100%" XDataBind="SFDATA:inv_prod_out.prod_out_remarks" TextMode="MultiLine" Rows="5"></aspxform:XTextBox>
                    </td>
                </tr>
            </tbody>
        </table>
        <br />
        <table width="788" align="center" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none" border="0" cellspacing="0" cellpadding="0" hiddenexpress="1">
            <tbody>
                <tr>
                    <td width="153" height="34" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                        库房名称&nbsp;</td>
                    <td width="635" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlinv_prod_outdepot_id" runat="server" width="100%" XDataBind="SFDATA:inv_prod_out.depot_name"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td height="34" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                        物料id 
                    </td>
                    <td style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlinv_prod_outmat_id" runat="server" width="100%" XDataBind="SFDATA:inv_prod_out.mat_id"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td height="34" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                        varState</td>
                    <td style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox3" runat="server" XDataBind="varState" BorderColor="#DCDCDC" BorderWidth="1">1</aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td height="34" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                        varNum</td>
                    <td style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlinv_prod_outdep_org_id" runat="server" width="100%" XDataBind="varNum"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td height="34">
                        当前库存</td>
                    <td>
                        <aspxform:XDropDownList id="XDropDownList1" runat="server" XDataBind="varInvNum" XDataSource="DataSource:SFDATA;TableName:v_inv_prod;Filter:depot_id->SFDATA:inv_prod_out.depot_id,mat_code->SFDATA:inv_prod_out.mat_code" ValueColumn="invnum" DisplayColumn="invnum"></aspxform:XDropDownList>
                    </td>
                </tr>
                <tr>
                    <td height="34">
                        <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator1" runat="server" ControlToValidate="ctrlinv_prod_outmat_name" ErrorMessage="请选择产成品名称" ForeColor="Red" Display="None">产成品名称</aspxform:XRequiredFieldValidator>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td height="34">
                        <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator2" runat="server" ControlToValidate="XDropDownList2" ErrorMessage="请选择仓库名称" ForeColor="Red" Display="None">仓库名称</aspxform:XRequiredFieldValidator>
                    </td>
                    <td>
                        <aspxform:XRangeValidator id="XRangeValidator1" runat="server" Type="Double" ControlToValidate="ctrlinv_prod_outout_stnum" ErrorMessage="超出当前库存量" ForeColor="Red" Display="None" MinValueExpress="0" MaxValueExpress="SFDATA:inv_prod_out.mat_stnum"></aspxform:XRangeValidator>
                    </td>
                </tr>
                <tr>
                    <td height="34">
                        <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator3" runat="server" ControlToValidate="ctrlinv_prod_outout_stnum" ErrorMessage="请填写出库数量" ForeColor="Red" Display="None">出库数量</aspxform:XRequiredFieldValidator>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td height="34">
                        <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator4" runat="server" ControlToValidate="ctrlinv_prod_outout_time" ErrorMessage="请选择出库日期" ForeColor="Red" Display="None">出库日期</aspxform:XRequiredFieldValidator>
                    </td>
                    <td>
                    </td>
                </tr>
            </tbody>
        </table>
    </form>
</body>
</html>
