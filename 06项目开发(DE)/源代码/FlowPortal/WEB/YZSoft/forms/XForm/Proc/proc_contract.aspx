<%@ Page Language="C#" %>
<%@ Register TagPrefix="aspxform" Namespace="XFormDesigner.Framework.Web.UI" Assembly="XFormDesigner.Framework" %>
<script runat="server">

    // Insert page code here
    //

</script>
<html xmlns:XForm="xmlns:xform">
<head runat="server">
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE8" />
    <title>Demo</title>
    <link rel="stylesheet" type="text/css" href="../../Style/FormGray.css" />
</head>
<body>
    <form runat="server">
        <table align="center">
            <tbody>
                <tr>
                    <td>
                        <!-- Insert content here -->
                        <table width="960" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none" border="0" cellspacing="0" cellpadding="0">
                            <tbody>
                                <tr>
                                    <td width="320" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none">
                                    </td>
                                    <td width="320" align="center" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none">
                                        <strong><font size="5">采购合同</font></strong></td>
                                    <td width="320" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none">
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <table width="960" align="center" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none" border="0" cellspacing="0" cellpadding="0">
                            <tbody>
                                <tr>
                                    <td width="158" height="34" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        合同编号</td>
                                    <td width="158" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        <aspxform:XTextBox id="XTextBox2" runat="server" XDataBind="SFDATA:proc_contract.contract_code" width="100%" BorderColor="#DCDCDC" FieldName="合同编号"></aspxform:XTextBox>
                                    </td>
                                    <td width="158" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        合同类型</td>
                                    <td width="158" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        <aspxform:XDropDownList id="XDropDownList1" runat="server" XDataBind="SFDATA:proc_contract.contract_type" FieldName="合同类型" PromptText="--请选择--">
                                            <asp:ListItem Value="1">框架合同</asp:ListItem>
                                            <asp:ListItem Value="2">普通合同</asp:ListItem>
                                            <asp:ListItem Value="3">订单</asp:ListItem>
                                        </aspxform:XDropDownList>
                                    </td>
                                    <td width="158" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        合同名称</td>
                                    <td width="158" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none" colspan="1">
                                        <aspxform:XTextBox id="XTextBox6" runat="server" XDataBind="SFDATA:proc_contract.contract_name" width="100%" BorderColor="#DCDCDC" FieldName="合同名称"></aspxform:XTextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td height="34" class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        供应商名称</td>
                                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        <aspxform:XTextBox id="XTextBox3" runat="server" XDataBind="SFDATA:proc_contract.vendor_name" width="80%" BorderColor="#DCDCDC" FieldName="供应商名称" DisableExpress="1"></aspxform:XTextBox>
                                        <aspxform:XDataBrowserButton id="XDataBrowserButton3" runat="server" Width="21px" XDataSource="DataSource:SFDATA;TableName:ctl_vendor;Filter:state->varState" DisplayColumns="vendor_name:供应商名称;vendor_contact:联系人;vendor_tel:联系电话;vendor_email:邮箱;vendor_addr:地址" DataMap="vendor_id->SFDATA:proc_contract.vendor_id;vendor_name->SFDATA:proc_contract.vendor_name"></aspxform:XDataBrowserButton>
                                    </td>
                                    <td class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        委外</td>
                                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        <aspxform:XDropDownList id="XDropDownList2" runat="server" XDataBind="SFDATA:proc_contract.if_outsource" FieldName="委外" PromptText="--请选择--">
                                            <asp:ListItem Value="1">是</asp:ListItem>
                                            <asp:ListItem Value="0">否</asp:ListItem>
                                        </aspxform:XDropDownList>
                                    </td>
                                    <td class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        总金额</td>
                                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none" colspan="1">
                                        <aspxform:XTextBox id="XTextBox7" runat="server" XDataBind="SFDATA:proc_contract.total_price" width="100%" BorderColor="#DCDCDC" FieldName="总金额"></aspxform:XTextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td height="34" class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        提交人</td>
                                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        <aspxform:XTextBox id="XTextBox4" runat="server" XDataBind="SFDATA:proc_contract.CreateUserName" width="100%" BorderColor="#DCDCDC" FieldName="提交人" DisableExpress="1"></aspxform:XTextBox>
                                    </td>
                                    <td class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        签订人员</td>
                                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        <aspxform:XTextBox id="XTextBox5" runat="server" XDataBind="SFDATA:proc_contract.SignUserName" width="80%" BorderColor="#DCDCDC" FieldName="签订人员" DisableExpress="1"></aspxform:XTextBox>
                                        <aspxform:XSelectUserButton id="XSelectUserButton1" runat="server" Width="21px" DataMap="Account->SFDATA:proc_contract.SignUserAccount;DisplayName->SFDATA:proc_contract.SignUserName"></aspxform:XSelectUserButton>
                                    </td>
                                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                    </td>
                                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none" colspan="1">
                                    </td>
                                </tr>
                                <tr>
                                    <td class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        附件</td>
                                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none" colspan="5">
                                        <aspxform:XAttachments id="XAttachments1" runat="server" XDataBind="SFDATA:proc_contract.attachment" width="100%" FieldName="附件" FileTypes="*.doc;*.docx;*.xls;*.xlsx;*.pdf;*.png;*.jpg;*.jpeg;*.gif" FileTypesDescription="Word,Excel,Pdf"></aspxform:XAttachments>
                                    </td>
                                </tr>
                                <tr>
                                    <td height="34" align="left" class="xttl" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none" colspan="3">
                                        任务列表</td>
                                    <td align="right" class="xttl" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none" colspan="3">
                                        <aspxform:XDataBrowserButton id="XDataBrowserButton2" runat="server" Width="70px" XDataSource="DataSource:SFDATA;TableName:v_proc_pur_task" DisplayColumns="mat_code:物料编码;mat_name:物料名称;mat_spec:规格;plan_price:计划单价;pur_slnum:申购数量;pur_slnum_unit:申购单位;pur_stnum:基准数量;pur_stnum_unit:基准单位;sl_st_scale:转换比例;plan_arrival_time:计划到货时间;item_price:计划金额" DataMap="pur_task_id->SFDATA:proc_contract_task.pur_task_id" Text="添加物料" MultiSelect="True"></aspxform:XDataBrowserButton>
                                        <aspxform:XAddBlockButton id="XAddBlockButton1" runat="server" Text="新增" DataSource="SFDATA" TableName="proc_contract_task"></aspxform:XAddBlockButton>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <div style="BORDER-TOP: 0px; BORDER-RIGHT: 0px; WIDTH: 960px; WHITE-SPACE: nowrap; OVERFLOW-X: auto; BORDER-BOTTOM: 0px; MIN-HEIGHT: 200px; BORDER-LEFT: 0px">
                            <table width="1200" align="center" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none" border="0" cellspacing="0" cellpadding="0" dynamicarea="1,1">
                                <tbody>
                                    <tr>
                                        <td width="48" height="35" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                                            序号</td>
                                        <td width="150" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            物料编码</td>
                                        <td width="96" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            物料名称</td>
                                        <td width="96" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            物料规格</td>
                                        <td width="96" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            申购数量</td>
                                        <td width="96" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            申购单位</td>
                                        <td width="94" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            计划单价</td>
                                        <td width="97" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            价格单位</td>
                                        <td width="97" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            计划金额</td>
                                        <td width="100" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            计划到货时间</td>
                                        <td width="96" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            是否紧急</td>
                                        <td width="100" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            备注</td>
                                    </tr>
                                    <tr>
                                        <td height="34" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                                            <aspxform:XGridLineNo id="XGridLineNo1" runat="server" Width="100%" BorderStyle="None" BackColor="White" TextAlign="Center">1</aspxform:XGridLineNo>
                                        </td>
                                        <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            <aspxform:XTextBox id="XTextBox1" runat="server" XDataBind="varcode" width="120px" BorderColor="#DCDCDC" FieldName="物料编码" DisableExpress="1" ValueToDisplayText></aspxform:XTextBox>
                                            <aspxform:XDataBrowserButton id="XDataBrowserButton1" runat="server" Width="21px" XDataSource="DataSource:SFDATA;TableName:proc_pur_task" DisplayColumns="mat_code:物料编码;mat_name:物料名称;mat_spec:规格;plan_price:计划单价;pur_slnum:申购数量;pur_slnum_unit:申购单位;pur_stnum:基准数量;pur_stnum_unit:基准单位;sl_st_scale:转换比例;plan_arrival_time:计划到货时间;item_price:计划金额" DataMap="pur_task_id->SFDATA:proc_contract_task.pur_task_id"></aspxform:XDataBrowserButton>
                                            <br />
                                            <aspxform:XTextBox id="XTextBox20" runat="server" XDataBind="SFDATA:proc_contract_task.pur_task_id" width="100%" BorderColor="#DCDCDC" DataMap="mat_code->varcode;mat_name->varname;mat_spec->varspec;plan_price->varprice;pur_slnum->varslnum;pur_slnum_unit->varunit;pur_stnum_unit->varpriceunit;plan_arrival_time->vartime;if_urg->varurg;item_price->varsprice;pur_task_remarks->varremark" ValueToDisplayText="DataSource:SFDATA;TableName:proc_pur_task;FilterColumn:pur_task_id;DisplayColumn:pur_task_id" HiddenExpress="1"></aspxform:XTextBox>
                                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator6" runat="server" ControlToValidate="XTextBox1" ErrorMessage="请选择物料编码" ForeColor="Red" Display="None">物料编码</aspxform:XRequiredFieldValidator>
                                        </td>
                                        <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            <aspxform:XTextBox id="XTextBox10" runat="server" XDataBind="varname" width="100%" BorderColor="#DCDCDC" FieldName="物料名称" DisableExpress="1"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            <aspxform:XTextBox id="XTextBox11" runat="server" XDataBind="varspec" width="100%" BorderColor="#DCDCDC" FieldName="物料规格" DisableExpress="1"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            <aspxform:XTextBox id="XTextBox12" runat="server" XDataBind="varslnum" width="100%" BorderColor="#DCDCDC" FieldName="申购数量" DisableExpress="1"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            <aspxform:XTextBox id="XTextBox13" runat="server" XDataBind="varunit" width="100%" BorderColor="#DCDCDC" FieldName="申购单位" DisableExpress="1"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            <aspxform:XTextBox id="XTextBox14" runat="server" XDataBind="varprice" width="100%" BorderColor="#DCDCDC" FieldName="计划单价" DisableExpress="1"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            <aspxform:XTextBox id="XTextBox15" runat="server" XDataBind="varpriceunit" width="100%" BorderColor="#DCDCDC" FieldName="价格单位" DisableExpress="1"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            <aspxform:XTextBox id="XTextBox16" runat="server" XDataBind="varsprice" width="100%" BorderColor="#DCDCDC" FieldName="计划金额" DisableExpress="1"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            <aspxform:XDateTimePicker id="XDateTimePicker1" runat="server" XDataBind="vartime" BorderColor="#DCDCDC" FieldName="计划到货时间" Width="100%" DisplayOnly="True"></aspxform:XDateTimePicker>
                                        </td>
                                        <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            <aspxform:XDropDownList id="XDropDownList3" runat="server" XDataBind="varurg" FieldName="是否紧急" DisableExpress="1" Width="100%">
                                                <asp:ListItem Selected="True" Value="1">否</asp:ListItem>
                                                <asp:ListItem Value="2">是</asp:ListItem>
                                            </aspxform:XDropDownList>
                                        </td>
                                        <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            <aspxform:XTextBox id="XTextBox19" runat="server" XDataBind="varremark" BorderColor="#DCDCDC" FieldName="备注" DisableExpress="1"></aspxform:XTextBox>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <br />
                        <table width="462" align="center" border="0" cellspacing="0" cellpadding="0" hiddenexpress="1">
                            <tbody>
                                <tr>
                                    <td width="154" height="34">
                                        签订人员编号</td>
                                    <td width="154">
                                        <aspxform:XTextBox id="XTextBox22" runat="server" XDataBind="SFDATA:proc_contract.SignUserAccount" width="100%" BorderColor="#DCDCDC"></aspxform:XTextBox>
                                    </td>
                                    <td width="154">
                                    </td>
                                </tr>
                                <tr>
                                    <td height="34">
                                        供应商id</td>
                                    <td>
                                        <aspxform:XTextBox id="XTextBox21" runat="server" XDataBind="SFDATA:proc_contract.vendor_id" width="100%" BorderColor="#DCDCDC"></aspxform:XTextBox>
                                    </td>
                                    <td>
                                    </td>
                                </tr>
                                <tr>
                                    <td height="34">
                                        审批状态</td>
                                    <td>
                                        <aspxform:XTextBox id="XTextBox23" runat="server" XDataBind="SFDATA:proc_contract.approval_state" width="100%" BorderColor="#DCDCDC">1</aspxform:XTextBox>
                                    </td>
                                    <td>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        varState</td>
                                    <td>
                                        <aspxform:XTextBox id="XTextBox8" runat="server" XDataBind="varState" width="100%" BorderColor="#DCDCDC">1</aspxform:XTextBox>
                                    </td>
                                    <td>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator1" runat="server" ControlToValidate="XTextBox2" ErrorMessage="请填写合同编号" ForeColor="Red" Display="None">合同编号</aspxform:XRequiredFieldValidator>
                                    </td>
                                    <td>
                                    </td>
                                    <td>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator2" runat="server" ControlToValidate="XDropDownList1" ErrorMessage="请选择合同类型" ForeColor="Red" Display="None">合同类型</aspxform:XRequiredFieldValidator>
                                    </td>
                                    <td>
                                    </td>
                                    <td>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator7" runat="server" ControlToValidate="XTextBox6" ErrorMessage="请填写合同名称" ForeColor="Red" Display="None">合同名称</aspxform:XRequiredFieldValidator>
                                    </td>
                                    <td>
                                    </td>
                                    <td>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator3" runat="server" ControlToValidate="XTextBox3" ErrorMessage="请选择供应商名称" ForeColor="Red" Display="None">供应商名称</aspxform:XRequiredFieldValidator>
                                    </td>
                                    <td>
                                    </td>
                                    <td>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator4" runat="server" ControlToValidate="XDropDownList2" ErrorMessage="请选择是否委外" ForeColor="Red" Display="None">委外</aspxform:XRequiredFieldValidator>
                                    </td>
                                    <td>
                                    </td>
                                    <td>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator8" runat="server" ControlToValidate="XTextBox7" ErrorMessage="请填写总金额" ForeColor="Red" Display="None">总金额</aspxform:XRequiredFieldValidator>
                                    </td>
                                    <td>
                                    </td>
                                    <td>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator5" runat="server" ControlToValidate="XTextBox5" ErrorMessage="请选择签订人员" ForeColor="Red" Display="None">签订人员</aspxform:XRequiredFieldValidator>
                                    </td>
                                    <td>
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
