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
        <table align="center">
            <tbody>
                <tr>
                    <td>
                        <!--
$Scripts-->
                        <table width="960" align="center" border="0" cellspacing="0" cellpadding="0">
                            <tbody>
                                <tr>
                                    <td width="200">
                                    </td>
                                    <td width="400" align="center" class="header-td-title">
                                        <strong><font size="5">物料盘存审批表</font></strong> 
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
                                        盘点人公司 
                                    </td>
                                    <td width="214" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        <aspxform:XTextBox id="ctrlinv_inventory_masterCompanyName" runat="server" DisableExpress="1" XDataBind="SFDATA:inv_inventory_master.CompanyName" width="100%" FieldName="盘点人公司"></aspxform:XTextBox>
                                    </td>
                                    <td width="100" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        盘点人部门 
                                    </td>
                                    <td width="214" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        <aspxform:XTextBox id="ctrlinv_inventory_masterDeptName" runat="server" DisableExpress="1" XDataBind="SFDATA:inv_inventory_master.DeptName" width="100%" FieldName="盘点人部门"></aspxform:XTextBox>
                                    </td>
                                    <td width="100" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        盘点人 
                                    </td>
                                    <td width="214" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        <aspxform:XTextBox id="ctrlinv_inventory_masterCreateUserName" runat="server" DisableExpress="1" XDataBind="SFDATA:inv_inventory_master.CreateUserName" width="100%" FieldName="盘点人"></aspxform:XTextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td height="34" class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        盘点时间 
                                    </td>
                                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        <aspxform:XDateTimePicker id="ctrlinv_inventory_masterinv_master_time" runat="server" XDataBind="SFDATA:inv_inventory_master.inv_master_time" width="100%" FieldName="盘点时间"></aspxform:XDateTimePicker>
                                    </td>
                                    <td class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        年 
                                    </td>
                                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        <aspxform:XTextBox id="ctrlinv_inventory_masterinv_master_year" runat="server" DisableExpress="1" XDataBind="SFDATA:inv_inventory_master.inv_master_year" width="100%" FieldName="年"></aspxform:XTextBox>
                                    </td>
                                    <td class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        月 
                                    </td>
                                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        <aspxform:XTextBox id="ctrlinv_inventory_masterinv_master_month" runat="server" DisableExpress="1" XDataBind="SFDATA:inv_inventory_master.inv_master_month" width="100%" FieldName="月"></aspxform:XTextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td height="34" class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        盘点仓库 
                                    </td>
                                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        <aspxform:XDropDownList id="XDropDownList1" runat="server" XDataBind="SFDATA:inv_inventory_master.depot_id" FieldName="盘点仓库 " DataMap="depot_name->SFDATA:inv_inventory_master.depot_name" PromptText="--请选择--" DisplayColumn="depot_name" ValueColumn="depot_id" XDataSource="DataSource:SFDATA;TableName:ctl_depot;Filter:state->varState,Company->SFDATA:inv_inventory_master.Company"></aspxform:XDropDownList>
                                    </td>
                                    <td class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        备注 
                                    </td>
                                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none" colspan="3">
                                        <aspxform:XTextBox id="ctrlinv_inventory_masterinv_remarks" runat="server" XDataBind="SFDATA:inv_inventory_master.inv_remarks" width="100%" FieldName="备注"></aspxform:XTextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td height="34" class="xttl" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none" colspan="5">
                                        物料库存明细</td>
                                    <td align="right" class="xttl" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        <aspxform:XExcelDataImportButton id="XExcelDataImportButton1" runat="server" XClass="YZSoft.Forms.Field.ExcelDataImportButton" DataMap="B->SFDATA:inv_inventory_detail.vendor_id;C->SFDATA:inv_inventory_detail.vendor_name;D->SFDATA:inv_inventory_detail.mat_code;E->SFDATA:inv_inventory_detail.mat_name;F->SFDATA:inv_inventory_detail.mat_spec;G->SFDATA:inv_inventory_detail.inv_stnum_unit;H->SFDATA:inv_inventory_detail.depot_mat_num;I->SFDATA:inv_inventory_detail.inv_depot_mat_num;J->SFDATA:inv_inventory_detail.inv_diff_num;K->SFDATA:inv_inventory_detail.inv_remarks" ColumnCount="11" UseSubmitBehavior="False" PopupWndHeight="-1" PopupWndWidth="-1" Width="92px" text="盘存结果导入"></aspxform:XExcelDataImportButton>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <div style="BORDER-TOP: 0px; BORDER-RIGHT: 0px; WIDTH: 960px; WHITE-SPACE: nowrap; OVERFLOW-X: auto; BORDER-BOTTOM: 0px; MIN-HEIGHT: 200px; BORDER-LEFT: 0px">
                            <table width="1200" align="center" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none" border="0" cellspacing="0" cellpadding="0" dynamicarea=" 1,1 ">
                                <tbody>
                                    <tr>
                                        <td width="44" height="34" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                                            序号</td>
                                        <td width="146" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            供应商名称</td>
                                        <td width="98" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            物料编码</td>
                                        <td width="98" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            物料名称</td>
                                        <td width="97" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            规格</td>
                                        <td width="98" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            基准单位</td>
                                        <td width="147" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            库存数（盘点前）</td>
                                        <td width="179" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            盘点库存数（盘点后）</td>
                                        <td width="98" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            盘点差值</td>
                                        <td width="163" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            备注</td>
                                    </tr>
                                    <tr>
                                        <td height="56" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                                            <aspxform:xgridlineno id="XGridLineNo1" runat="server" width="100%" textalign="Center" backcolor="White" borderstyle="None" borderwidth="1">1</aspxform:xgridlineno>
                                        </td>
                                        <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            <aspxform:XTextBox id="ctrl_inv_inventory_detailvendor_id" runat="server" XDataBind="SFDATA:inv_inventory_detail.vendor_id" width="100%" HiddenExpress="1"></aspxform:XTextBox>
                                            <aspxform:XTextBox id="ctrlinv_inventory_detailvendor_name" runat="server" DisableExpress="1" XDataBind="SFDATA:inv_inventory_detail.vendor_name" width="100%" FieldName="供应商编码"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            <aspxform:XTextBox id="ctrlinv_inventory_detailmat_code" runat="server" DisableExpress="1" XDataBind="SFDATA:inv_inventory_detail.mat_code" width="100%" FieldName="物料编码"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            <aspxform:XTextBox id="ctrlinv_inventory_detailmat_name" runat="server" DisableExpress="1" XDataBind="SFDATA:inv_inventory_detail.mat_name" width="100%" FieldName="物料名称"></aspxform:XTextBox>
                                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator5" runat="server" ControlToValidate="ctrlinv_inventory_detailmat_name" ErrorMessage="请导入盘存结果" ForeColor="Red" Display="None">物料名称</aspxform:XRequiredFieldValidator>
                                        </td>
                                        <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            <aspxform:XTextBox id="ctrlinv_inventory_detailmat_spec" runat="server" DisableExpress="1" XDataBind="SFDATA:inv_inventory_detail.mat_spec" width="100%" FieldName="规格"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            <aspxform:XTextBox id="ctrlinv_inventory_detailinv_stnum_unit" runat="server" DisableExpress="1" XDataBind="SFDATA:inv_inventory_detail.inv_stnum_unit" width="100%" FieldName="基准单位"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            <aspxform:XTextBox id="ctrlinv_inventory_detaildepot_mat_num" runat="server" DisableExpress="1" XDataBind="SFDATA:inv_inventory_detail.depot_mat_num" width="100%" FieldName="库存数（盘点前）"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            <aspxform:XTextBox id="ctrlinv_inventory_detailinv_depot_mat_num" runat="server" DisableExpress="1" XDataBind="SFDATA:inv_inventory_detail.inv_depot_mat_num" width="100%" FieldName="盘点库存数（盘点后）"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            <aspxform:XTextBox id="ctrlinv_inventory_detailinv_diff_num" runat="server" DisableExpress="1" XDataBind="SFDATA:inv_inventory_detail.inv_diff_num" width="100%" FieldName="盘点差值"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            <aspxform:XTextBox id="ctrlinv_inventory_detailinv_remarks" runat="server" DisableExpress="1" XDataBind="SFDATA:inv_inventory_detail.inv_remarks" width="100%" FieldName="备注"></aspxform:XTextBox>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <br />
                        <table width="780" align="center" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none" border="0" cellspacing="0" cellpadding="0" hiddenexpress="1">
                            <tbody>
                                <tr>
                                    <td width="97" height="34" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                                        公司编码 
                                    </td>
                                    <td width="681" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        <aspxform:XTextBox id="ctrlinv_inventory_masterCompany" runat="server" XDataBind="SFDATA:inv_inventory_master.Company" width="100%"></aspxform:XTextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td height="34" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                                        库房名称 
                                    </td>
                                    <td style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        <aspxform:XTextBox id="ctrlinv_inventory_masterdepot_id" runat="server" XDataBind="SFDATA:inv_inventory_master.depot_name" width="100%"></aspxform:XTextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        varState</td>
                                    <td>
                                        <aspxform:XTextBox id="XTextBox1" runat="server" XDataBind="varState" width="100%" BorderColor="#DCDCDC" BorderWidth="1">1</aspxform:XTextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator1" runat="server" ControlToValidate="ctrlinv_inventory_masterinv_master_time" ErrorMessage="请选择盘点时间" ForeColor="Red" Display="None">盘点时间</aspxform:XRequiredFieldValidator>
                                    </td>
                                    <td>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator2" runat="server" ControlToValidate="ctrlinv_inventory_masterinv_master_year" ErrorMessage="请填写盘点年份" ForeColor="Red" Display="None">年</aspxform:XRequiredFieldValidator>
                                    </td>
                                    <td>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator3" runat="server" ControlToValidate="ctrlinv_inventory_masterinv_master_month" ErrorMessage="请填写盘点月份" ForeColor="Red" Display="None">月</aspxform:XRequiredFieldValidator>
                                    </td>
                                    <td>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator4" runat="server" ControlToValidate="XDropDownList1" ErrorMessage="请选择盘点仓库" ForeColor="Red" Display="None">盘点仓库</aspxform:XRequiredFieldValidator>
                                    </td>
                                    <td>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
            </tbody>
        </table>
    </form>
</body>
</html>
