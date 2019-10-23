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
                        <strong><font size="5">产成品入库单</font></strong> 
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
                        <aspxform:XTextBox id="ctrlinv_prod_inmat_name" runat="server" XDataBind="SFDATA:inv_prod_in.mat_name" width="180px" DisableExpress="1"></aspxform:XTextBox>
                        <aspxform:XDataBrowserButton id="XDataBrowserButton1" runat="server" Width="21px" XDataSource="DataSource:SFDATA;TableName:v_ctl_material_prod;Filter:state->varState" DisplayColumns="mat_code:物料编码;mat_name:物料名称;mat_spec:规格;base_unit:基准单位" DataMap="mat_id->SFDATA:inv_prod_in.mat_id;mat_code->SFDATA:inv_prod_in.mat_code;mat_name->SFDATA:inv_prod_in.mat_name;mat_spec->SFDATA:inv_prod_in.mat_spec;base_unit->SFDATA:inv_prod_in.in_stnum_unit"></aspxform:XDataBrowserButton>
                    </td>
                    <td width="100" height="25" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        规格 
                    </td>
                    <td width="220" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlinv_prod_inmat_spec" runat="server" XDataBind="SFDATA:inv_prod_in.mat_spec" width="100%" DisableExpress="1"></aspxform:XTextBox>
                    </td>
                    <td width="100" height="25" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        产成品编码 
                    </td>
                    <td width="220" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlinv_prod_inmat_code" runat="server" XDataBind="SFDATA:inv_prod_in.mat_code" width="100%" DisableExpress="1" DataMap="mat_unit_name->varUnit;numerator->varNum" ValueToDisplayText="DataSource:SFDATA;TableName:v_ctl_material_prod;FilterColumn:mat_code;DisplayColumn:mat_code"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td width="100" height="25" class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        仓库名称 
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XDropDownList id="XDropDownList2" runat="server" XDataBind="SFDATA:inv_prod_in.depot_id" XDataSource="DataSource:SFDATA;TableName:ctl_depot" DataMap="depot_name->SFDATA:inv_prod_in.depot_name" ValueColumn="depot_id" DisplayColumn="depot_name" PromptText="--请选择--"></aspxform:XDropDownList>
                    </td>
                    <td width="100" height="25" class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        基准单位 
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlinv_prod_inin_stnum_unit" runat="server" XDataBind="SFDATA:inv_prod_in.in_stnum_unit" width="100%" DisableExpress="1"></aspxform:XTextBox>
                    </td>
                    <td width="100" height="25" class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        入库数量 
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlinv_prod_inin_stnum" runat="server" XDataBind="SFDATA:inv_prod_in.in_stnum" width="100%"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td width="100" height="25" class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        生产部门 
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlinv_prod_inprod_org_id" runat="server" XDataBind="SFDATA:inv_prod_in.ProdDeptName" width="180px" DisableExpress="1"></aspxform:XTextBox>
                        <aspxform:XSelectOUButton id="XSelectOUButton1" runat="server" Width="21px" DataMap="OUName->SFDATA:inv_prod_in.ProdDeptName;OUCode->SFDATA:inv_prod_in.prod_org_id"></aspxform:XSelectOUButton>
                    </td>
                    <td width="100" height="25" class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        入库人 
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlinv_prod_indep_userid" runat="server" XDataBind="SFDATA:inv_prod_in.ProdUserName" width="180px" DisableExpress="1"></aspxform:XTextBox>
                        <aspxform:XSelectUserButton id="XSelectUserButton1" runat="server" Width="21px" DataMap="Account->SFDATA:inv_prod_in.ProdUser;DisplayName->SFDATA:inv_prod_in.ProdUserName"></aspxform:XSelectUserButton>
                    </td>
                    <td width="100" height="25" class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        入库日期 
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XDateTimePicker id="ctrlinv_prod_inin_time" runat="server" XDataBind="SFDATA:inv_prod_in.in_time" width="100%"></aspxform:XDateTimePicker>
                    </td>
                </tr>
                <tr>
                    <td class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        入库体积</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox1" runat="server" XDataBind="varTJ" width="100%" DisableExpress="1" BorderColor="#DCDCDC" BorderWidth="1" Express="SFDATA:inv_prod_in.in_stnum*varNum" BorderStyle="None"></aspxform:XTextBox>
                    </td>
                    <td class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        单位</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox2" runat="server" XDataBind="varUnit" width="100%" DisableExpress="1" BorderColor="#DCDCDC" BorderWidth="1" BorderStyle="None"></aspxform:XTextBox>
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
                        <aspxform:XTextBox id="ctrlinv_prod_inprod_in_remarks" runat="server" XDataBind="SFDATA:inv_prod_in.prod_in_remarks" width="100%" TextMode="MultiLine" Rows="5"></aspxform:XTextBox>
                    </td>
                </tr>
            </tbody>
        </table>
        <br />
        <table width="779" align="center" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none" border="0" cellspacing="0" cellpadding="0" hiddenexpress="1">
            <tbody>
                <tr>
                    <td width="99" height="34" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                        物料id</td>
                    <td width="680" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlinv_prod_inmat_id" runat="server" XDataBind="SFDATA:inv_prod_in.mat_id" width="100%"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td height="34" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                        库房名称</td>
                    <td style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlinv_prod_indepot_id" runat="server" XDataBind="SFDATA:inv_prod_in.depot_name" width="100%"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td height="34" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                        生产部门编码</td>
                    <td style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlinv_prod_indep_org_id" runat="server" XDataBind="SFDATA:inv_prod_in.prod_org_id" width="100%"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td height="34">
                        入库人帐号</td>
                    <td>
                        <aspxform:XTextBox id="XTextBox7" runat="server" XDataBind="SFDATA:inv_prod_in.ProdUser" BorderColor="#DCDCDC" BorderWidth="1"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td height="34">
                        varState</td>
                    <td>
                        <aspxform:XTextBox id="XTextBox3" runat="server" XDataBind="varState" BorderColor="#DCDCDC" BorderWidth="1">1</aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td height="34">
                        varNum</td>
                    <td>
                        <aspxform:XTextBox id="XTextBox6" runat="server" XDataBind="varNum" BorderColor="#DCDCDC" BorderWidth="1"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator1" runat="server" ControlToValidate="ctrlinv_prod_inmat_name" ErrorMessage="请选择产成品名称" ForeColor="Red" Display="None">成品名称</aspxform:XRequiredFieldValidator>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td>
                        <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator2" runat="server" ControlToValidate="XDropDownList2" ErrorMessage="请选择仓库名称" ForeColor="Red" Display="None">仓库名称</aspxform:XRequiredFieldValidator>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td>
                        <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator3" runat="server" ControlToValidate="ctrlinv_prod_inin_stnum" ErrorMessage="请填写入库数量" ForeColor="Red" Display="None">入库数量</aspxform:XRequiredFieldValidator>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td>
                        <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator4" runat="server" ControlToValidate="ctrlinv_prod_inprod_org_id" ErrorMessage="请选择生产部门" ForeColor="Red" Display="None">生产部门</aspxform:XRequiredFieldValidator>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td>
                        <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator5" runat="server" ControlToValidate="ctrlinv_prod_indep_userid" ErrorMessage="请选择入库人" ForeColor="Red" Display="None">入库人</aspxform:XRequiredFieldValidator>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td>
                        <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator6" runat="server" ControlToValidate="ctrlinv_prod_inin_time" ErrorMessage="请选择入库日期" ForeColor="Red" Display="None">入库日期</aspxform:XRequiredFieldValidator>
                    </td>
                    <td>
                    </td>
                </tr>
            </tbody>
        </table>
    </form>
</body>
</html>
