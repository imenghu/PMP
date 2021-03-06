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
                        <strong><font size="5">物料基本信息单</font></strong> 
                    </td>
                    <td width="200" class="header-td-sn">
                    </td>
                </tr>
            </tbody>
        </table>
        <table width="960" align="center" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none" border="0" cellspacing="0" cellpadding="0">
            <tbody>
                <tr>
                </tr>
                <tr>
                    <td width="100" height="34" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        一级分类 
                    </td>
                    <td width="214" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XDropDownList id="XDropDownList5" runat="server" DisplayColumn="first_name" ValueColumn="first_code" PromptText="--请选择--" XDataSource="DataSource:SFDATA;TableName:v_ctl_material_class_first" DataMap="first_name->SFDATA:ctl_material.first_name" XDataBind="SFDATA:ctl_material.first_code"></aspxform:XDropDownList>
                    </td>
                    <td width="100" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        二级分类 
                    </td>
                    <td width="214" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XDropDownList id="XDropDownList6" runat="server" DisplayColumn="second_name" ValueColumn="second_code" PromptText="--请选择--" XDataSource="DataSource:SFDATA;ProcedureName:p_ctl_material_class_second;Filter:@first_code->SFDATA:ctl_material.first_code" DataMap="second_name->SFDATA:ctl_material.second_name" XDataBind="SFDATA:ctl_material.second_code"></aspxform:XDropDownList>
                    </td>
                    <td width="100" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        三级分类 
                    </td>
                    <td width="214" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XDropDownList id="XDropDownList7" runat="server" DisplayColumn="third_name" ValueColumn="third_code" PromptText="--请选择--" XDataSource="DataSource:SFDATA;ProcedureName:p_ctl_material_class_third;Filter:@first_code->SFDATA:ctl_material.first_code,@second_code->SFDATA:ctl_material.second_code" DataMap="third_name->SFDATA:ctl_material.third_name" XDataBind="SFDATA:ctl_material.third_code"></aspxform:XDropDownList>
                    </td>
                </tr>
                <tr>
                </tr>
                <tr>
                    <td height="34" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        四级分类 
                    </td>
                    <td style="BORDER-TOP: black 1px solid; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XDropDownList id="XDropDownList8" runat="server" DisplayColumn="fourth_name" ValueColumn="fourth_code" PromptText="--请选择--" XDataSource="DataSource:SFDATA;ProcedureName:p_ctl_material_class_fourth;Filter:@first_code->SFDATA:ctl_material.first_code,@second_code->SFDATA:ctl_material.second_code,@third_code->SFDATA:ctl_material.third_code" DataMap="fourth_name->SFDATA:ctl_material.fourth_name" XDataBind="SFDATA:ctl_material.fourth_code"></aspxform:XDropDownList>
                    </td>
                    <td class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        物料编码 
                    </td>
                    <td style="BORDER-TOP: black 1px solid; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlctl_materialmat_code" runat="server" XDataBind="SFDATA:ctl_material.mat_code" ValueToDisplayText width="100%" DisableExpress="1"></aspxform:XTextBox>
                    </td>
                    <td class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        物料名称 
                    </td>
                    <td style="BORDER-TOP: black 1px solid; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlctl_materialmat_name" runat="server" XDataBind="SFDATA:ctl_material.mat_name" width="100%"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td height="34" class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        物料规格&nbsp;</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlctl_materialmat_spec" runat="server" XDataBind="SFDATA:ctl_material.mat_spec" width="100%"></aspxform:XTextBox>
                    </td>
                    <td class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        基准单位 
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlctl_materialbase_unit" runat="server" XDataBind="SFDATA:ctl_material.base_unit" width="100%"></aspxform:XTextBox>
                    </td>
                    <td class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        是否干散物料 
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XDropDownList id="XDropDownList3" runat="server" XDataBind="SFDATA:ctl_material.if_drybulk">
                            <asp:ListItem Value="1">是</asp:ListItem>
                            <asp:ListItem Selected="True" Value="0">否</asp:ListItem>
                        </aspxform:XDropDownList>
                    </td>
                </tr>
                <tr>
                    <td height="34" class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        是否统一采购 
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XDropDownList id="XDropDownList1" runat="server" XDataBind="SFDATA:ctl_material.if_group_pur">
                            <asp:ListItem Value="1">是</asp:ListItem>
                            <asp:ListItem Selected="True" Value="0">否</asp:ListItem>
                        </aspxform:XDropDownList>
                    </td>
                    <td class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        是否协议物料 
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XDropDownList id="XDropDownList2" runat="server" XDataBind="SFDATA:ctl_material.if_greement">
                            <asp:ListItem Value="1">是</asp:ListItem>
                            <asp:ListItem Selected="True" Value="0">否</asp:ListItem>
                        </aspxform:XDropDownList>
                    </td>
                    <td class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        是否正式物料 
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XDropDownList id="XDropDownList4" runat="server" XDataBind="SFDATA:ctl_material.mast_state">
                            <asp:ListItem Selected="True" Value="1">是</asp:ListItem>
                            <asp:ListItem Value="0">否</asp:ListItem>
                        </aspxform:XDropDownList>
                    </td>
                </tr>
                <tr>
                    <td height="34" class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        备注 
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none" colspan="3">
                        <aspxform:XTextBox id="ctrlctl_materialremark" runat="server" XDataBind="SFDATA:ctl_material.remark" width="100%"></aspxform:XTextBox>
                    </td>
                    <td class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        创建人 
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlctl_materialCreateUserName" runat="server" XDataBind="SFDATA:ctl_material.CreateUserName" width="100%" DisableExpress="1"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td height="34" class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        创建时间&nbsp;&nbsp;</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XDateTimePicker id="ctrlctl_materialcreate_time" runat="server" XDataBind="SFDATA:ctl_material.create_time" width="100%" DisplayOnly="True"></aspxform:XDateTimePicker>
                    </td>
                    <td class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        最后更新人&nbsp;</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlctl_materialUpdateUserName" runat="server" XDataBind="SFDATA:ctl_material.UpdateUserName" width="100%" DisableExpress="1"></aspxform:XTextBox>
                    </td>
                    <td class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        更新时间 
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XDateTimePicker id="XDateTimePicker1" runat="server" XDataBind="SFDATA:ctl_material.update_time" width="100%" DisplayOnly="True"></aspxform:XDateTimePicker>
                    </td>
                </tr>
            </tbody>
        </table>
        <br />
        <table width="800" align="center" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none" border="0" cellspacing="0" cellpadding="0" hiddenexpress="1">
            <tbody>
                <tr>
                    <td width="100" height="25" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                        一级分类 
                    </td>
                    <td style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none" colspan="2">
                        <aspxform:XTextBox id="ctrlctl_materialfirst_code" runat="server" XDataBind="SFDATA:ctl_material.first_name" width="100%"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td width="100" height="25" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                        二级分类 
                    </td>
                    <td style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none" colspan="2">
                        <aspxform:XTextBox id="ctrlctl_materialsecond_code" runat="server" XDataBind="SFDATA:ctl_material.second_name" width="100%"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td width="100" height="25" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                        三级分类 
                    </td>
                    <td style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none" colspan="2">
                        <aspxform:XTextBox id="ctrlctl_materialthird_code" runat="server" XDataBind="SFDATA:ctl_material.third_name" width="100%"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td width="100" height="25" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                        四级分类 
                    </td>
                    <td style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none" colspan="2">
                        <aspxform:XTextBox id="ctrlctl_materialfourth_code" runat="server" XDataBind="SFDATA:ctl_material.fourth_name" width="100%"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td class="xfld">
                        物料编码</td>
                    <td colspan="2">
                        <aspxform:XDropDownList id="XDropDownList9" runat="server" DisplayColumn="Column1" ValueColumn="Column1" XDataSource="DataSource:SFDATA;ProcedureName:p_ctl_material_getcode;Filter:@first_code->SFDATA:ctl_material.first_code,@second_code->SFDATA:ctl_material.second_code,@third_code->SFDATA:ctl_material.third_code,@fourth_code->SFDATA:ctl_material.fourth_code" DataMap="Column1->SFDATA:ctl_material.mat_code"></aspxform:XDropDownList>
                    </td>
                </tr>
                <tr>
                    <td>
                        <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator1" runat="server" ControlToValidate="XDropDownList5" ErrorMessage="请选择一级分类" ForeColor="Red" Display="None">一级分类</aspxform:XRequiredFieldValidator>
                    </td>
                    <td width="344">
                        <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator2" runat="server" ControlToValidate="XDropDownList6" ErrorMessage="请选择二级分类" ForeColor="Red" Display="None">二级分类</aspxform:XRequiredFieldValidator>
                    </td>
                    <td width="344">
                        <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator3" runat="server" ControlToValidate="XDropDownList7" ErrorMessage="请选择三级分类" ForeColor="Red" Display="None">三级分类</aspxform:XRequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator4" runat="server" ControlToValidate="XDropDownList8" ErrorMessage="请选择四级分类" ForeColor="Red" Display="None">四级分类</aspxform:XRequiredFieldValidator>
                    </td>
                    <td>
                        <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator5" runat="server" ControlToValidate="ctrlctl_materialmat_code" ErrorMessage=" 请填写物料编码" ForeColor="Red" Display="None">物料编码</aspxform:XRequiredFieldValidator>
                    </td>
                    <td>
                        <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator6" runat="server" ControlToValidate="ctrlctl_materialmat_name" ErrorMessage="请填写物料名称" ForeColor="Red" Display="None">物料名称</aspxform:XRequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td height="32">
                    </td>
                    <td>
                        <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator8" runat="server" ControlToValidate="ctrlctl_materialbase_unit" ErrorMessage="请填写基准单位" ForeColor="Red" Display="None">基准单位</aspxform:XRequiredFieldValidator>
                    </td>
                    <td>
                        <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator9" runat="server" ControlToValidate="XDropDownList3" ErrorMessage="请选择是否干散物料" ForeColor="Red" Display="None">是否干散物料</aspxform:XRequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator10" runat="server" ControlToValidate="XDropDownList1" ErrorMessage="请选择是否统一采购" ForeColor="Red" Display="None">是否统一采购</aspxform:XRequiredFieldValidator>
                    </td>
                    <td>
                        <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator11" runat="server" ControlToValidate="XDropDownList2" ErrorMessage="请选择是否协议物料" ForeColor="Red" Display="None">是否协议物料</aspxform:XRequiredFieldValidator>
                    </td>
                    <td>
                        <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator12" runat="server" ControlToValidate="XDropDownList4" ErrorMessage="请选择是否正式物料" ForeColor="Red" Display="None">是否正式物料</aspxform:XRequiredFieldValidator>
                    </td>
                </tr>
            </tbody>
        </table>
    </form>
</body>
</html>
