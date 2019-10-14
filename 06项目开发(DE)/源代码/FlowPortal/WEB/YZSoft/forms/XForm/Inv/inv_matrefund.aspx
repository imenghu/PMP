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
                        <strong><font size="5">物料退库单</font></strong> 
                    </td>
                    <td width="200" class="header-td-sn">
                    </td>
                </tr>
            </tbody>
        </table>
        <table width="960" align="center" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none" border="0" cellspacing="0" cellpadding="0">
            <tbody>
                <tr>
                    <td width="100" height="25" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                        公司名称 
                    </td>
                    <td style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlinv_matrefundCompanyName" runat="server" XDataBind="SFDATA:inv_matrefund.CompanyName" width="100%"></aspxform:XTextBox>
                    </td>
                    <td width="100" height="25" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                        部门名称 
                    </td>
                    <td style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlinv_matrefundDeptName" runat="server" XDataBind="SFDATA:inv_matrefund.DeptName" width="100%"></aspxform:XTextBox>
                    </td>
                    <td width="100" height="25" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                        创建人姓名 
                    </td>
                    <td style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlinv_matrefundCreateUserName" runat="server" XDataBind="SFDATA:inv_matrefund.CreateUserName" width="100%"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td width="100" height="25" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                        退库人部门id 
                    </td>
                    <td style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlinv_matrefundref_org_id" runat="server" XDataBind="SFDATA:inv_matrefund.ref_org_id" width="100%"></aspxform:XTextBox>
                    </td>
                    <td width="100" height="25" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                        退库人id 
                    </td>
                    <td style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlinv_matrefundref_userid" runat="server" XDataBind="SFDATA:inv_matrefund.ref_userid" width="100%"></aspxform:XTextBox>
                    </td>
                    <td width="100" height="25" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                        附件 
                    </td>
                    <td style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlinv_matrefundattachments" runat="server" XDataBind="SFDATA:inv_matrefund.attachments" width="100%"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td width="100" height="25" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                        备注 
                    </td>
                    <td style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none" colspan="5">
                        <aspxform:XTextBox id="ctrlinv_matrefundrefund_remarks" runat="server" XDataBind="SFDATA:inv_matrefund.refund_remarks" width="100%"></aspxform:XTextBox>
                    </td>
                </tr>
            </tbody>
        </table>
        <table width="960" align="center" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none" border="0" cellspacing="0" cellpadding="0" dynamicarea=" 1,1 ">
            <tbody>
                <tr>
                    <td width="50" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: gray 1px solid; BORDER-BOTTOM: gray 1px solid; BORDER-LEFT: gray 1px solid">
                        序号</td>
                    <td width="100" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: gray 1px solid; BORDER-BOTTOM: gray 1px solid; BORDER-LEFT: gray 1px solid">
                        库房名称</td>
                    <td width="100" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: gray 1px solid; BORDER-BOTTOM: gray 1px solid; BORDER-LEFT: gray 1px solid">
                        供应商名称</td>
                    <td width="100" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: gray 1px solid; BORDER-BOTTOM: gray 1px solid; BORDER-LEFT: gray 1px solid">
                        物料编码</td>
                    <td width="100" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: gray 1px solid; BORDER-BOTTOM: gray 1px solid; BORDER-LEFT: gray 1px solid">
                        物料名称</td>
                    <td width="100" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: gray 1px solid; BORDER-BOTTOM: gray 1px solid; BORDER-LEFT: gray 1px solid">
                        规格</td>
                    <td width="100" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: gray 1px solid; BORDER-BOTTOM: gray 1px solid; BORDER-LEFT: gray 1px solid">
                        退库物料数量</td>
                    <td width="100" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: gray 1px solid; BORDER-BOTTOM: gray 1px solid; BORDER-LEFT: gray 1px solid">
                        基准单位</td>
                    <td width="100" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: gray 1px solid; BORDER-BOTTOM: gray 1px solid; BORDER-LEFT: gray 1px solid">
                        退库时间</td>
                    <td width="100" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: gray 1px solid; BORDER-BOTTOM: gray 1px solid; BORDER-LEFT: gray 1px solid">
                        备注</td>
                </tr>
                <tr>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: gray 1px solid; BORDER-BOTTOM: gray 1px solid; BORDER-LEFT: gray 1px solid">
                        <aspxform:xgridlineno id="XGridLineNo1" runat="server" width="100%" textalign="Center" backcolor="White" borderstyle="None" borderwidth="1">1</aspxform:xgridlineno>
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: gray 1px solid; BORDER-BOTTOM: gray 1px solid; BORDER-LEFT: gray 1px solid">
                        <aspxform:XTextBox id="ctrlinv_matrefund_detaildepot_name" runat="server" XDataBind="SFDATA:inv_matrefund_detail.depot_name" width="100%"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: gray 1px solid; BORDER-BOTTOM: gray 1px solid; BORDER-LEFT: gray 1px solid">
                        <aspxform:XTextBox id="ctrlinv_matrefund_detailvendor_name" runat="server" XDataBind="SFDATA:inv_matrefund_detail.vendor_name" width="100%"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: gray 1px solid; BORDER-BOTTOM: gray 1px solid; BORDER-LEFT: gray 1px solid">
                        <aspxform:XTextBox id="ctrlinv_matrefund_detailmat_code" runat="server" XDataBind="SFDATA:inv_matrefund_detail.mat_code" width="100%"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: gray 1px solid; BORDER-BOTTOM: gray 1px solid; BORDER-LEFT: gray 1px solid">
                        <aspxform:XTextBox id="ctrlinv_matrefund_detailmat_name" runat="server" XDataBind="SFDATA:inv_matrefund_detail.mat_name" width="100%"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: gray 1px solid; BORDER-BOTTOM: gray 1px solid; BORDER-LEFT: gray 1px solid">
                        <aspxform:XTextBox id="ctrlinv_matrefund_detailmat_spec" runat="server" XDataBind="SFDATA:inv_matrefund_detail.mat_spec" width="100%"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: gray 1px solid; BORDER-BOTTOM: gray 1px solid; BORDER-LEFT: gray 1px solid">
                        <aspxform:XTextBox id="ctrlinv_matrefund_detailrefund_stnum" runat="server" XDataBind="SFDATA:inv_matrefund_detail.refund_stnum" width="100%"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: gray 1px solid; BORDER-BOTTOM: gray 1px solid; BORDER-LEFT: gray 1px solid">
                        <aspxform:XTextBox id="ctrlinv_matrefund_detailrefund_stnum_unit" runat="server" XDataBind="SFDATA:inv_matrefund_detail.refund_stnum_unit" width="100%"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: gray 1px solid; BORDER-BOTTOM: gray 1px solid; BORDER-LEFT: gray 1px solid">
                        <aspxform:XDateTimePicker id="ctrlinv_matrefund_detailrefund__time" runat="server" XDataBind="SFDATA:inv_matrefund_detail.refund__time" width="100%"></aspxform:XDateTimePicker>
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: gray 1px solid; BORDER-BOTTOM: gray 1px solid; BORDER-LEFT: gray 1px solid">
                        <aspxform:XTextBox id="ctrlinv_matrefund_detailrefund_remarks" runat="server" XDataBind="SFDATA:inv_matrefund_detail.refund_remarks" width="100%"></aspxform:XTextBox>
                    </td>
                </tr>
            </tbody>
        </table>
        <br />
        <table width="800" align="center" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none" border="0" cellspacing="0" cellpadding="0" hiddenexpress="1">
            <tbody>
            </tbody>
        </table>
    </form>
</body>
</html>
