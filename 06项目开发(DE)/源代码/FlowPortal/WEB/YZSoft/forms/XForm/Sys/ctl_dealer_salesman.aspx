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
                        <strong><font size="5">销售员信息单</font></strong> 
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
                        公司 
                    </td>
                    <td width="214" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlctl_salesmanCompanyName" runat="server" XDataBind="SFDATA:ctl_salesman.CompanyName" width="100%" DisableExpress="1"></aspxform:XTextBox>
                    </td>
                    <td width="100" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        省 
                    </td>
                    <td width="214" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XDropDownList id="XDropDownList1" runat="server" XDataBind="SFDATA:ctl_salesman.province_id" XDataSource="DataSource:SFDATA;TableName:ctl_area;Filter:arealevel->var1" ValueColumn="id" DisplayColumn="name" PromptText="--请选择--"></aspxform:XDropDownList>
                    </td>
                    <td width="100" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        市 
                    </td>
                    <td width="214" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XDropDownList id="XDropDownList2" runat="server" XDataBind="SFDATA:ctl_salesman.city_id" XDataSource="DataSource:SFDATA;TableName:ctl_area;Filter:arealevel->var2,parent_id->SFDATA:ctl_salesman.province_id" ValueColumn="id" DisplayColumn="name" PromptText="--请选择--"></aspxform:XDropDownList>
                    </td>
                </tr>
                <tr>
                    <td height="34" class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        姓名 
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlctl_salesmansalesman_name" runat="server" XDataBind="SFDATA:ctl_salesman.salesman_name" width="100%"></aspxform:XTextBox>
                    </td>
                    <td class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        联系电话 
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlctl_salesmansalesman_tel" runat="server" XDataBind="SFDATA:ctl_salesman.salesman_tel" width="100%"></aspxform:XTextBox>
                    </td>
                    <td class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        联系邮箱 
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlctl_salesmansalesman_email" runat="server" XDataBind="SFDATA:ctl_salesman.salesman_email" width="100%"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td height="34" class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        地址 
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none" colspan="5">
                        <aspxform:XTextBox id="ctrlctl_salesmansalesman_addr" runat="server" XDataBind="SFDATA:ctl_salesman.salesman_addr" width="100%"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td height="34" class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        备注</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none" colspan="5">
                        <aspxform:XTextBox id="ctrlctl_salesmansalesman_remarks" runat="server" XDataBind="SFDATA:ctl_salesman.salesman_remarks" width="100%" TextMode="MultiLine" Rows="5"></aspxform:XTextBox>
                    </td>
                </tr>
            </tbody>
        </table>
        <table width="960" align="center" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none" border="0" cellspacing="0" cellpadding="0" dynamicarea="2,1">
            <tbody>
                <tr>
                    <td height="34" class="xttl" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid" colspan="5">
                        销售员对应经销商列表</td>
                    <td align="right" class="xttl" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XDataBrowserButton id="XDataBrowserButton2" runat="server" XClass="YZSoft.Forms.Field.DataBrowserButton" XDataSource="DataSource:SFDATA;TableName:ctl_dealer" Width="80px" Text="选择经销商" DisplayColumns="dealer_name:经销商名称;dealer_contact:联系人;dealer_tel:联系电话;dealer_addr:地址" DataMap="dealer_id->SFDATA:ctl_dealer_salesman.dealer_id" MultiSelect="True" PopupWndWidth="-1" PopupWndHeight="-1" UseSubmitBehavior="False"></aspxform:XDataBrowserButton>
                        <aspxform:XAddBlockButton id="XAddBlockButton1" runat="server" Text="新增" DataSource="SFDATA" TableName="ctl_dealer_salesman"></aspxform:XAddBlockButton>
                    </td>
                </tr>
                <tr>
                    <td width="50" height="34" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                        序号</td>
                    <td width="150" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        经销商名称</td>
                    <td width="150" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        联系人</td>
                    <td width="150" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        联系电话</td>
                    <td width="230" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        地址</td>
                    <td width="230" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        备注</td>
                </tr>
                <tr>
                    <td height="34" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                        <aspxform:XGridLineNo id="XGridLineNo1" runat="server" Width="100%" BorderWidth="1" BorderStyle="None" TextAlign="Center" BackColor="Transparent">1</aspxform:XGridLineNo>
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox3" runat="server" XDataBind="SFDATA:ctl_dealer_salesman.dealer_id" width="120px" DisableExpress="1" DataMap="dealer_contact->varContact;dealer_tel->varTel;dealer_addr->varAddr" BorderWidth="1" BorderColor="#DCDCDC" ValueToDisplayText="DataSource:SFDATA;TableName:ctl_dealer;FilterColumn:dealer_id;DisplayColumn:dealer_name"></aspxform:XTextBox>
                        <aspxform:XDataBrowserButton id="XDataBrowserButton1" runat="server" XDataSource="DataSource:SFDATA;TableName:ctl_dealer" Width="21px" DisplayColumns="dealer_name:经销商名称;dealer_contact:联系人;dealer_tel:联系电话;dealer_addr:地址" DataMap="dealer_id->SFDATA:ctl_dealer_salesman.dealer_id"></aspxform:XDataBrowserButton>
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox4" runat="server" XDataBind="varContact" width="100%" DisableExpress="1" BorderWidth="1" BorderColor="#DCDCDC"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox5" runat="server" XDataBind="varTel" width="100%" DisableExpress="1" BorderWidth="1" BorderColor="#DCDCDC"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox6" runat="server" XDataBind="varAddr" width="100%" DisableExpress="1" BorderWidth="1" BorderColor="#DCDCDC"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox7" runat="server" XDataBind="SFDATA:ctl_dealer_salesman.ds_remarks" width="100%" BorderWidth="1" BorderColor="#DCDCDC"></aspxform:XTextBox>
                    </td>
                </tr>
            </tbody>
        </table>
        <table width="800" align="center" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none" border="0" cellspacing="0" cellpadding="0" hiddenexpress="1">
            <tbody>
                <tr>
                    <td width="100" height="25" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                        账号 
                    </td>
                    <td style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlctl_salesmanSalesmanAccount" runat="server" XDataBind="SFDATA:ctl_salesman.SalesmanAccount" width="100%"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        省</td>
                    <td>
                        <aspxform:XTextBox id="XTextBox1" runat="server" XDataBind="var1" width="100%" BorderWidth="1" BorderColor="#DCDCDC">1</aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        市</td>
                    <td>
                        <aspxform:XTextBox id="XTextBox2" runat="server" XDataBind="var2" width="100%" BorderWidth="1" BorderColor="#DCDCDC">2</aspxform:XTextBox>
                    </td>
                </tr>
            </tbody>
        </table>
    </form>
</body>
</html>
