﻿<%@ Page Language="C#" %>
<%@ Register TagPrefix="aspxform" Namespace="XFormDesigner.Framework.Web.UI" Assembly="XFormDesigner.Framework" %>
<script runat="server">

    // Insert page code here
    //

</script>
<html xmlns:XForm="xmlns:xform">
<head runat="server">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge" />
    <title>BPM Form</title>
    <link href="../../style/FormGray.css" rel="stylesheet" />
    <script src="../../scripts/My97DatePicker/WdatePicker.js"></script>
</head>
<body>
    <form runat="server">
        <!-- Insert content here -->
        <table align="center">
            <tbody>
                <tr>
                    <td>
                        <table width="960" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none" border="0" cellspacing="0" cellpadding="0">
                            <tbody>
                                <tr>
                                    <td width="320" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none">
                                    </td>
                                    <td width="320" align="center" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none">
                                        <strong><font size="5">采购需求</font></strong></td>
                                    <td width="320" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none">
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <table width="960" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none" border="0" cellspacing="0" cellpadding="0">
                            <tbody>
                                <tr>
                                    <td width="151" height="34" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        公司</td>
                                    <td width="161" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        <aspxform:XTextBox id="XTextBox26" runat="server" XDataBind="SFDATA:proc_demand.CompanyName" width="100%" BorderColor="#DCDCDC" DisableExpress="1" FieldName="公司"></aspxform:XTextBox>
                                    </td>
                                    <td width="161" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        部门</td>
                                    <td width="151" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        <aspxform:XTextBox id="XTextBox10" runat="server" XDataBind="SFDATA:proc_demand.DeptName" width="100%" BorderColor="#DCDCDC" DisableExpress="1" FieldName="部门"></aspxform:XTextBox>
                                    </td>
                                    <td width="161" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        提报人</td>
                                    <td width="161" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        <aspxform:XTextBox id="XTextBox25" runat="server" XDataBind="SFDATA:proc_demand.CreateUserName" width="100%" BorderColor="#DCDCDC" DisableExpress="1" FieldName="提交人"></aspxform:XTextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        合计</td>
                                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        <aspxform:XTextBox id="XTextBox17" runat="server" XDataBind="varhj" width="100%" BorderColor="#DCDCDC" Format="type:currency;.2" Express="sum(SFDATA:proc_demand_detail.item_price)"></aspxform:XTextBox>
                                    </td>
                                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        元</td>
                                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none" colspan="3">
                                    </td>
                                </tr>
                                <tr>
                                    <td height="84" class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        备注</td>
                                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none" colspan="5">
                                        <aspxform:XTextBox id="XTextBox1" runat="server" XDataBind="SFDATA:proc_demand.demand_remarks" width="100%" BorderColor="#DCDCDC" FieldName="备注" Rows="5" TextMode="MultiLine"></aspxform:XTextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td height="34" class="xttl" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none" colspan="4">
                                        采购明细</td>
                                    <td align="right" class="xttl" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none" colspan="2">
                                        <aspxform:XCustomBrowserButton id="XCustomBrowserButton1" runat="server" XClass="YZSoft.forms.field.dialogs.MaterialClassMultiSelectButton" Filter="state->varState" Width="70px" DataMap="mat_id->SFDATA:proc_demand_detail.mat_id;mat_code->SFDATA:proc_demand_detail.mat_code;mat_name->SFDATA:proc_demand_detail.mat_name;mat_spec->SFDATA:proc_demand_detail.mat_spec;base_unit->SFDATA:proc_demand_detail.demand_stnum_unit" Text="选择物料"></aspxform:XCustomBrowserButton>
                                        <aspxform:XAddBlockButton id="XAddBlockButton2" runat="server" Text="新增" DataSource="SFDATA" TableName="proc_demand_detail" HiddenExpress="Global.StepName!='开始'"></aspxform:XAddBlockButton>
                                        <aspxform:XExcelDataExportButton id="XExcelDataExportButton1" runat="server" Text="Excel导出" ExportTableID="tbDetail"></aspxform:XExcelDataExportButton>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <div style="BORDER-TOP: 0px; BORDER-RIGHT: 0px; WIDTH: 960px; WHITE-SPACE: nowrap; OVERFLOW-X: auto; BORDER-BOTTOM: 0px; MIN-HEIGHT: 200px; BORDER-LEFT: 0px">
                            <table width="1692" id="tbDetail" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none" border="0" cellspacing="0" cellpadding="0" dynamicarea="1,1">
                                <tbody>
                                    <tr>
                                        <td width="50" height="34" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: #d1d1d1 1px solid; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: #d1d1d1 1px solid">
                                            序号</td>
                                        <td width="150" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: #d1d1d1 1px solid; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                                            物料编码</td>
                                        <td width="100" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: #d1d1d1 1px solid; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                                            物料名称</td>
                                        <td width="100" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: #d1d1d1 1px solid; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                                            规格</td>
                                        <td width="100" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: #d1d1d1 1px solid; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                                            采购单位</td>
                                        <td width="100" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: #d1d1d1 1px solid; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                                            采购数量</td>
                                        <td width="100" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: #d1d1d1 1px solid; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                                            转换比例</td>
                                        <td width="100" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: #d1d1d1 1px solid; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                                            基准单位</td>
                                        <td width="100" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: #d1d1d1 1px solid; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                                            基准数量</td>
                                        <td width="100" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: #d1d1d1 1px solid; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                                            计划单价</td>
                                        <td width="100" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: #d1d1d1 1px solid; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                                            总金额</td>
                                        <td width="80" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: #d1d1d1 1px solid; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                                            是否紧急</td>
                                        <td width="100" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: #d1d1d1 1px solid; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                                            预到货时间</td>
                                        <td width="120" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: #d1d1d1 1px solid; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                                            用途</td>
                                        <td width="100" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: #d1d1d1 1px solid; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                                            备注</td>
                                    </tr>
                                    <tr>
                                        <td height="34" style="BORDER-TOP: medium none; BORDER-RIGHT: #d1d1d1 1px solid; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: #d1d1d1 1px solid">
                                            <aspxform:XGridLineNo id="XGridLineNo1" runat="server" Width="100%" BorderStyle="None" TextAlign="Center" BackColor="Transparent">1</aspxform:XGridLineNo>
                                        </td>
                                        <td style="BORDER-TOP: medium none; BORDER-RIGHT: #d1d1d1 1px solid; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                                            <aspxform:XTextBox id="XTextBox2" runat="server" XDataBind="SFDATA:proc_demand_detail.mat_code" width="120px" BorderColor="#DCDCDC" DisableExpress="1" FieldName="物料编码"></aspxform:XTextBox>
                                            <aspxform:XCustomBrowserButton id="XCustomBrowserButton2" runat="server" XClass="YZSoft.forms.field.dialogs.MaterialClassButton" Filter="state->varState" Width="21px" DataMap="mat_id->SFDATA:proc_demand_detail.mat_id;mat_code->SFDATA:proc_demand_detail.mat_code;mat_name->SFDATA:proc_demand_detail.mat_name;mat_spec->SFDATA:proc_demand_detail.mat_spec;base_unit->SFDATA:proc_demand_detail.demand_stnum_unit"></aspxform:XCustomBrowserButton>
                                            <aspxform:XTextBox id="XTextBox15" runat="server" XDataBind="SFDATA:proc_demand_detail.mat_id" width="100%" BorderColor="#DCDCDC" DisableExpress="1" FieldName="物料编码" HiddenExpress="1"></aspxform:XTextBox>
                                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator1" runat="server" Display="None" ForeColor="Red" ErrorMessage="请选择物料名称" ControlToValidate="XTextBox2">物料名称</aspxform:XRequiredFieldValidator>
                                        </td>
                                        <td style="BORDER-TOP: medium none; BORDER-RIGHT: #d1d1d1 1px solid; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                                            <aspxform:XTextBox id="XTextBox3" runat="server" XDataBind="SFDATA:proc_demand_detail.mat_name" width="100%" BorderColor="#DCDCDC" DisableExpress="1" FieldName="物料名称"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-TOP: medium none; BORDER-RIGHT: #d1d1d1 1px solid; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                                            <aspxform:XTextBox id="XTextBox4" runat="server" XDataBind="SFDATA:proc_demand_detail.mat_spec" width="100%" BorderColor="#DCDCDC" DisableExpress="1" FieldName="规格"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-TOP: medium none; BORDER-RIGHT: #d1d1d1 1px solid; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                                            <aspxform:XDropDownList id="XDropDownList2" runat="server" XDataBind="SFDATA:proc_demand_detail.demand_slnum_unit" FieldName="采购单位" Width="100%" DataMap="numerator->SFDATA:proc_demand_detail.sl_st_scale" ValueColumn="mat_unit_name" DisplayColumn="mat_unit_name" XDataSource="DataSource:SFDATA;TableName:ctl_mat_unit;Filter:mat_id->SFDATA:proc_demand_detail.mat_id,state->varState"></aspxform:XDropDownList>
                                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator2" runat="server" Display="None" ForeColor="Red" ErrorMessage="请选择采购单位" ControlToValidate="XDropDownList2">采购单位</aspxform:XRequiredFieldValidator>
                                        </td>
                                        <td style="BORDER-TOP: medium none; BORDER-RIGHT: #d1d1d1 1px solid; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                                            <aspxform:XTextBox id="XTextBox6" runat="server" XDataBind="SFDATA:proc_demand_detail.demand_slnum" width="100%" BorderColor="#DCDCDC" FieldName="采购数量"></aspxform:XTextBox>
                                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator3" runat="server" Display="None" ForeColor="Red" ErrorMessage="请填写采购数量" ControlToValidate="XTextBox6">采购数量</aspxform:XRequiredFieldValidator>
                                        </td>
                                        <td width="90" style="BORDER-TOP: medium none; BORDER-RIGHT: #d1d1d1 1px solid; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                                            <aspxform:XTextBox id="XTextBox5" runat="server" XDataBind="SFDATA:proc_demand_detail.sl_st_scale" width="100%" BorderColor="#DCDCDC" DisableExpress="1" FieldName="转换比例"></aspxform:XTextBox>
                                        </td>
                                        <td width="88" style="BORDER-TOP: medium none; BORDER-RIGHT: #d1d1d1 1px solid; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                                            <aspxform:XTextBox id="XTextBox12" runat="server" XDataBind="SFDATA:proc_demand_detail.demand_stnum_unit" width="100%" BorderColor="#DCDCDC" DisableExpress="1" FieldName="基准单位"></aspxform:XTextBox>
                                        </td>
                                        <td width="86" style="BORDER-TOP: medium none; BORDER-RIGHT: #d1d1d1 1px solid; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                                            <aspxform:XTextBox id="XTextBox13" runat="server" XDataBind="SFDATA:proc_demand_detail.demand_stnum" width="100%" BorderColor="#DCDCDC" DisableExpress="1" FieldName="基准数量" Express="SFDATA:proc_demand_detail.demand_slnum*SFDATA:proc_demand_detail.sl_st_scale"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-TOP: medium none; BORDER-RIGHT: #d1d1d1 1px solid; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                                            <aspxform:XTextBox id="XTextBox7" runat="server" XDataBind="SFDATA:proc_demand_detail.plan_price" width="100%" BorderColor="#DCDCDC" FieldName="计划单价"></aspxform:XTextBox>
                                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator4" runat="server" Display="None" ForeColor="Red" ErrorMessage="请填写计划单价" ControlToValidate="XTextBox7">计划单价</aspxform:XRequiredFieldValidator>
                                        </td>
                                        <td width="100" style="BORDER-TOP: medium none; BORDER-RIGHT: #d1d1d1 1px solid; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                                            <aspxform:XTextBox id="XTextBox14" runat="server" XDataBind="SFDATA:proc_demand_detail.item_price" width="100%" BorderColor="#DCDCDC" DisableExpress="1" FieldName="总金额" Express="SFDATA:proc_demand_detail.plan_price*SFDATA:proc_demand_detail.demand_stnum"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-TOP: medium none; BORDER-RIGHT: #d1d1d1 1px solid; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                                            <aspxform:XDropDownList id="XDropDownList1" runat="server" XDataBind="SFDATA:proc_demand_detail.if_urg" FieldName="是否紧急" Width="100%">
                                                <asp:ListItem Selected="True" Value="1">否</asp:ListItem>
                                                <asp:ListItem Value="2">是</asp:ListItem>
                                            </aspxform:XDropDownList>
                                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator5" runat="server" Display="None" ForeColor="Red" ErrorMessage="请选择是否紧急" ControlToValidate="XDropDownList1">是否紧急</aspxform:XRequiredFieldValidator>
                                        </td>
                                        <td width="92" style="BORDER-TOP: medium none; BORDER-RIGHT: #d1d1d1 1px solid; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                                            <aspxform:XDateTimePicker id="XDateTimePicker1" runat="server" XDataBind="SFDATA:proc_demand_detail.plan_arrival_time" BorderColor="#DCDCDC" FieldName="预到货时间" Width="100%"></aspxform:XDateTimePicker>
                                        </td>
                                        <td style="BORDER-TOP: medium none; BORDER-RIGHT: #d1d1d1 1px solid; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                                            <aspxform:XTextBox id="XTextBox9" runat="server" XDataBind="SFDATA:proc_demand_detail.uses" width="100%" BorderColor="#DCDCDC" FieldName="用途"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-TOP: medium none; BORDER-RIGHT: #d1d1d1 1px solid; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                                            <aspxform:XTextBox id="XTextBox11" runat="server" XDataBind="SFDATA:proc_demand_detail.demand_detail_remarks" width="100%" BorderColor="#DCDCDC" FieldName="备注"></aspxform:XTextBox>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <br />
                        <table width="100%" border="0" cellspacing="0" cellpadding="0" hiddenexpress="1">
                            <tbody>
                                <tr>
                                    <td width="33%">
                                        总金额</td>
                                    <td width="33%">
                                        <aspxform:XTextBox id="XTextBox16" runat="server" XDataBind="SFDATA:proc_demand.total_price" width="100%" BorderColor="#DCDCDC" Express="sum(SFDATA:proc_demand_detail.item_price)"></aspxform:XTextBox>
                                    </td>
                                    <td width="34%">
                                        <aspxform:XDataBrowserButton id="XDataBrowserButton2" runat="server" DataMap="mat_id->SFDATA:proc_demand_detail.mat_id;mat_code->SFDATA:proc_demand_detail.mat_code;mat_name->SFDATA:proc_demand_detail.mat_name;mat_spec->SFDATA:proc_demand_detail.mat_spec;base_unit->SFDATA:proc_demand_detail.demand_stnum_unit" Text="选择物料" HiddenExpress="Global.StepName!='开始'" XDataSource="DataSource:SFDATA;TableName:ctl_material;Filter:state->varState" MultiSelect="True" DisplayColumns="mat_code:物料编码;mat_name:物料名称;mat_spec:规格;base_unit:基准单位"></aspxform:XDataBrowserButton>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        CreateUser</td>
                                    <td>
                                        <aspxform:XTextBox id="XTextBox8" onclick="WdatePicker({dateFmt:'yyyy'})" runat="server" XDataBind="SFDATA:proc_demand.CreateUser" width="100%" BorderColor="#DCDCDC"></aspxform:XTextBox>
                                    </td>
                                    <td>
                                        <aspxform:XDataBrowserButton id="XDataBrowserButton1" runat="server" Width="21px" DataMap="mat_id->SFDATA:proc_demand_detail.mat_id;mat_code->SFDATA:proc_demand_detail.mat_code;mat_name->SFDATA:proc_demand_detail.mat_name;mat_spec->SFDATA:proc_demand_detail.mat_spec;base_unit->SFDATA:proc_demand_detail.demand_stnum_unit" HiddenExpress="Global.StepName!='开始'" XDataSource="DataSource:SFDATA;TableName:ctl_material;Filter:state->varState" DisplayColumns="mat_code:物料编码;mat_name:物料名称;mat_spec:规格;base_unit:基准单位"></aspxform:XDataBrowserButton>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        State</td>
                                    <td>
                                        <aspxform:XTextBox id="XTextBox27" runat="server" XDataBind="varState" width="100%" BorderColor="#DCDCDC">1</aspxform:XTextBox>
                                    </td>
                                    <td>
                                    </td>
                                </tr>
                                <tr>
                                    <td height="33">
                                        Company</td>
                                    <td>
                                        <aspxform:XTextBox id="XTextBox28" runat="server" XDataBind="SFDATA:proc_demand.Company" width="130px" BorderColor="#DCDCDC"></aspxform:XTextBox>
                                    </td>
                                    <td>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Dept</td>
                                    <td>
                                        <aspxform:XTextBox id="XTextBox29" runat="server" XDataBind="SFDATA:proc_demand.Dept" width="130px" BorderColor="#DCDCDC"></aspxform:XTextBox>
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
