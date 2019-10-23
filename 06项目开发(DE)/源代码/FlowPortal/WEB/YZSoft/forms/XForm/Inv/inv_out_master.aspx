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
                                    <td width="100" height="34" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        出库人公司 
                                    </td>
                                    <td width="214" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        <aspxform:XTextBox id="ctrlinv_out_masterCompanyName" runat="server" FieldName="出库人公司" DisableExpress="1" XDataBind="SFDATA:inv_out_master.CompanyName" width="100%"></aspxform:XTextBox>
                                    </td>
                                    <td width="100" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        出库人部门 
                                    </td>
                                    <td width="214" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        <aspxform:XTextBox id="ctrlinv_out_masterDeptName" runat="server" FieldName="出库人部门" DisableExpress="1" XDataBind="SFDATA:inv_out_master.DeptName" width="100%"></aspxform:XTextBox>
                                    </td>
                                    <td width="100" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        出库人姓名 
                                    </td>
                                    <td width="214" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        <aspxform:XTextBox id="ctrlinv_out_masterCreateUserName" runat="server" FieldName="出库人姓名" DisableExpress="1" XDataBind="SFDATA:inv_out_master.CreateUserName" width="100%"></aspxform:XTextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td height="34" class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        领用人部门 
                                    </td>
                                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        <aspxform:XTextBox id="ctrlinv_out_masterreq_org_id" runat="server" FieldName="领用人部门" DisableExpress="1" XDataBind="SFDATA:inv_out_master.ReqOrgName" width="180px"></aspxform:XTextBox>
                                        <aspxform:XSelectOUButton id="XSelectOUButton1" runat="server" DataMap="OUName->SFDATA:inv_out_master.ReqOrgName;OUCode->SFDATA:inv_out_master.req_org_id" Width="21px"></aspxform:XSelectOUButton>
                                    </td>
                                    <td class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        领用人</td>
                                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        <aspxform:XTextBox id="ctrlinv_out_masterreq_userid" runat="server" FieldName="领用人" DisableExpress="1" XDataBind="SFDATA:inv_out_master.ReqUserName" width="180px"></aspxform:XTextBox>
                                        <aspxform:XSelectUserButton id="XSelectUserButton1" runat="server" DataMap="Account->SFDATA:inv_out_master.ReqUserAccount;DisplayName->SFDATA:inv_out_master.ReqUserName" Width="21px"></aspxform:XSelectUserButton>
                                    </td>
                                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        &nbsp;</td>
                                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                    </td>
                                </tr>
                                <tr>
                                    <td height="73" class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        附件</td>
                                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none" colspan="5">
                                        <aspxform:XAttachments id="XAttachments1" runat="server" FieldName="附件" XDataBind="SFDATA:inv_out_master.Attachments" width="100%" FileTypes="*.*" FileTypesDescription="所有文件"></aspxform:XAttachments>
                                    </td>
                                </tr>
                                <tr>
                                    <td height="34" class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        备注 
                                    </td>
                                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none" colspan="5">
                                        <aspxform:XTextBox id="ctrlinv_out_masteroutmaster_remarks" runat="server" FieldName="备注" XDataBind="SFDATA:inv_out_master.outmaster_remarks" width="100%"></aspxform:XTextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td height="34" class="xttl" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none" colspan="5">
                                        出库物料明细</td>
                                    <td align="right" class="xttl" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        <aspxform:XAddBlockButton id="XAddBlockButton1" runat="server" Text="新增" DataSource="SFDATA" TableName="inv_out_detail"></aspxform:XAddBlockButton>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <div style="BORDER-TOP: 0px; BORDER-RIGHT: 0px; WIDTH: 960px; WHITE-SPACE: nowrap; OVERFLOW-X: auto; BORDER-BOTTOM: 0px; MIN-HEIGHT: 200px; BORDER-LEFT: 0px">
                            <table width="1200" align="center" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none" border="0" cellspacing="0" cellpadding="0" dynamicarea=" 1,1 ">
                                <tbody>
                                    <tr>
                                        <td width="28" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                                            序号</td>
                                        <td width="190" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            库房名称</td>
                                        <td width="70" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            供应商名称</td>
                                        <td width="329" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            物料编码</td>
                                        <td width="56" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            物料名称</td>
                                        <td width="56" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            物料规格</td>
                                        <td width="56" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            基准单位</td>
                                        <td width="110" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            当前库存</td>
                                        <td width="94" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            出库物料数量</td>
                                        <td width="157" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            出库时间</td>
                                        <td width="28" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            备注</td>
                                    </tr>
                                    <tr>
                                        <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                                            <aspxform:xgridlineno id="XGridLineNo1" runat="server" width="100%" textalign="Center" backcolor="White" borderstyle="None" borderwidth="1">1</aspxform:xgridlineno>
                                        </td>
                                        <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            <aspxform:XDropDownList id="XDropDownList1" runat="server" XDataBind="SFDATA:inv_out_detail.depot_id" DataMap="depot_name->SFDATA:inv_out_detail.depot_name" Width="100px" DisplayColumn="depot_name" ValueColumn="depot_id" XDataSource="DataSource:SFDATA;TableName:ctl_depot;Filter:state->varState,Company->SFDATA:inv_out_master.Company" PromptText="--请选择--"></aspxform:XDropDownList>
                                            <aspxform:XTextBox id="ctrlinv_out_detaildepot_name" runat="server" FieldName="库房名称" XDataBind="SFDATA:inv_out_detail.depot_name" width="100%" HiddenExpress="1"></aspxform:XTextBox>
                                            <aspxform:XTextBox id="ctrl_inv_out_detailvendor_id" runat="server" XDataBind="SFDATA:inv_out_detail.vendor_id" width="100%" HiddenExpress="1"></aspxform:XTextBox>
                                            <aspxform:XTextBox id="XTextBox1" runat="server" XDataBind="SFDATA:inv_out_detail.vendor_code" width="100%" HiddenExpress="1"></aspxform:XTextBox>
                                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator3" runat="server" Display="None" ForeColor="Red" ErrorMessage="请选择库房名称" ControlToValidate="XDropDownList1">库房名称</aspxform:XRequiredFieldValidator>
                                        </td>
                                        <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            <aspxform:XTextBox id="ctrlinv_out_detailvendor_name" runat="server" FieldName="供应商名称" DisableExpress="1" XDataBind="SFDATA:inv_out_detail.vendor_name" width="100%"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            <aspxform:XTextBox id="ctrlinv_out_detailmat_code" runat="server" FieldName="物料编码" DisableExpress="1" XDataBind="SFDATA:inv_out_detail.mat_code" width="120px" ValueToDisplayText></aspxform:XTextBox>
                                            <aspxform:XDataBrowserButton id="XDataBrowserButton2" runat="server" DataMap="vendor_id->SFDATA:inv_out_detail.vendor_id;vendor_code->SFDATA:inv_out_detail.vendor_code;vendor_name->SFDATA:inv_out_detail.vendor_name;mat_id->SFDATA:inv_out_detail.mat_id;mat_code->SFDATA:inv_out_detail.mat_code;mat_name->SFDATA:inv_out_detail.mat_name;mat_spec->SFDATA:inv_out_detail.mat_spec;depot_stnum_unit->SFDATA:inv_out_detail.out_stnum_unit" Width="21px" XDataSource="DataSource:SFDATA;TableName:inv_depot_detail;Filter:depot_id->SFDATA:inv_out_detail.depot_id,state->varState,Company->SFDATA:inv_out_master.Company" DisplayColumns="vendor_name:供应商名称;mat_code:物料编码;mat_name:物料名称;mat_spec:规格;depot_stnum_unit:基准单位;depot_mat_num:当前库存"></aspxform:XDataBrowserButton>
                                            <aspxform:XTextBox id="XTextBox6" runat="server" DisableExpress="1" XDataBind="SFDATA:inv_out_detail.mat_id" width="120px" HiddenExpress="1"></aspxform:XTextBox>
                                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator4" runat="server" Display="None" ForeColor="Red" ErrorMessage="请选择物料编码" ControlToValidate="ctrlinv_out_detailmat_code">物料编码</aspxform:XRequiredFieldValidator>
                                        </td>
                                        <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            <aspxform:XTextBox id="ctrlinv_out_detailmat_name" runat="server" FieldName="物料名称" DisableExpress="1" XDataBind="SFDATA:inv_out_detail.mat_name" width="100%"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            <aspxform:XTextBox id="ctrlinv_out_detailmat_spec" runat="server" FieldName="物料规格" DisableExpress="1" XDataBind="SFDATA:inv_out_detail.mat_spec" width="100%"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            <aspxform:XTextBox id="ctrlinv_out_detailout_stnum_unit" runat="server" FieldName="基准单位" DisableExpress="1" XDataBind="SFDATA:inv_out_detail.out_stnum_unit" width="100%"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            <aspxform:XTextBox id="XTextBox2" runat="server" FieldName="当前库存" DisableExpress="1" XDataBind="varmatnum" width="100%" BorderColor="#DCDCDC"></aspxform:XTextBox>
                                            <aspxform:XDropDownList id="XDropDownList2" runat="server" DataMap="depot_mat_num->varmatnum" DisplayColumn="depot_mat_num" ValueColumn="depot_mat_num" XDataSource="DataSource:SFDATA;TableName:inv_depot_detail;Filter:depot_id->SFDATA:inv_out_detail.depot_id,vendor_id->SFDATA:inv_out_detail.vendor_id,mat_code->SFDATA:inv_out_detail.mat_code,state->varState" HiddenExpress="1"></aspxform:XDropDownList>
                                        </td>
                                        <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            <aspxform:XTextBox id="ctrlinv_out_detailout_stnum" runat="server" FieldName="出库物料数量" XDataBind="SFDATA:inv_out_detail.out_stnum" width="100%"></aspxform:XTextBox>
                                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator5" runat="server" Display="None" ForeColor="Red" ErrorMessage="请填写出库物料数量" ControlToValidate="ctrlinv_out_detailout_stnum">出库物料数量</aspxform:XRequiredFieldValidator>
                                            <br />
                                        </td>
                                        <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            <aspxform:XDateTimePicker id="ctrlinv_out_detailout_time" runat="server" FieldName="出库时间" XDataBind="SFDATA:inv_out_detail.out_time" width="100%"></aspxform:XDateTimePicker>
                                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator6" runat="server" Display="None" ForeColor="Red" ErrorMessage="请选择出库时间" ControlToValidate="ctrlinv_out_detailout_time">出库时间</aspxform:XRequiredFieldValidator>
                                        </td>
                                        <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            <aspxform:XTextBox id="XTextBox3" runat="server" FieldName="备注" XDataBind="SFDATA:inv_out_detail.outdetail_remarks" width="100%" BorderColor="#DCDCDC"></aspxform:XTextBox>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <br />
                        <table width="800" align="center" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none" border="0" cellspacing="0" cellpadding="0" hiddenexpress="1">
                            <tbody>
                                <tr>
                                    <td width="100" height="25" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                                        领用人部门编码</td>
                                    <td style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        <aspxform:XTextBox id="ctrlinv_out_masterorg_id" runat="server" XDataBind="SFDATA:inv_out_master.req_org_id" width="100%"></aspxform:XTextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="100" height="25" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                                        领用人帐号</td>
                                    <td style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        <aspxform:XTextBox id="ctrlinv_out_masterout_userid" runat="server" XDataBind="SFDATA:inv_out_master.ReqUserAccount" width="100%"></aspxform:XTextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        公司编码</td>
                                    <td>
                                        <aspxform:XTextBox id="XTextBox5" runat="server" XDataBind="SFDATA:inv_out_master.Company" width="100%" BorderColor="#DCDCDC" BorderWidth="1"></aspxform:XTextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        varState</td>
                                    <td>
                                        <aspxform:XTextBox id="XTextBox4" runat="server" XDataBind="varState" width="100%" BorderColor="#DCDCDC" BorderWidth="1">1</aspxform:XTextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator1" runat="server" Display="None" ForeColor="Red" ErrorMessage="请选择领用人部门" ControlToValidate="ctrlinv_out_masterreq_org_id">领用人部门</aspxform:XRequiredFieldValidator>
                                    </td>
                                    <td>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator2" runat="server" Display="None" ForeColor="Red" ErrorMessage="请选择领用人" ControlToValidate="ctrlinv_out_masterout_userid">领用人</aspxform:XRequiredFieldValidator>
                                    </td>
                                    <td>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <aspxform:XRangeValidator id="XRangeValidator1" runat="server" Display="None" ForeColor="Red" ErrorMessage="超出当前库存量" ControlToValidate="ctrlinv_out_detailout_stnum" Type="Double" MinValueExpress="0" MaxValueExpress="varmatnum"></aspxform:XRangeValidator>
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
