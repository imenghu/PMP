<%@ Page Language="C#" %>
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
                        <table width="1300" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none" border="0" cellspacing="0" cellpadding="0">
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
                        <table width="1300" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none" border="0" cellspacing="0" cellpadding="0">
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
                                    <td height="84" class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                                        备注</td>
                                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none" colspan="5">
                                        <aspxform:XTextBox id="XTextBox1" runat="server" XDataBind="SFDATA:proc_demand.demand_remarks" width="100%" BorderColor="#DCDCDC" FieldName="备注" Rows="5" TextMode="MultiLine"></aspxform:XTextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td height="34" class="xttl" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: black 1px solid" colspan="4">
                                        采购任务</td>
                                    <td align="right" class="xttl" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none" colspan="2">
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <table width="1300" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none" border="0" cellspacing="0" cellpadding="0" dynamicarea="1,1" datamap="pur_task_id->varpur_task_id;mat_code->varmat_code;mat_name->varmat_name;mat_spec->varmat_spec;plan_price->varplan_price;pur_slnum->varpur_slnum;pur_slnum_unit->varpur_slnum_unit;plan_arrival_time->varplan_arrival_time;if_urg->varif_urg;item_price->varitem_price;task_state->vartask_state;TaskUserName->varTaskUserName" xdatasource="DataSource:SFDATA;TableName:v_proc_demand_task;Filter:demand_id->SFDATA:proc_demand.demand_id">
                            <tbody>
                                <tr>
                                    <td width="50" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                                        序号</td>
                                    <td width="100" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        物料编码</td>
                                    <td width="100" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        物料名称</td>
                                    <td width="100" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        物料规格</td>
                                    <td width="100" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        申购数量</td>
                                    <td width="100" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        申购单位</td>
                                    <td width="100" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        计划单价</td>
                                    <td width="100" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        总金额</td>
                                    <td width="100" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        计划到货日期</td>
                                    <td width="100" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        是否紧急</td>
                                    <td width="100" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        任务执行人</td>
                                    <td width="100" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        任务情况</td>
                                    <td width="100" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        询价</td>
                                </tr>
                                <tr>
                                    <td height="34" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                                        <aspxform:XGridLineNo id="XGridLineNo1" runat="server" BorderWidth="1" Width="100%" BorderStyle="None" TextAlign="Center" BackColor="White">1</aspxform:XGridLineNo>
                                    </td>
                                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        <aspxform:XTextBox id="XTextBox2" runat="server" XDataBind="varmat_code" width="100%" BorderColor="#DCDCDC" DisableExpress="1"></aspxform:XTextBox>
                                    </td>
                                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        <aspxform:XTextBox id="XTextBox3" runat="server" XDataBind="varmat_name" width="100%" BorderColor="#DCDCDC" DisableExpress="1"></aspxform:XTextBox>
                                    </td>
                                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        <aspxform:XTextBox id="XTextBox4" runat="server" XDataBind="varmat_spec" width="100%" BorderColor="#DCDCDC" DisableExpress="1"></aspxform:XTextBox>
                                    </td>
                                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        <aspxform:XTextBox id="XTextBox5" runat="server" XDataBind="varpur_slnum" width="100%" BorderColor="#DCDCDC" DisableExpress="1"></aspxform:XTextBox>
                                    </td>
                                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        <aspxform:XTextBox id="XTextBox6" runat="server" XDataBind="varpur_slnum_unit" width="100%" BorderColor="#DCDCDC" DisableExpress="1"></aspxform:XTextBox>
                                    </td>
                                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        <aspxform:XTextBox id="XTextBox7" runat="server" XDataBind="varplan_price" width="100%" BorderColor="#DCDCDC" DisableExpress="1"></aspxform:XTextBox>
                                    </td>
                                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        <aspxform:XTextBox id="XTextBox9" runat="server" XDataBind="varitem_price" width="100%" BorderColor="#DCDCDC" DisableExpress="1"></aspxform:XTextBox>
                                    </td>
                                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        <aspxform:XDateTimePicker id="XDateTimePicker1" runat="server" XDataBind="varplan_arrival_time" BorderColor="#DCDCDC" Width="100%" DisplayOnly="True"></aspxform:XDateTimePicker>
                                    </td>
                                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        <aspxform:XDropDownList id="XDropDownList1" runat="server" XDataBind="varif_urg" DisableExpress="1" Width="100%">
                                            <asp:ListItem Selected="True" Value="1">否</asp:ListItem>
                                            <asp:ListItem Value="2">是</asp:ListItem>
                                        </aspxform:XDropDownList>
                                    </td>
                                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        <aspxform:XTextBox id="XTextBox12" runat="server" XDataBind="varTaskUserName" width="100%" BorderColor="#DCDCDC" DisableExpress="1"></aspxform:XTextBox>
                                    </td>
                                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        <aspxform:XDropDownList id="XDropDownList2" runat="server" XDataBind="vartask_state" DisableExpress="1" Width="100%">
                                            <asp:ListItem Selected="True" Value="0">未分派任务</asp:ListItem>
                                            <asp:ListItem Value="1">任务执行中</asp:ListItem>
                                            <asp:ListItem Value="2">等待确认供应商</asp:ListItem>
                                            <asp:ListItem Value="3">任务已完成</asp:ListItem>
                                        </aspxform:XDropDownList>
                                    </td>
                                    <td align="center" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        <aspxform:XChildFormLink id="XChildFormLink1" runat="server" XDataBind="varpur_task_id" FormApplication="Proc/proc_pur_enquiry_read">查看</aspxform:XChildFormLink>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <table width="1300" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none" border="0" cellspacing="0" cellpadding="0" dynamicarea="2,1" datamap="contract_id->varcontract_id;contract_code->varcontract_code;contract_type->varcontract_type;contract_name->varcontract_name;vendor_name->varvendor_name;if_outsource->varif_outsource;total_price->vartotal_price" xdatasource="DataSource:SFDATA;TableName:v_proc_demand_contract;Filter:demand_id->SFDATA:proc_demand.demand_id">
                            <tbody>
                                <tr>
                                    <td height="34" class="xttl" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid" colspan="8">
                                        采购合同</td>
                                </tr>
                                <tr>
                                    <td width="50" height="34" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                                        序号</td>
                                    <td width="200" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        合同编码</td>
                                    <td width="200" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        合同类型</td>
                                    <td width="200" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        合同名称</td>
                                    <td width="200" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        供应商名称</td>
                                    <td width="150" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        是否委外</td>
                                    <td width="200" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        总金额（元）</td>
                                    <td width="100" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        查看</td>
                                </tr>
                                <tr>
                                    <td height="34" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                                        <aspxform:XGridLineNo id="XGridLineNo2" runat="server" BorderWidth="1" Width="100%" BorderStyle="None" TextAlign="Center" BackColor="White">1</aspxform:XGridLineNo>
                                    </td>
                                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        <aspxform:XTextBox id="XTextBox11" runat="server" XDataBind="varcontract_code" width="100%" BorderColor="#DCDCDC" DisableExpress="1"></aspxform:XTextBox>
                                    </td>
                                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        <aspxform:XDropDownList id="XDropDownList3" runat="server" XDataBind="varcontract_type" DisableExpress="1" Width="100%">
                                            <asp:ListItem Selected="True" Value="1">框架合同</asp:ListItem>
                                            <asp:ListItem Value="2">普通合同</asp:ListItem>
                                            <asp:ListItem Value="3">订单</asp:ListItem>
                                        </aspxform:XDropDownList>
                                    </td>
                                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        <aspxform:XTextBox id="XTextBox14" runat="server" XDataBind="varcontract_name" width="100%" BorderColor="#DCDCDC" DisableExpress="1"></aspxform:XTextBox>
                                    </td>
                                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        <aspxform:XTextBox id="XTextBox15" runat="server" XDataBind="varvendor_name" width="100%" BorderColor="#DCDCDC" DisableExpress="1"></aspxform:XTextBox>
                                    </td>
                                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        <aspxform:XDropDownList id="XDropDownList4" runat="server" XDataBind="varif_outsource" DisableExpress="1" Width="100%">
                                            <asp:ListItem Selected="True" Value="0">否</asp:ListItem>
                                            <asp:ListItem Value="1">是</asp:ListItem>
                                        </aspxform:XDropDownList>
                                    </td>
                                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        <aspxform:XTextBox id="XTextBox18" runat="server" XDataBind="vartotal_price" width="100%" BorderColor="#DCDCDC" DisableExpress="1"></aspxform:XTextBox>
                                    </td>
                                    <td align="center" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        <aspxform:XChildFormLink id="XChildFormLink2" runat="server" XDataBind="varcontract_id" FormApplication="Proc/proc_contract">查看</aspxform:XChildFormLink>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <table width="1300" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none" border="0" cellspacing="0" cellpadding="0" dynamicarea="2,1" datamap="arrival_notice_id->vararrival_notice_id;vendor_name->varvendor_name1;mat_name->varmat_name1;mat_spesc->varmat_spesc;arrival_slnum->vararrival_slnum;arrival_slnum_unit->vararrival_slnum_unit;arrival_username->vararrival_username;arrival_usertel->vararrival_usertel;plan_arrival_price->varplan_arrival_price;plan_arrival_time->varplan_arrival_time;notice_state->varnotice_state;StoreUserName->varStoreUserName" xdatasource="DataSource:SFDATA;TableName:v_proc_demand_arrival;Filter:demand_id->SFDATA:proc_demand.demand_id">
                            <tbody>
                                <tr>
                                    <td height="34" class="xttl" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid" colspan="13">
                                        到货情况</td>
                                </tr>
                                <tr>
                                    <td width="50" height="34" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                                        序号</td>
                                    <td width="100" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        供应商名称</td>
                                    <td width="100" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        物料名称</td>
                                    <td width="100" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        物料规格</td>
                                    <td width="100" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        采购数量</td>
                                    <td width="100" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        申购单位</td>
                                    <td width="100" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        运货人</td>
                                    <td width="100" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        联系电话</td>
                                    <td width="100" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        预估运费</td>
                                    <td width="100" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        接货人</td>
                                    <td width="100" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        预计到货时间</td>
                                    <td width="100" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        入库情况</td>
                                    <td width="100" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        查看</td>
                                </tr>
                                <tr>
                                    <td height="34" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                                        <aspxform:XGridLineNo id="XGridLineNo3" runat="server" BorderWidth="1" Width="100%" BorderStyle="None" TextAlign="Center" BackColor="White">1</aspxform:XGridLineNo>
                                    </td>
                                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        <aspxform:XTextBox id="XTextBox13" runat="server" XDataBind="varvendor_name1" width="100%" BorderColor="#DCDCDC" DisableExpress="1"></aspxform:XTextBox>
                                    </td>
                                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        <aspxform:XTextBox id="XTextBox17" runat="server" XDataBind="varmat_name1" width="100%" BorderColor="#DCDCDC" DisableExpress="1"></aspxform:XTextBox>
                                    </td>
                                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        <aspxform:XTextBox id="XTextBox19" runat="server" XDataBind="varmat_spesc" width="100%" BorderColor="#DCDCDC" DisableExpress="1"></aspxform:XTextBox>
                                    </td>
                                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        <aspxform:XTextBox id="XTextBox20" runat="server" XDataBind="vararrival_slnum" width="100%" BorderColor="#DCDCDC" DisableExpress="1"></aspxform:XTextBox>
                                    </td>
                                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        <aspxform:XTextBox id="XTextBox21" runat="server" XDataBind="vararrival_slnum_unit" width="100%" BorderColor="#DCDCDC" DisableExpress="1"></aspxform:XTextBox>
                                    </td>
                                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        <aspxform:XTextBox id="XTextBox22" runat="server" XDataBind="vararrival_username" width="100%" BorderColor="#DCDCDC" DisableExpress="1"></aspxform:XTextBox>
                                    </td>
                                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        <aspxform:XTextBox id="XTextBox23" runat="server" XDataBind="vararrival_usertel" width="100%" BorderColor="#DCDCDC" DisableExpress="1"></aspxform:XTextBox>
                                    </td>
                                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        <aspxform:XTextBox id="XTextBox24" runat="server" XDataBind="varplan_arrival_price" width="100%" BorderColor="#DCDCDC" DisableExpress="1"></aspxform:XTextBox>
                                    </td>
                                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        <aspxform:XTextBox id="XTextBox30" runat="server" XDataBind="varStoreUserName" width="100%" BorderColor="#DCDCDC" DisableExpress="1"></aspxform:XTextBox>
                                    </td>
                                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        <aspxform:XDateTimePicker id="XDateTimePicker2" runat="server" XDataBind="varplan_arrival_time" BorderColor="#DCDCDC" Width="100%" DisplayOnly="True"></aspxform:XDateTimePicker>
                                    </td>
                                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        <aspxform:XDropDownList id="XDropDownList5" runat="server" XDataBind="varnotice_state" DisableExpress="1" Width="100%">
                                            <asp:ListItem Selected="True" Value="0">未入库</asp:ListItem>
                                            <asp:ListItem Value="1">已入库</asp:ListItem>
                                        </aspxform:XDropDownList>
                                    </td>
                                    <td align="center" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        <aspxform:XChildFormLink id="XChildFormLink3" runat="server" XDataBind="vararrival_notice_id" FormApplication="Proc/proc_arrival_notice">查看</aspxform:XChildFormLink>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <br />
                        <table width="1276" border="0" cellspacing="0" cellpadding="0" hiddenexpress="1">
                            <tbody>
                                <tr>
                                    <td width="421" height="34">
                                        demand_id</td>
                                    <td width="421">
                                        <aspxform:XTextBox id="XTextBox16" runat="server" XDataBind="SFDATA:proc_demand.demand_id" width="100%" BorderColor="#DCDCDC"></aspxform:XTextBox>
                                    </td>
                                    <td width="434">
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
