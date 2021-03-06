<%@ Page Language="C#" %>
<%@ Register TagPrefix="aspxform" Namespace="XFormDesigner.Framework.Web.UI" Assembly="XFormDesigner.Framework" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="../../../../../YZSoft/Forms/Style/FormGray.css" rel="stylesheet" />
</head>
<body>
<!--
$Scripts-->
<form runat="server">
    <table width="960" align="center" border="0" cellspacing="0" cellpadding="0">
        <tbody>
            <tr>
                <td width="200">
                </td>
                <td width="400" align="center" class="header-td-title">
                    <strong><font size="5">物料基本信息单</font></strong>
                </td>
                <td width="200" class="header-td-sn"></td>
            </tr>
        </tbody>
    </table>
                <table width="960" align="center" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none" border="0" cellspacing="0" cellpadding="0">
        <tbody>
                                                                        <tr>
                                                                                                                                        <tr>
                                                <td width="100" height="25" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                    一级分类
                </td>
                <td width="0" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                    <aspxform:XTextBox id='ctrlctl_materialfirst_name' width='100%' XDataBind='SFDATA:ctl_material.first_name' runat='server'></aspxform:XTextBox>
                </td>
                                                                                                                                                                                                                                                                        <td width="100" height="25" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                    二级分类
                </td>
                <td width="0" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                    <aspxform:XTextBox id='ctrlctl_materialsecond_name' width='100%' XDataBind='SFDATA:ctl_material.second_name' runat='server'></aspxform:XTextBox>
                </td>
                                                                                                                                                                                                                                                                        <td width="100" height="25" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                    三级分类
                </td>
                <td width="0" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                    <aspxform:XTextBox id='ctrlctl_materialthird_name' width='100%' XDataBind='SFDATA:ctl_material.third_name' runat='server'></aspxform:XTextBox>
                </td>
                                                                                                                                        <tr>
                                                                                                                                        <tr>
                                                <td width="100" height="25" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                    四级分类
                </td>
                <td width="0" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                    <aspxform:XTextBox id='ctrlctl_materialfourth_name' width='100%' XDataBind='SFDATA:ctl_material.fourth_name' runat='server'></aspxform:XTextBox>
                </td>
                                                                                                                                                            <td width="100" height="25" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                    物料编码
                </td>
                <td width="0" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                    <aspxform:XTextBox id='ctrlctl_materialmat_code' width='100%' XDataBind='SFDATA:ctl_material.mat_code' runat='server'></aspxform:XTextBox>
                </td>
                                                                                                                                                            <td width="100" height="25" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                    物料名称
                </td>
                <td width="0" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                    <aspxform:XTextBox id='ctrlctl_materialmat_name' width='100%' XDataBind='SFDATA:ctl_material.mat_name' runat='server'></aspxform:XTextBox>
                </td>
                                                                                                                                        <tr>
                                                <td width="100" height="25" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                    物料规格
                </td>
                <td width="0" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                    <aspxform:XTextBox id='ctrlctl_materialmat_spec' width='100%' XDataBind='SFDATA:ctl_material.mat_spec' runat='server'></aspxform:XTextBox>
                </td>
                                                                                                                                                            <td width="100" height="25" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                    基准单位
                </td>
                <td width="0" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                    <aspxform:XTextBox id='ctrlctl_materialbase_unit' width='100%' XDataBind='SFDATA:ctl_material.base_unit' runat='server'></aspxform:XTextBox>
                </td>
                                                                                                                                                            <td width="100" height="25" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                    是否干散物料
                </td>
                <td width="0" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                    <aspxform:XTextBox id='ctrlctl_materialif_drybulk' width='100%' XDataBind='SFDATA:ctl_material.if_drybulk' runat='server'></aspxform:XTextBox>
                </td>
                                                                                                                                        <tr>
                                                <td width="100" height="25" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                    是否统一采购
                </td>
                <td width="0" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                    <aspxform:XTextBox id='ctrlctl_materialif_group_pur' width='100%' XDataBind='SFDATA:ctl_material.if_group_pur' runat='server'></aspxform:XTextBox>
                </td>
                                                                                                                                                            <td width="100" height="25" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                    是否协议物料
                </td>
                <td width="0" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                    <aspxform:XTextBox id='ctrlctl_materialif_greement' width='100%' XDataBind='SFDATA:ctl_material.if_greement' runat='server'></aspxform:XTextBox>
                </td>
                                                                                                                                                            <td width="100" height="25" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                    是否正式物料
                </td>
                <td width="0" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                    <aspxform:XTextBox id='ctrlctl_materialmast_state' width='100%' XDataBind='SFDATA:ctl_material.mast_state' runat='server'></aspxform:XTextBox>
                </td>
                                                                                                                                        <tr>
                                                <td width="100" height="25" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                    创建时间
                </td>
                <td width="0" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                    <aspxform:XDateTimePicker id='ctrlctl_materialcreate_time' width='100%' XDataBind='SFDATA:ctl_material.create_time' runat='server'></aspxform:XDateTimePicker>
                </td>
                                                                                                                                                            <td width="100" height="25" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                    更新时间
                </td>
                <td width="0" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                    <aspxform:XDateTimePicker id='ctrlctl_materialupdate_time' width='100%' XDataBind='SFDATA:ctl_material.update_time' runat='server'></aspxform:XDateTimePicker>
                </td>
                                                                                                                                                            <td width="100" height="25" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                    备注
                </td>
                <td width="0" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                    <aspxform:XTextBox id='ctrlctl_materialremark' width='100%' XDataBind='SFDATA:ctl_material.remark' runat='server'></aspxform:XTextBox>
                </td>
                                                                                                </tbody>
    </table>
                </form>
</body>
</html>