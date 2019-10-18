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
                        <strong><font size="5">经销商信息单</font></strong> 
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
                        省 
                    </td>
                    <td width="214" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XDropDownList id="XDropDownList1" runat="server" XDataBind="SFDATA:ctl_dealer.province_id" XDataSource="DataSource:SFDATA;TableName:ctl_area;Filter:arealevel->var1" ValueColumn="id" DisplayColumn="name" PromptText="--请选择--"></aspxform:XDropDownList>
                    </td>
                    <td width="100" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        市 
                    </td>
                    <td width="214" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XDropDownList id="XDropDownList2" runat="server" XDataBind="SFDATA:ctl_dealer.city_id" XDataSource="DataSource:SFDATA;TableName:ctl_area;Filter:arealevel->var2,parent_id->SFDATA:ctl_dealer.province_id" ValueColumn="id" DisplayColumn="name" PromptText="--请选择--"></aspxform:XDropDownList>
                    </td>
                    <td width="100" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        &nbsp;</td>
                    <td width="214" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                    </td>
                </tr>
                <tr>
                    <td height="34" class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        经销商名称</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlctl_dealerdealer_name" runat="server" XDataBind="SFDATA:ctl_dealer.dealer_name" width="100%"></aspxform:XTextBox>
                    </td>
                    <td class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        纳税人登记号</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlctl_dealertax_cer_no" runat="server" XDataBind="SFDATA:ctl_dealer.tax_cer_no" width="100%"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                    </td>
                </tr>
                <tr>
                    <td height="34" class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        &nbsp;联系人</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlctl_dealerdealer_contact" runat="server" XDataBind="SFDATA:ctl_dealer.dealer_contact" width="100%"></aspxform:XTextBox>
                    </td>
                    <td class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        &nbsp;联系人电话</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlctl_dealerdealer_tel" runat="server" XDataBind="SFDATA:ctl_dealer.dealer_tel" width="100%"></aspxform:XTextBox>
                    </td>
                    <td class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        &nbsp;联系人邮箱 
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlctl_dealerdealer_email" runat="server" XDataBind="SFDATA:ctl_dealer.dealer_email" width="100%"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td height="34" class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        邮编 
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlctl_dealerdealer_zipcode" runat="server" XDataBind="SFDATA:ctl_dealer.dealer_zipcode" width="100%"></aspxform:XTextBox>
                    </td>
                    <td class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        微信 
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlctl_dealerdealer_wechat" runat="server" XDataBind="SFDATA:ctl_dealer.dealer_wechat" width="100%"></aspxform:XTextBox>
                    </td>
                    <td class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        QQ 
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlctl_dealerdealer_qq" runat="server" XDataBind="SFDATA:ctl_dealer.dealer_qq" width="100%"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td height="34" class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        地址 
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none" colspan="5">
                        <aspxform:XTextBox id="XTextBox1" runat="server" XDataBind="SFDATA:ctl_dealer.dealer_addr" width="100%" Rows="5" TextMode="MultiLine"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td height="34" class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        备注</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none" colspan="5">
                        <aspxform:XTextBox id="ctrlctl_dealerdealer_remarks" runat="server" XDataBind="SFDATA:ctl_dealer.dealer_remarks" width="100%" Rows="5" TextMode="MultiLine"></aspxform:XTextBox>
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
                        省</td>
                    <td width="267">
                        <aspxform:XTextBox id="XTextBox2" runat="server" XDataBind="var1" width="100%" BorderColor="#DCDCDC" BorderWidth="1">1</aspxform:XTextBox>
                    </td>
                    <td width="267">
                    </td>
                </tr>
                <tr>
                    <td>
                        市</td>
                    <td>
                        <aspxform:XTextBox id="XTextBox3" runat="server" XDataBind="var2" width="100%" BorderColor="#DCDCDC" BorderWidth="1">2</aspxform:XTextBox>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td>
                        <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator1" runat="server" Display="None" ForeColor="Red" ErrorMessage="请选择省份" ControlToValidate="XDropDownList1">省</aspxform:XRequiredFieldValidator>
                    </td>
                    <td>
                        <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator2" runat="server" Display="None" ForeColor="Red" ErrorMessage="请选择城市" ControlToValidate="XDropDownList2">市</aspxform:XRequiredFieldValidator>
                    </td>
                    <td>
                        <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator3" runat="server" Display="None" ForeColor="Red" ErrorMessage="请填写经销商名称" ControlToValidate="ctrlctl_dealerdealer_name">经销商名称</aspxform:XRequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator4" runat="server" Display="None" ForeColor="Red" ErrorMessage="请填写纳税人登记号" ControlToValidate="ctrlctl_dealertax_cer_no">纳税人登记号</aspxform:XRequiredFieldValidator>
                    </td>
                    <td>
                        <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator5" runat="server" Display="None" ForeColor="Red" ErrorMessage="请填写联系人" ControlToValidate="ctrlctl_dealerdealer_contact">联系人</aspxform:XRequiredFieldValidator>
                    </td>
                    <td>
                        <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator6" runat="server" Display="None" ForeColor="Red" ErrorMessage="请填写联系人电话" ControlToValidate="ctrlctl_dealerdealer_tel">联系人电话</aspxform:XRequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator7" runat="server" Display="None" ForeColor="Red" ErrorMessage="请填写联系人邮箱" ControlToValidate="ctrlctl_dealerdealer_email">联系人邮箱</aspxform:XRequiredFieldValidator>
                    </td>
                    <td>
                        <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator8" runat="server" Display="None" ForeColor="Red" ErrorMessage="请填写邮编" ControlToValidate="ctrlctl_dealerdealer_zipcode">邮编</aspxform:XRequiredFieldValidator>
                    </td>
                    <td>
                        <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator9" runat="server" Display="None" ForeColor="Red" ErrorMessage="请填写微信" ControlToValidate="ctrlctl_dealerdealer_wechat">微信</aspxform:XRequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator10" runat="server" Display="None" ForeColor="Red" ErrorMessage="请填写QQ " ControlToValidate="ctrlctl_dealerdealer_qq">QQ </aspxform:XRequiredFieldValidator>
                    </td>
                    <td>
                        <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator11" runat="server" Display="None" ForeColor="Red" ErrorMessage="请填写地址" ControlToValidate="XTextBox1">地址</aspxform:XRequiredFieldValidator>
                    </td>
                    <td>
                    </td>
                </tr>
            </tbody>
        </table>
    </form>
</body>
</html>
