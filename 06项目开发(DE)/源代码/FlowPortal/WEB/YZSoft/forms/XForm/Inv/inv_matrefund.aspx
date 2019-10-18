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
                    <td align="center">
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
                                    <td width="100" height="34" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        公司名称 
                                    </td>
                                    <td width="214" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        <aspxform:XTextBox id="ctrlinv_matrefundCompanyName" runat="server" width="100%" XDataBind="SFDATA:inv_matrefund.CompanyName" DisableExpress="1" FieldName="公司名称"></aspxform:XTextBox>
                                    </td>
                                    <td width="100" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        部门名称 
                                    </td>
                                    <td width="214" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        <aspxform:XTextBox id="ctrlinv_matrefundDeptName" runat="server" width="100%" XDataBind="SFDATA:inv_matrefund.DeptName" DisableExpress="1" FieldName="部门名称"></aspxform:XTextBox>
                                    </td>
                                    <td width="100" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        &nbsp;</td>
                                    <td width="214" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                    </td>
                                </tr>
                                <tr>
                                    <td height="73" class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        退库部门</td>
                                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        <aspxform:XTextBox id="ctrlinv_matrefundref_org_id" runat="server" width="180px" XDataBind="SFDATA:inv_matrefund.RefundOrgName" DisableExpress="1" FieldName="退库部门"></aspxform:XTextBox>
                                        <aspxform:XSelectOUButton id="XSelectOUButton1" runat="server" Width="21px" DataMap="OUName->SFDATA:inv_matrefund.RefundOrgName;OUCode->SFDATA:inv_matrefund.ref_org_id"></aspxform:XSelectOUButton>
                                    </td>
                                    <td class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        退库人</td>
                                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        <aspxform:XTextBox id="ctrlinv_matrefundref_userid" runat="server" width="180px" XDataBind="SFDATA:inv_matrefund.RefundUserName" DisableExpress="1" FieldName="退库人"></aspxform:XTextBox>
                                        <aspxform:XSelectUserButton id="XSelectUserButton1" runat="server" Width="21px" DataMap="Account->SFDATA:inv_matrefund.RefundUserAccount;DisplayName->SFDATA:inv_matrefund.RefundUserName"></aspxform:XSelectUserButton>
                                    </td>
                                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        &nbsp;</td>
                                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                    </td>
                                </tr>
                                <tr>
                                    <td height="34" class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        附件</td>
                                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none" colspan="5">
                                        <aspxform:XAttachments id="XAttachments1" runat="server" width="100%" XDataBind="SFDATA:inv_matrefund.Attachments" FieldName="附件" FileTypesDescription="Word,Excel,Pdf" FileTypes="*.doc;*.docx;*.xls;*.xlsx;*.pdf;*.png;*.jpg;*.jpeg;*.gif"></aspxform:XAttachments>
                                    </td>
                                </tr>
                                <tr>
                                    <td height="34" class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        备注 
                                    </td>
                                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none" colspan="5">
                                        <aspxform:XTextBox id="ctrlinv_matrefundrefund_remarks" runat="server" width="100%" XDataBind="SFDATA:inv_matrefund.refund_remarks" FieldName="备注"></aspxform:XTextBox>
                                    </td>
                                </tr>
                                <tr>
                                </tr>
                            </tbody>
                        </table>
                        <table width="960" align="center" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none" border="0" cellspacing="0" cellpadding="0">
                            <tbody>
                                <tr>
                                    <td width="480" class="xttl" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                                        退库明细列表</td>
                                    <td width="480" align="right" class="xttl" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        <aspxform:XDataBrowserButton id="XDataBrowserButton1" runat="server" XClass="YZSoft.Forms.Field.DataBrowserButton" Width="63px" DataMap="tests_id->SFDATA:inv_matrefund_detail.tests_id;vendor_id->SFDATA:inv_matrefund_detail.vendor_id;vendor_code->SFDATA:inv_matrefund_detail.vendor_code;vendor_name->SFDATA:inv_matrefund_detail.vendor_name;mat_id->SFDATA:inv_matrefund_detail.mat_id;mat_code->SFDATA:inv_matrefund_detail.mat_code;mat_name->SFDATA:inv_matrefund_detail.mat_name;mat_spesc->SFDATA:inv_matrefund_detail.mat_spesc" UseSubmitBehavior="False" PopupWndHeight="-1" PopupWndWidth="-1" MultiSelect="True" DisplayColumns="vendor_name:供应商名称;mat_code:物料编码;mat_name:物料名称;mat_spesc:规格" XDataSource="DataSource:SFDATA;TableName:proc_tests;Filter:tests_class->varTestClass,Company->SFDATA:inv_matrefund.Company" Text="选择物料"></aspxform:XDataBrowserButton>
                                        <aspxform:XAddBlockButton id="XAddBlockButton1" runat="server" Text="新增" DataSource="SFDATA" TableName="inv_matrefund_detail"></aspxform:XAddBlockButton>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <div style="BORDER-TOP: 0px; BORDER-RIGHT: 0px; WIDTH: 960px; WHITE-SPACE: nowrap; OVERFLOW-X: auto; BORDER-BOTTOM: 0px; MIN-HEIGHT: 200px; BORDER-LEFT: 0px">
                            <table width="1350" align="center" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none" border="0" cellspacing="0" cellpadding="0" dynamicarea="1,1">
                                <tbody>
                                    <tr>
                                        <td width="49" height="34" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                                            序号</td>
                                        <td width="143" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            库房名称</td>
                                        <td width="146" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            供应商名称</td>
                                        <td width="97" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            物料编码</td>
                                        <td width="97" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            物料名称</td>
                                        <td width="93" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            规格</td>
                                        <td width="101" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            退库物料数量</td>
                                        <td width="97" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            基准单位</td>
                                        <td width="100" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            退库时间</td>
                                        <td width="130" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            化验结果</td>
                                        <td width="80" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            化验单</td>
                                        <td width="180" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            备注</td>
                                    </tr>
                                    <tr>
                                        <td height="34" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                                            <aspxform:xgridlineno id="XGridLineNo1" runat="server" width="100%" borderwidth="1" borderstyle="None" backcolor="White" textalign="Center">1</aspxform:xgridlineno>
                                        </td>
                                        <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            <aspxform:XDropDownList id="XDropDownList1" runat="server" XDataBind="SFDATA:inv_matrefund_detail.depot_id" Width="100%" DataMap="depot_name->SFDATA:inv_matrefund_detail.depot_name" XDataSource="DataSource:SFDATA;TableName:ctl_depot;Filter:state->varState,Company->SFDATA:inv_matrefund.Company" PromptText="--请选择--" ValueColumn="depot_id" DisplayColumn="depot_name"></aspxform:XDropDownList>
                                            <aspxform:XTextBox id="XTextBox4" runat="server" width="100%" XDataBind="SFDATA:inv_matrefund_detail.depot_name" FieldName="库房名称" HiddenExpress="1"></aspxform:XTextBox>
                                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator3" runat="server" ControlToValidate="XDropDownList1" ErrorMessage="请选择库房名称" ForeColor="Red" Display="None">库房名称</aspxform:XRequiredFieldValidator>
                                        </td>
                                        <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            <aspxform:XTextBox id="ctrlinv_matrefund_detailvendor_name" runat="server" width="100%" XDataBind="SFDATA:inv_matrefund_detail.vendor_name" DisableExpress="1" FieldName="供应商名称"></aspxform:XTextBox>
                                            <aspxform:XTextBox id="XTextBox8" runat="server" width="100%" XDataBind="SFDATA:inv_matrefund_detail.vendor_id" HiddenExpress="1"></aspxform:XTextBox>
                                            <aspxform:XTextBox id="XTextBox3" runat="server" width="100%" XDataBind="SFDATA:inv_matrefund_detail.vendor_code" HiddenExpress="1"></aspxform:XTextBox>
                                            <aspxform:XTextBox id="XTextBox9" runat="server" width="100%" XDataBind="SFDATA:inv_matrefund_detail.mat_id" DisableExpress="1" HiddenExpress="1"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            <aspxform:XTextBox id="ctrlinv_matrefund_detailmat_code" runat="server" width="100%" XDataBind="SFDATA:inv_matrefund_detail.mat_code" DisableExpress="1" FieldName="物料编码" DataMap="base_unit->SFDATA:inv_matrefund_detail.refund_stnum_unit" ValueToDisplayText="DataSource:SFDATA;TableName:ctl_material;FilterColumn:mat_code;DisplayColumn:mat_code"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            <aspxform:XTextBox id="ctrlinv_matrefund_detailmat_name" runat="server" width="100%" XDataBind="SFDATA:inv_matrefund_detail.mat_name" DisableExpress="1" FieldName="物料名称"></aspxform:XTextBox>
                                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator6" runat="server" ControlToValidate="ctrlinv_matrefund_detailmat_name" ErrorMessage="请选择物料" ForeColor="Red" Display="None">物料名称</aspxform:XRequiredFieldValidator>
                                        </td>
                                        <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            <aspxform:XTextBox id="ctrlinv_matrefund_detailmat_spec" runat="server" width="100%" XDataBind="SFDATA:inv_matrefund_detail.mat_spesc" DisableExpress="1" FieldName="规格"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            <aspxform:XTextBox id="ctrlinv_matrefund_detailrefund_stnum" runat="server" width="100%" XDataBind="SFDATA:inv_matrefund_detail.refund_stnum" FieldName="退库物料数量"></aspxform:XTextBox>
                                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator4" runat="server" ControlToValidate="ctrlinv_matrefund_detailrefund_stnum" ErrorMessage="请填写退库物料数量" ForeColor="Red" Display="None">退库物料数量</aspxform:XRequiredFieldValidator>
                                        </td>
                                        <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            <aspxform:XTextBox id="ctrlinv_matrefund_detailrefund_stnum_unit" runat="server" width="100%" XDataBind="SFDATA:inv_matrefund_detail.refund_stnum_unit" DisableExpress="1" FieldName="基准单位"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            <aspxform:XDateTimePicker id="ctrlinv_matrefund_detailrefund__time" runat="server" width="100%" XDataBind="SFDATA:inv_matrefund_detail.refund__time" FieldName="退库时间"></aspxform:XDateTimePicker>
                                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator5" runat="server" ControlToValidate="ctrlinv_matrefund_detailrefund__time" ErrorMessage="请选择退库时间" ForeColor="Red" Display="None">退库时间</aspxform:XRequiredFieldValidator>
                                        </td>
                                        <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            <aspxform:XDropDownList id="XDropDownList2" runat="server" XDataBind="varTestResult" DisableExpress="1" FieldName="化验结果" Width="100%">
                                                <asp:ListItem Selected="True" Value="1">合格</asp:ListItem>
                                                <asp:ListItem Value="2">不合格（让步接收）</asp:ListItem>
                                                <asp:ListItem Value="3">不合格（不接受）</asp:ListItem>
                                            </aspxform:XDropDownList>
                                            <aspxform:XTextBox id="XTextBox5" runat="server" width="100%" DataMap="tests_result->varTestResult" HiddenExpress="1" ValueToDisplayText="DataSource:SFDATA;TableName:proc_tests;FilterColumn:tests_id;DisplayColumn:tests_result" Express="SFDATA:inv_matrefund_detail.tests_id" BorderColor="#DCDCDC"></aspxform:XTextBox>
                                        </td>
                                        <td align="center" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            <aspxform:XChildFormLink id="XChildFormLink1" runat="server" XDataBind="SFDATA:inv_matrefund_detail.tests_id" FieldName="化验单" FormApplication="Proc/proc_tests_read">化验单</aspxform:XChildFormLink>
                                        </td>
                                        <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            <aspxform:XTextBox id="ctrlinv_matrefund_detailrefund_remarks" runat="server" width="100%" XDataBind="SFDATA:inv_matrefund_detail.refund_remarks" FieldName="备注"></aspxform:XTextBox>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <br />
                        <table width="800" align="center" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none" border="0" cellspacing="0" cellpadding="0" hiddenexpress="1">
                            <tbody>
                            </tbody>
                        </table>
                        <table width="800" border="0" cellspacing="0" cellpadding="0" hiddenexpress="1">
                            <tbody>
                                <tr>
                                    <td width="266">
                                        退库部门编码</td>
                                    <td width="267">
                                        <aspxform:XTextBox id="XTextBox1" runat="server" width="100%" XDataBind="SFDATA:inv_matrefund.ref_org_id"></aspxform:XTextBox>
                                    </td>
                                    <td width="267">
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        退库人帐号</td>
                                    <td>
                                        <aspxform:XTextBox id="XTextBox2" runat="server" width="100%" XDataBind="SFDATA:inv_matrefund.RefundUserAccount"></aspxform:XTextBox>
                                    </td>
                                    <td>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        公司编码</td>
                                    <td>
                                        <aspxform:XTextBox id="XTextBox7" runat="server" width="100%" XDataBind="SFDATA:inv_matrefund.Company" DisableExpress="1"></aspxform:XTextBox>
                                    </td>
                                    <td>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        退库化验</td>
                                    <td>
                                        <aspxform:XTextBox id="XTextBox6" runat="server" width="100%" XDataBind="varTestClass" BorderColor="#DCDCDC" BorderWidth="1">退库化验</aspxform:XTextBox>
                                    </td>
                                    <td>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        varState</td>
                                    <td>
                                        <aspxform:XTextBox id="XTextBox10" runat="server" width="100%" XDataBind="varState" BorderColor="#DCDCDC" BorderWidth="1">1</aspxform:XTextBox>
                                    </td>
                                    <td>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator1" runat="server" ControlToValidate="ctrlinv_matrefundref_org_id" ErrorMessage="请选择退库部门" ForeColor="Red" Display="None">退库部门</aspxform:XRequiredFieldValidator>
                                    </td>
                                    <td>
                                        <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator2" runat="server" ControlToValidate="ctrlinv_matrefundref_userid" ErrorMessage="请选择退库人" ForeColor="Red" Display="None">退库人</aspxform:XRequiredFieldValidator>
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
