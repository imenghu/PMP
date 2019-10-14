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
                        <strong><font size="5">供应商物料信息维护</font></strong> 
                    </td>
                    <td width="200" class="header-td-sn">
                    </td>
                </tr>
            </tbody>
        </table>
        <table width="960" align="center" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none" border="0" cellspacing="0" cellpadding="0">
            <tbody>
                <tr>
                    <td width="100" height="34" class="xfld" style="BORDER-TOP: #d1d1d1 1px solid; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        供应商名称 
                    </td>
                    <td width="216" style="BORDER-TOP: #d1d1d1 1px solid; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlctl_vendorvendor_name" runat="server" width="100%" XDataBind="SFDATA:ctl_vendor.vendor_name" DisableExpress="1"></aspxform:XTextBox>
                    </td>
                    <td width="100" class="xfld" style="BORDER-TOP: #d1d1d1 1px solid; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        纳税人登记号 
                    </td>
                    <td width="216" style="BORDER-TOP: #d1d1d1 1px solid; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlctl_vendortax_cer_no" runat="server" width="100%" XDataBind="SFDATA:ctl_vendor.tax_cer_no" DisableExpress="1"></aspxform:XTextBox>
                    </td>
                    <td width="100" class="xfld" style="BORDER-TOP: #d1d1d1 1px solid; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        邮编 
                    </td>
                    <td width="216" style="BORDER-TOP: #d1d1d1 1px solid; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlctl_vendorvendor_zipcode" runat="server" width="100%" XDataBind="SFDATA:ctl_vendor.vendor_zipcode" DisableExpress="1"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td height="34" class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        联系人 
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlctl_vendorvendor_contact" runat="server" width="100%" XDataBind="SFDATA:ctl_vendor.vendor_contact" DisableExpress="1"></aspxform:XTextBox>
                    </td>
                    <td class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        联系电话 
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlctl_vendorvendor_tel" runat="server" width="100%" XDataBind="SFDATA:ctl_vendor.vendor_tel" DisableExpress="1"></aspxform:XTextBox>
                    </td>
                    <td class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        邮箱 
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlctl_vendorvendor_email" runat="server" width="100%" XDataBind="SFDATA:ctl_vendor.vendor_email" DisableExpress="1"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td height="34" class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        微信 
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlctl_vendorvendor_wechat" runat="server" width="100%" XDataBind="SFDATA:ctl_vendor.vendor_wechat" DisableExpress="1"></aspxform:XTextBox>
                    </td>
                    <td class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        QQ 
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlctl_vendorvendor_qq" runat="server" width="100%" XDataBind="SFDATA:ctl_vendor.vendor_qq" DisableExpress="1"></aspxform:XTextBox>
                    </td>
                    <td class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        是否正式供应商 
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XDropDownList id="XDropDownList1" runat="server" XDataBind="SFDATA:ctl_vendor.vendor_state" DisableExpress="1" PromptText="--请选择--">
                            <asp:ListItem Value="1">是</asp:ListItem>
                            <asp:ListItem Value="0">否</asp:ListItem>
                        </aspxform:XDropDownList>
                    </td>
                </tr>
                <tr>
                    <td height="34" class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        地址 
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none" colspan="5">
                        <aspxform:XTextBox id="ctrlctl_vendorvendor_addr" runat="server" width="100%" XDataBind="SFDATA:ctl_vendor.vendor_addr" DisableExpress="1"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td height="34" class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        创建人 
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlctl_vendorCreateUserName" runat="server" width="100%" XDataBind="SFDATA:ctl_vendor.CreateUserName" DisableExpress="1"></aspxform:XTextBox>
                    </td>
                    <td class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        最后更新人</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlctl_vendorUpdateUserName" runat="server" width="100%" XDataBind="SFDATA:ctl_vendor.UpdateUserName" DisableExpress="1"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                    </td>
                </tr>
            </tbody>
        </table>
        <table width="960" align="center" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none" border="0" cellspacing="0" cellpadding="0" dynamicarea=" 2,1 ">
            <tbody>
                <tr>
                    <td height="25" class="xttl" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: #d1d1d1 1px solid" colspan="5">
                        供应商提供物料 
                    </td>
                    <td align="right" class="xttl" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XDataBrowserButton id="XDataBrowserButton1" runat="server" XClass="YZSoft.Forms.Field.DataBrowserButton" Text="选择物料" Width="66px" XDataSource="DataSource:SFDATA;TableName:ctl_material" PopupWndWidth="-1" PopupWndHeight="-1" UseSubmitBehavior="False" DisplayColumns="mat_code:物料编码;mat_name:物料名称;mat_spec:规格;base_unit:基准单位" MultiSelect="True" DataMap="mat_code->SFDATA:ctl_vendor_mat.mat_code;mat_name->SFDATA:ctl_vendor_mat.mat_name;mat_spec->SFDATA:ctl_vendor_mat.mat_spec"></aspxform:XDataBrowserButton>
                        <aspxform:XAddBlockButton id="XAddBlockButton1" runat="server" Text="新增" DataSource="SFDATA" TableName="ctl_vendor_mat"></aspxform:XAddBlockButton>
                    </td>
                </tr>
                <tr>
                    <td width="50" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: #d1d1d1 1px solid; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: #d1d1d1 1px solid">
                        序号</td>
                    <td width="200" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: #d1d1d1 1px solid; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        物料编码</td>
                    <td width="200" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: #d1d1d1 1px solid; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        物料名称</td>
                    <td width="180" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: #d1d1d1 1px solid; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        规格</td>
                    <td width="150" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: #d1d1d1 1px solid; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        创建人</td>
                    <td width="180" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: #d1d1d1 1px solid; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        最后更新人</td>
                </tr>
                <tr>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: #d1d1d1 1px solid; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: #d1d1d1 1px solid">
                        <aspxform:xgridlineno id="XGridLineNo1" runat="server" width="100%" borderwidth="1" borderstyle="None" backcolor="White" textalign="Center">1</aspxform:xgridlineno>
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: #d1d1d1 1px solid; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlctl_vendor_matmat_code" runat="server" width="170px" XDataBind="SFDATA:ctl_vendor_mat.mat_code" DisableExpress="1"></aspxform:XTextBox>
                        <aspxform:XDataBrowserButton id="XDataBrowserButton2" runat="server" Width="21px" XDataSource="DataSource:SFDATA;TableName:ctl_material" DisplayColumns="mat_code:物料编码;mat_name:物料名称;mat_spec:规格;base_unit:基准单位" DataMap="mat_code->SFDATA:ctl_vendor_mat.mat_code;mat_name->SFDATA:ctl_vendor_mat.mat_name;mat_spec->SFDATA:ctl_vendor_mat.mat_spec"></aspxform:XDataBrowserButton>
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: #d1d1d1 1px solid; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlctl_vendor_matmat_name" runat="server" width="100%" XDataBind="SFDATA:ctl_vendor_mat.mat_name" DisableExpress="1"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: #d1d1d1 1px solid; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlctl_vendor_matmat_spec" runat="server" width="100%" XDataBind="SFDATA:ctl_vendor_mat.mat_spec" DisableExpress="1"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: #d1d1d1 1px solid; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlctl_vendor_matCreateUserName" runat="server" width="100%" XDataBind="SFDATA:ctl_vendor_mat.CreateUserName" DisableExpress="1"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: #d1d1d1 1px solid; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlctl_vendor_matUpdateUserName" runat="server" width="100%" XDataBind="SFDATA:ctl_vendor_mat.UpdateUserName" DisableExpress="1"></aspxform:XTextBox>
                    </td>
                </tr>
            </tbody>
        </table>
        <br />
        <table width="800" align="center" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none" border="0" cellspacing="0" cellpadding="0" hiddenexpress="1">
            <tbody>
                <tr>
                    <td width="100" height="25" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                        创建人ID 
                    </td>
                    <td style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlctl_vendorcreate_userid" runat="server" width="100%" XDataBind="SFDATA:ctl_vendor.create_userid"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td width="100" height="25" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                        最后更新人ID 
                    </td>
                    <td style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlctl_vendorlastupdate_userid" runat="server" width="100%" XDataBind="SFDATA:ctl_vendor.lastupdate_userid"></aspxform:XTextBox>
                    </td>
                </tr>
            </tbody>
        </table>
    </form>
</body>
</html>
