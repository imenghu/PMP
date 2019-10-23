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
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <div style="BORDER-TOP: 0px; BORDER-RIGHT: 0px; WIDTH: 960px; WHITE-SPACE: nowrap; OVERFLOW-X: auto; BORDER-BOTTOM: 0px; MIN-HEIGHT: 200px; BORDER-LEFT: 0px">
                            <table width="1804" id="tbDetail" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none" border="0" cellspacing="0" cellpadding="0" dynamicarea="1,1">
                                <tbody>
                                    <tr>
                                        <td width="54" height="34" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: #d1d1d1 1px solid; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: #d1d1d1 1px solid">
                                            序号</td>
                                        <td width="168" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: #d1d1d1 1px solid; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                                            物料名称</td>
                                        <td width="109" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: #d1d1d1 1px solid; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                                            物料编码</td>
                                        <td width="109" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: #d1d1d1 1px solid; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                                            规格</td>
                                        <td width="109" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: #d1d1d1 1px solid; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                                            采购单位</td>
                                        <td width="109" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: #d1d1d1 1px solid; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                                            采购数量</td>
                                        <td width="109" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: #d1d1d1 1px solid; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                                            转换比例</td>
                                        <td width="117" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: #d1d1d1 1px solid; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                                            基准单位</td>
                                        <td width="102" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: #d1d1d1 1px solid; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                                            基准数量</td>
                                        <td width="109" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: #d1d1d1 1px solid; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                                            计划单价</td>
                                        <td width="109" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: #d1d1d1 1px solid; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                                            总金额</td>
                                        <td width="87" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: #d1d1d1 1px solid; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                                            是否紧急</td>
                                        <td width="109" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: #d1d1d1 1px solid; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                                            预到货时间</td>
                                        <td width="130" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: #d1d1d1 1px solid; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                                            用途</td>
                                        <td width="109" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: #d1d1d1 1px solid; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                                            备注</td>
                                        <td width="100" class="xtbd">
                                            任务执行人</td>
                                    </tr>
                                    <tr>
                                        <td height="34" style="BORDER-TOP: medium none; BORDER-RIGHT: #d1d1d1 1px solid; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: #d1d1d1 1px solid">
                                            <aspxform:XGridLineNo id="XGridLineNo1" runat="server" Width="100%" BorderStyle="None" TextAlign="Center" BackColor="Transparent">1</aspxform:XGridLineNo>
                                        </td>
                                        <td style="BORDER-TOP: medium none; BORDER-RIGHT: #d1d1d1 1px solid; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                                            <aspxform:XTextBox id="XTextBox2" runat="server" XDataBind="SFDATA:proc_demand_detail.mat_code" width="120px" BorderColor="#DCDCDC" DisableExpress="1" FieldName="物料名称"></aspxform:XTextBox>
                                            <aspxform:XTextBox id="XTextBox15" runat="server" XDataBind="SFDATA:proc_demand_detail.mat_id" width="100%" BorderColor="#DCDCDC" DisableExpress="1" FieldName="物料编码" HiddenExpress="1"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-TOP: medium none; BORDER-RIGHT: #d1d1d1 1px solid; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                                            <aspxform:XTextBox id="XTextBox3" runat="server" XDataBind="SFDATA:proc_demand_detail.mat_name" width="100%" BorderColor="#DCDCDC" DisableExpress="1" FieldName="物料编码"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-TOP: medium none; BORDER-RIGHT: #d1d1d1 1px solid; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                                            <aspxform:XTextBox id="XTextBox4" runat="server" XDataBind="SFDATA:proc_demand_detail.mat_spec" width="100%" BorderColor="#DCDCDC" DisableExpress="1" FieldName="规格"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-TOP: medium none; BORDER-RIGHT: #d1d1d1 1px solid; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                                            <aspxform:XDropDownList id="XDropDownList2" runat="server" XDataBind="SFDATA:proc_demand_detail.demand_slnum_unit" FieldName="采购单位" Width="100%" ValueColumn="mat_unit_name" DisplayColumn="mat_unit_name" DataMap="numerator->SFDATA:proc_demand_detail.sl_st_scale" XDataSource="DataSource:SFDATA;TableName:ctl_mat_unit;Filter:mat_id->SFDATA:proc_demand_detail.mat_id,if_base_unit->varState"></aspxform:XDropDownList>
                                        </td>
                                        <td style="BORDER-TOP: medium none; BORDER-RIGHT: #d1d1d1 1px solid; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                                            <aspxform:XTextBox id="XTextBox6" runat="server" XDataBind="SFDATA:proc_demand_detail.demand_slnum" width="100%" BorderColor="#DCDCDC" FieldName="采购数量"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-TOP: medium none; BORDER-RIGHT: #d1d1d1 1px solid; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                                            <aspxform:XTextBox id="XTextBox5" runat="server" XDataBind="SFDATA:proc_demand_detail.sl_st_scale" width="100%" BorderColor="#DCDCDC" DisableExpress="1" FieldName="转换比例"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-TOP: medium none; BORDER-RIGHT: #d1d1d1 1px solid; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                                            <aspxform:XTextBox id="XTextBox12" runat="server" XDataBind="SFDATA:proc_demand_detail.demand_stnum_unit" width="100%" BorderColor="#DCDCDC" DisableExpress="1" FieldName="基准单位"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-TOP: medium none; BORDER-RIGHT: #d1d1d1 1px solid; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                                            <aspxform:XTextBox id="XTextBox13" runat="server" XDataBind="SFDATA:proc_demand_detail.demand_stnum" width="100%" BorderColor="#DCDCDC" DisableExpress="1" FieldName="基准数量" Express="SFDATA:proc_demand_detail.demand_slnum*SFDATA:proc_demand_detail.sl_st_scale"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-TOP: medium none; BORDER-RIGHT: #d1d1d1 1px solid; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                                            <aspxform:XTextBox id="XTextBox7" runat="server" XDataBind="SFDATA:proc_demand_detail.plan_price" width="100%" BorderColor="#DCDCDC" FieldName="计划单价"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-TOP: medium none; BORDER-RIGHT: #d1d1d1 1px solid; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                                            <aspxform:XTextBox id="XTextBox14" runat="server" XDataBind="SFDATA:proc_demand_detail.item_price" width="100%" BorderColor="#DCDCDC" DisableExpress="1" FieldName="总金额" Express="SFDATA:proc_demand_detail.plan_price*SFDATA:proc_demand_detail.demand_stnum"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-TOP: medium none; BORDER-RIGHT: #d1d1d1 1px solid; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                                            <aspxform:XDropDownList id="XDropDownList1" runat="server" XDataBind="SFDATA:proc_demand_detail.if_urg" FieldName="是否紧急" Width="100%">
                                                <asp:ListItem Selected="True" Value="0">否</asp:ListItem>
                                                <asp:ListItem Value="1">是</asp:ListItem>
                                            </aspxform:XDropDownList>
                                        </td>
                                        <td style="BORDER-TOP: medium none; BORDER-RIGHT: #d1d1d1 1px solid; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                                            <aspxform:XDateTimePicker id="XDateTimePicker1" runat="server" XDataBind="SFDATA:proc_demand_detail.plan_arrival_time" BorderColor="#DCDCDC" FieldName="预到货时间" Width="100%"></aspxform:XDateTimePicker>
                                        </td>
                                        <td style="BORDER-TOP: medium none; BORDER-RIGHT: #d1d1d1 1px solid; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                                            <aspxform:XTextBox id="XTextBox9" runat="server" XDataBind="SFDATA:proc_demand_detail.uses" width="100%" BorderColor="#DCDCDC" FieldName="用途"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-TOP: medium none; BORDER-RIGHT: #d1d1d1 1px solid; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                                            <aspxform:XTextBox id="XTextBox11" runat="server" XDataBind="SFDATA:proc_demand_detail.demand_detail_remarks" width="100%" BorderColor="#DCDCDC" FieldName="备注"></aspxform:XTextBox>
                                        </td>
                                        <td>
                                            <aspxform:XTextBox id="XTextBox17" runat="server" XDataBind="SFDATA:proc_demand_detail.TaskUserName" width="70px" BorderColor="#DCDCDC" DisableExpress="1" BorderWidth="1"></aspxform:XTextBox>
                                            <aspxform:XSelectUserButton id="XSelectUserButton1" runat="server" Width="21px" DataMap="Account->SFDATA:proc_demand_detail.TaskUser;DisplayName->SFDATA:proc_demand_detail.TaskUserName"></aspxform:XSelectUserButton>
                                            <aspxform:XTextBox id="XTextBox18" runat="server" XDataBind="SFDATA:proc_demand_detail.TaskUser" width="70px" BorderColor="#DCDCDC" DisableExpress="1" HiddenExpress="1" BorderWidth="1"></aspxform:XTextBox>
                                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator1" runat="server" Display="None" ForeColor="Red" ErrorMessage="请选择任务执行人" ControlToValidate="XTextBox17">任务执行人</aspxform:XRequiredFieldValidator>
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
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        CreateUser</td>
                                    <td>
                                        <aspxform:XTextBox id="XTextBox8" onclick="WdatePicker({dateFmt:'yyyy'})" runat="server" XDataBind="SFDATA:proc_demand.CreateUser" width="100%" BorderColor="#DCDCDC"></aspxform:XTextBox>
                                    </td>
                                    <td>
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
                                    <td>
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
