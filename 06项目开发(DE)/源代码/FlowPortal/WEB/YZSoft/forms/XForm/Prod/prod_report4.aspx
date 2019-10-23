<%@ Page Language="C#" %>
<%@ Register TagPrefix="aspxform" Namespace="XFormDesigner.Framework.Web.UI" Assembly="XFormDesigner.Framework" %>
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
                        <strong><font size="5">糖化日报</font></strong> 
                    </td>
                    <td width="200" class="header-td-sn">
                    </td>
                </tr>
            </tbody>
        </table>
        <table width="960" align="center" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none" border="0" cellspacing="0" cellpadding="0">
            <tbody>
                <tr>
                    <td width="100" height="32" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        品名 
                    </td>
                    <td width="187" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlprod_report4mat_name" runat="server" width="88%" XDataBind="SFDATA:prod_report4.mat_name" FieldName="品名" ReadOnly="True"></aspxform:XTextBox>
                        <aspxform:XDataBrowserButton id="XDataBrowserButton1" runat="server" XClass="YZSoft.Forms.Field.DataBrowserButton" Height="18px" Text="..." UseSubmitBehavior="False" PopupWndHeight="-1" PopupWndWidth="-1" DataMap="mat_name->SFDATA:prod_report4.mat_name" DisplayColumns="first_name:;second_name:;third_name:;fourth_name:;mat_name:;mat_spec:" XDataSource='DataSource:SFDATA;TableName:ctl_material;Filter:first_name->"产成品"' Width="16px"></aspxform:XDataBrowserButton>
                    </td>
                    <td width="177" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        日期 
                    </td>
                    <td width="177" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XDateTimePicker id="ctrlprod_report4date" runat="server" width="100%" XDataBind="SFDATA:prod_report4.date" FieldName="日期"></aspxform:XDateTimePicker>
                    </td>
                    <td width="137" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        糖化批次 
                    </td>
                    <td width="170" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlprod_report4Sac_id" runat="server" width="100%" XDataBind="SFDATA:prod_report4.Sac_id" FieldName="糖化批次"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td height="25" class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        锅次 
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlprod_report4Boiler" runat="server" width="100%" XDataBind="SFDATA:prod_report4.Boiler" FieldName="锅次"></aspxform:XTextBox>
                    </td>
                    <td height="25" class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        大麦芽 
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlprod_report4malt_kg" runat="server" width="100%" XDataBind="SFDATA:prod_report4.malt_kg" FieldName="大麦芽"></aspxform:XTextBox>
                    </td>
                    <td height="25" class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        焦香麦芽 
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlprod_report4caramelmalt_kg" runat="server" width="100%" XDataBind="SFDATA:prod_report4.caramelmalt_kg" FieldName="焦香麦芽"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td height="25" class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        小麦芽 
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlprod_report4smallmalt_kg" runat="server" width="100%" XDataBind="SFDATA:prod_report4.smallmalt_kg" FieldName="小麦芽"></aspxform:XTextBox>
                    </td>
                    <td height="25" class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        糖浆kg 
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlprod_report4syrup_kg" runat="server" width="100%" XDataBind="SFDATA:prod_report4.syrup_kg" FieldName="糖浆kg"></aspxform:XTextBox>
                    </td>
                    <td height="25" class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        总kg</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlprod_report4sum_kg" runat="server" width="100%" XDataBind="SFDATA:prod_report4.sum_kg" FieldName="总kg"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td height="25" class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        澳麦芽 
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlprod_report4Australian_malt" runat="server" width="100%" XDataBind="SFDATA:prod_report4.Australian_malt" FieldName="澳麦芽"></aspxform:XTextBox>
                    </td>
                    <td height="25" class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        冷麦汁KL 
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlprod_report4coldwort_kl" runat="server" width="100%" XDataBind="SFDATA:prod_report4.coldwort_kl" FieldName="冷麦汁KL"></aspxform:XTextBox>
                    </td>
                    <td height="25" class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        原麦汁浓度OP 
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlprod_report4wort_concent" runat="server" width="100%" XDataBind="SFDATA:prod_report4.wort_concent" FieldName="原麦汁浓度OP"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td height="25" class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        折11冷k 
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlprod_report4convert11_kl" runat="server" width="100%" XDataBind="SFDATA:prod_report4.convert11_kl" FieldName="折11冷k"></aspxform:XTextBox>
                    </td>
                    <td height="25" class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        折11粮耗kg/kl 
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlprod_report4convert11_loss_kl" runat="server" width="100%" XDataBind="SFDATA:prod_report4.convert11_loss_kl" FieldName="折11粮耗kg/kl"></aspxform:XTextBox>
                    </td>
                    <td height="25" class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        单宁kg 
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlprod_report4Tannin_kg" runat="server" width="100%" XDataBind="SFDATA:prod_report4.Tannin_kg" FieldName="单宁kg"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td height="25" class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        卡拉胶kg 
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlprod_report4carrageenan_kg" runat="server" width="100%" XDataBind="SFDATA:prod_report4.carrageenan_kg" FieldName="卡拉胶kg"></aspxform:XTextBox>
                    </td>
                    <td height="25" class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        复合酶kg 
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlprod_report4compound_kg" runat="server" width="100%" XDataBind="SFDATA:prod_report4.compound_kg" FieldName="复合酶kg"></aspxform:XTextBox>
                    </td>
                    <td height="25" class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        石膏kg 
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlprod_report4gypsum_kg" runat="server" width="100%" XDataBind="SFDATA:prod_report4.gypsum_kg" FieldName="石膏kg"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td height="25" class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        乳酸L 
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlprod_report4lactic_acid" runat="server" width="100%" XDataBind="SFDATA:prod_report4.lactic_acid" FieldName="乳酸L"></aspxform:XTextBox>
                    </td>
                    <td height="25" class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        氯化钙kg 
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlprod_report4calcium_chloride_kg" runat="server" width="100%" XDataBind="SFDATA:prod_report4.calcium_chloride_kg" FieldName="氯化钙kg"></aspxform:XTextBox>
                    </td>
                    <td height="25" class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        硫酸锌kg 
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlprod_report4zinc_sulfate_g" runat="server" width="100%" XDataBind="SFDATA:prod_report4.zinc_sulfate_g" FieldName="硫酸锌kg"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td height="34" class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        国产酒花kg 
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlprod_report4hops_kg" runat="server" width="100%" XDataBind="SFDATA:prod_report4.hops_kg" FieldName="国产酒花kg"></aspxform:XTextBox>
                    </td>
                    <td class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        进口苦花哈拉道kg 
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlprod_report4imported_bitter_kg" runat="server" width="100%" XDataBind="SFDATA:prod_report4.imported_bitter_kg" FieldName="进口苦花哈拉道kg"></aspxform:XTextBox>
                    </td>
                    <td class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        进口香花卡斯卡特kg 
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlprod_report4imported_fragrant_kg" runat="server" width="100%" XDataBind="SFDATA:prod_report4.imported_fragrant_kg" FieldName="进口香花卡斯卡特kg"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td height="25" class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        备注 
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlprod_report4memo" runat="server" width="100%" XDataBind="SFDATA:prod_report4.memo" FieldName="备注"></aspxform:XTextBox>
                    </td>
                    <td height="25" class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        创建时间 
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XDateTimePicker id="ctrlprod_report4create_time" runat="server" width="100%" XDataBind="SFDATA:prod_report4.create_time" FieldName="创建时间"></aspxform:XDateTimePicker>
                    </td>
                </tr>
            </tbody>
        </table>
        <br />
        <br />
        <table width="800" tabindex="1" align="center" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none" border="0" cellspacing="0" cellpadding="0" hiddenexpress="1">
            <tbody>
                <tr>
                    <td style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlProd_report1mat_id" runat="server" width="100%" XDataBind="SFDATA:Prod_report1.mat_id" FieldName="品名编号"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td width="100" height="25" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                        公司编码 
                    </td>
                    <td style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlProd_report1Company" runat="server" width="100%" XDataBind="SFDATA:Prod_report1.Company" FieldName="公司编码"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td width="100" height="25" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                        公司名称 
                    </td>
                    <td style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlProd_report1CompanyName" runat="server" width="100%" XDataBind="SFDATA:Prod_report1.CompanyName" FieldName="公司名称"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td width="100" height="25" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                        部门编码 
                    </td>
                    <td style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlProd_report1Dept" runat="server" width="100%" XDataBind="SFDATA:Prod_report1.Dept" FieldName="部门编码"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td width="100" height="25" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                        部门名称 
                    </td>
                    <td style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlProd_report1DeptName" runat="server" width="100%" XDataBind="SFDATA:Prod_report1.DeptName" FieldName="部门名称"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                    </td>
                    <td>
                        <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator1" runat="server" Display="None" ForeColor="Red" ErrorMessage="请选择品名" ControlToValidate="ctrlprod_report4mat_name">品名</aspxform:XRequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                    </td>
                    <td>
                        <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator2" runat="server" Display="None" ForeColor="Red" ErrorMessage="请选择日期" ControlToValidate="ctrlprod_report4date">日期</aspxform:XRequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                    </td>
                    <td>
                        <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator3" runat="server" Display="None" ForeColor="Red" ErrorMessage="请填写糖化批次" ControlToValidate="ctrlprod_report4Sac_id">糖化批次</aspxform:XRequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                    </td>
                    <td>
                        <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator4" runat="server" Display="None" ForeColor="Red" ErrorMessage="请填写锅次" ControlToValidate="ctrlprod_report4Boiler">锅次</aspxform:XRequiredFieldValidator>
                    </td>
                </tr>
            </tbody>
        </table>
    </form>
</body>
</html>
