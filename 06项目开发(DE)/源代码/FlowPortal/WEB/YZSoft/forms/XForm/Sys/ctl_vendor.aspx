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
                        <strong><font size="5">供应商基本信息单</font></strong> 
                    </td>
                    <td width="200" class="header-td-sn">
                    </td>
                </tr>
            </tbody>
        </table>
        <table width="960" align="center" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none" border="0" cellspacing="0" cellpadding="0">
            <tbody>
                <tr>
                    <td width="100" height="34" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        供应商名称 
                    </td>
                    <td width="214" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlctl_vendorvendor_name" runat="server" XDataBind="SFDATA:ctl_vendor.vendor_name" width="100%"></aspxform:XTextBox>
                    </td>
                    <td width="100" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        纳税人登记号 
                    </td>
                    <td width="214" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlctl_vendortax_cer_no" runat="server" XDataBind="SFDATA:ctl_vendor.tax_cer_no" width="100%"></aspxform:XTextBox>
                    </td>
                    <td width="100" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        邮编 
                    </td>
                    <td width="214" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlctl_vendorvendor_zipcode" runat="server" XDataBind="SFDATA:ctl_vendor.vendor_zipcode" width="100%"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td height="34" class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        联系人 
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlctl_vendorvendor_contact" runat="server" XDataBind="SFDATA:ctl_vendor.vendor_contact" width="100%"></aspxform:XTextBox>
                    </td>
                    <td class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        联系电话 
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlctl_vendorvendor_tel" runat="server" XDataBind="SFDATA:ctl_vendor.vendor_tel" width="100%"></aspxform:XTextBox>
                    </td>
                    <td class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        邮箱 
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlctl_vendorvendor_email" runat="server" XDataBind="SFDATA:ctl_vendor.vendor_email" width="100%"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td height="34" class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        微信 
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlctl_vendorvendor_wechat" runat="server" XDataBind="SFDATA:ctl_vendor.vendor_wechat" width="100%"></aspxform:XTextBox>
                    </td>
                    <td class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        QQ 
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlctl_vendorvendor_qq" runat="server" XDataBind="SFDATA:ctl_vendor.vendor_qq" width="100%"></aspxform:XTextBox>
                    </td>
                    <td class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        是否正式供应商 
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XDropDownList id="XDropDownList1" runat="server" XDataBind="SFDATA:ctl_vendor.vendor_state" PromptText="--请选择--">
                            <asp:ListItem Value="1">是</asp:ListItem>
                            <asp:ListItem Value="0">否</asp:ListItem>
                        </aspxform:XDropDownList>
                    </td>
                </tr>
                <tr>
                    <td height="34" class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        地址 
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none" colspan="5">
                        <aspxform:XTextBox id="ctrlctl_vendorvendor_addr" runat="server" XDataBind="SFDATA:ctl_vendor.vendor_addr" width="100%"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td height="34" class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        提报人</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlctl_vendorCreateUserName" runat="server" XDataBind="SFDATA:ctl_vendor.CreateUserName" width="100%" DisableExpress="1"></aspxform:XTextBox>
                    </td>
                    <td class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        最后更新人</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlctl_vendorUpdateUserName" runat="server" XDataBind="SFDATA:ctl_vendor.UpdateUserName" width="100%" DisableExpress="1"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                    </td>
                </tr>
            </tbody>
        </table>
        <br />
        <br />
        <br />
        <table width="800" align="center" border="0" cellspacing="0" cellpadding="0" hiddenexpress="1">
            <tbody>
                <tr>
                    <td width="200">
                        <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator1" runat="server" ControlToValidate="ctrlctl_vendorvendor_name" ErrorMessage="请填写供应商名称" ForeColor="Red" Display="None">供应商名称</aspxform:XRequiredFieldValidator>
                    </td>
                    <td width="200">
                    </td>
                    <td width="200">
                        <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator3" runat="server" ControlToValidate="ctrlctl_vendorvendor_zipcode" ErrorMessage="请填写邮编" ForeColor="Red" Display="None">邮编</aspxform:XRequiredFieldValidator>
                    </td>
                    <td width="200">
                        <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator4" runat="server" ControlToValidate="ctrlctl_vendorvendor_contact" ErrorMessage="请填写联系人" ForeColor="Red" Display="None">联系人</aspxform:XRequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator5" runat="server" ControlToValidate="ctrlctl_vendorvendor_tel" ErrorMessage="请填写联系电话" ForeColor="Red" Display="None">联系电话</aspxform:XRequiredFieldValidator>
                    </td>
                    <td>
                        <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator6" runat="server" ControlToValidate="ctrlctl_vendorvendor_email" ErrorMessage="请填写邮箱" ForeColor="Red" Display="None">邮箱</aspxform:XRequiredFieldValidator>
                    </td>
                    <td>
                        <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator7" runat="server" ControlToValidate="ctrlctl_vendorvendor_wechat" ErrorMessage="请填写微信" ForeColor="Red" Display="None">微信</aspxform:XRequiredFieldValidator>
                    </td>
                    <td>
                        <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator8" runat="server" ControlToValidate="ctrlctl_vendorvendor_qq" ErrorMessage="请填写QQ" ForeColor="Red" Display="None">QQ</aspxform:XRequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator9" runat="server" ControlToValidate="XDropDownList1" ErrorMessage="请选择是否正式供应商" ForeColor="Red" Display="None">是否正式供应商</aspxform:XRequiredFieldValidator>
                    </td>
                    <td>
                        <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator10" runat="server" ControlToValidate="ctrlctl_vendorvendor_addr" ErrorMessage="请填写地址" ForeColor="Red" Display="None">地址</aspxform:XRequiredFieldValidator>
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
