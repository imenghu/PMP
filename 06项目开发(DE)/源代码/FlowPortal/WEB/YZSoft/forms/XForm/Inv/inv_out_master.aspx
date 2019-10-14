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
                        <strong><font size="5">物料出库单</font></strong> 
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
                        出库人公司 
                    </td>
                    <td style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlinv_out_masterCompanyName" runat="server" XDataBind="SFDATA:inv_out_master.CompanyName" width="100%"></aspxform:XTextBox>
                    </td>
                    <td width="100" height="25" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                        出库人部门 
                    </td>
                    <td style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlinv_out_masterDeptName" runat="server" XDataBind="SFDATA:inv_out_master.DeptName" width="100%"></aspxform:XTextBox>
                    </td>
                    <td width="100" height="25" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                        出库人姓名 
                    </td>
                    <td style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlinv_out_masterCreateUserName" runat="server" XDataBind="SFDATA:inv_out_master.CreateUserName" width="100%"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td width="100" height="25" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                        领用人部门id 
                    </td>
                    <td style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlinv_out_masterreq_org_id" runat="server" XDataBind="SFDATA:inv_out_master.req_org_id" width="100%"></aspxform:XTextBox>
                    </td>
                    <td width="100" height="25" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                        领用人id 
                    </td>
                    <td style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlinv_out_masterreq_userid" runat="server" XDataBind="SFDATA:inv_out_master.req_userid" width="100%"></aspxform:XTextBox>
                    </td>
                    <td width="100" height="25" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                        附件 
                    </td>
                    <td style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlinv_out_masterattachments" runat="server" XDataBind="SFDATA:inv_out_master.attachments" width="100%"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td width="100" height="25" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                        备注 
                    </td>
                    <td style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none" colspan="5">
                        <aspxform:XTextBox id="ctrlinv_out_masteroutmaster_remarks" runat="server" XDataBind="SFDATA:inv_out_master.outmaster_remarks" width="100%"></aspxform:XTextBox>
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
                        库名</td>
                    <td width="100" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: gray 1px solid; BORDER-BOTTOM: gray 1px solid; BORDER-LEFT: gray 1px solid">
                        供应商名称</td>
                    <td width="100" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: gray 1px solid; BORDER-BOTTOM: gray 1px solid; BORDER-LEFT: gray 1px solid">
                        物料编码</td>
                    <td width="100" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: gray 1px solid; BORDER-BOTTOM: gray 1px solid; BORDER-LEFT: gray 1px solid">
                        物料名称</td>
                    <td width="100" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: gray 1px solid; BORDER-BOTTOM: gray 1px solid; BORDER-LEFT: gray 1px solid">
                        物料规格</td>
                    <td width="100" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: gray 1px solid; BORDER-BOTTOM: gray 1px solid; BORDER-LEFT: gray 1px solid">
                        出库物料数量</td>
                    <td width="100" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: gray 1px solid; BORDER-BOTTOM: gray 1px solid; BORDER-LEFT: gray 1px solid">
                        基准单位</td>
                    <td width="100" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: gray 1px solid; BORDER-BOTTOM: gray 1px solid; BORDER-LEFT: gray 1px solid">
                        出库时间</td>
                </tr>
                <tr>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: gray 1px solid; BORDER-BOTTOM: gray 1px solid; BORDER-LEFT: gray 1px solid">
                        <aspxform:xgridlineno id="XGridLineNo1" runat="server" width="100%" textalign="Center" backcolor="White" borderstyle="None" borderwidth="1">1</aspxform:xgridlineno>
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: gray 1px solid; BORDER-BOTTOM: gray 1px solid; BORDER-LEFT: gray 1px solid">
                        <aspxform:XTextBox id="ctrlinv_out_detaildepot_name" runat="server" XDataBind="SFDATA:inv_out_detail.depot_name" width="100%"></aspxform:XTextBox>
                        <aspxform:XTextBox id="ctrl_inv_out_detaildepot_id" runat="server" XDataBind="$formSet.ServerName:inv_out_detail.depot_id" width="100%" HiddenExpress="1"></aspxform:XTextBox>
                        <aspxform:XTextBox id="ctrl_inv_out_detailvendor_id" runat="server" XDataBind="$formSet.ServerName:inv_out_detail.vendor_id" width="100%" HiddenExpress="1"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: gray 1px solid; BORDER-BOTTOM: gray 1px solid; BORDER-LEFT: gray 1px solid">
                        <aspxform:XTextBox id="ctrlinv_out_detailvendor_name" runat="server" XDataBind="SFDATA:inv_out_detail.vendor_name" width="100%"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: gray 1px solid; BORDER-BOTTOM: gray 1px solid; BORDER-LEFT: gray 1px solid">
                        <aspxform:XTextBox id="ctrlinv_out_detailmat_code" runat="server" XDataBind="SFDATA:inv_out_detail.mat_code" width="100%"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: gray 1px solid; BORDER-BOTTOM: gray 1px solid; BORDER-LEFT: gray 1px solid">
                        <aspxform:XTextBox id="ctrlinv_out_detailmat_name" runat="server" XDataBind="SFDATA:inv_out_detail.mat_name" width="100%"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: gray 1px solid; BORDER-BOTTOM: gray 1px solid; BORDER-LEFT: gray 1px solid">
                        <aspxform:XTextBox id="ctrlinv_out_detailmat_spec" runat="server" XDataBind="SFDATA:inv_out_detail.mat_spec" width="100%"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: gray 1px solid; BORDER-BOTTOM: gray 1px solid; BORDER-LEFT: gray 1px solid">
                        <aspxform:XTextBox id="ctrlinv_out_detailout_stnum" runat="server" XDataBind="SFDATA:inv_out_detail.out_stnum" width="100%"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: gray 1px solid; BORDER-BOTTOM: gray 1px solid; BORDER-LEFT: gray 1px solid">
                        <aspxform:XTextBox id="ctrlinv_out_detailout_stnum_unit" runat="server" XDataBind="SFDATA:inv_out_detail.out_stnum_unit" width="100%"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: gray 1px solid; BORDER-BOTTOM: gray 1px solid; BORDER-LEFT: gray 1px solid">
                        <aspxform:XDateTimePicker id="ctrlinv_out_detailout_time" runat="server" XDataBind="SFDATA:inv_out_detail.out_time" width="100%"></aspxform:XDateTimePicker>
                    </td>
                </tr>
            </tbody>
        </table>
        <br />
        <table width="800" align="center" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none" border="0" cellspacing="0" cellpadding="0" hiddenexpress="1">
            <tbody>
                <tr>
                    <td width="100" height="25" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                        出库人部门id 
                    </td>
                    <td style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlinv_out_masterorg_id" runat="server" XDataBind="SFDATA:inv_out_master.org_id" width="100%"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td width="100" height="25" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                        出库人id 
                    </td>
                    <td style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlinv_out_masterout_userid" runat="server" XDataBind="SFDATA:inv_out_master.out_userid" width="100%"></aspxform:XTextBox>
                    </td>
                </tr>
            </tbody>
        </table>
    </form>
</body>
</html>
