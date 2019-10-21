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
                                    <td width="320" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                    </td>
                                    <td width="320" align="center" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        <strong><font size="5">采购计划</font></strong></td>
                                    <td width="320" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <table width="960" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none" border="0" cellspacing="0" cellpadding="0">
                            <tbody>
                                <tr>
                                    <td width="150" height="14" class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                                        公司</td>
                                    <td width="160" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                                        <aspxform:XTextBox id="XTextBox26" runat="server" FieldName="公司" DisableExpress="1" BorderColor="#DCDCDC" BorderWidth="1" width="100%" XDataBind="SFDATA:annual_pur_plan.CompanyName"></aspxform:XTextBox>
                                    </td>
                                    <td width="160" class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                                        部门</td>
                                    <td width="150" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                                        <aspxform:XTextBox id="XTextBox10" runat="server" FieldName="部门" DisableExpress="1" BorderColor="#DCDCDC" BorderWidth="1" width="100%" XDataBind="SFDATA:annual_pur_plan.DeptName"></aspxform:XTextBox>
                                    </td>
                                    <td width="160" class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                                        年份</td>
                                    <td width="160" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                                        <aspxform:XTextBox id="XTextBox25" onclick="WdatePicker({dateFmt:'yyyy'})" runat="server" FieldName="年份" BorderColor="#DCDCDC" BorderWidth="1" width="100%" XDataBind="SFDATA:annual_pur_plan.plan_pur_year"></aspxform:XTextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td height="14" class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none">
                                        物料名称</td>
                                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none">
                                        <aspxform:XTextBox id="XTextBox11" runat="server" FieldName="物料名称" DisableExpress="1" BorderColor="#DCDCDC" BorderWidth="1" width="130px" XDataBind="SFDATA:annual_pur_plan.mat_name"></aspxform:XTextBox>
                                        <aspxform:XDataBrowserButton id="XDataBrowserButton1" runat="server" DataMap="mat_id->SFDATA:annual_pur_plan.mat_id;mat_code->SFDATA:annual_pur_plan.mat_code;mat_name->SFDATA:annual_pur_plan.mat_name;mat_spec->SFDATA:annual_pur_plan.mat_spec;base_unit->SFDATA:annual_pur_plan.plan_stnum_unit" DisplayColumns="mat_code:物料编码;mat_name:物料名称;mat_spec:规格;base_unit:基准单位" XDataSource="DataSource:SFDATA;TableName:ctl_material" Width="21px"></aspxform:XDataBrowserButton>
                                    </td>
                                    <td class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none">
                                        物料编码</td>
                                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none">
                                        <aspxform:XTextBox id="XTextBox9" runat="server" FieldName="物料编码" DisableExpress="1" BorderColor="#DCDCDC" BorderWidth="1" width="100%" XDataBind="SFDATA:annual_pur_plan.mat_code"></aspxform:XTextBox>
                                    </td>
                                    <td class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none">
                                        规格</td>
                                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none">
                                        <aspxform:XTextBox id="XTextBox14" runat="server" FieldName="规格" DisableExpress="1" BorderColor="#DCDCDC" BorderWidth="1" width="100%" XDataBind="SFDATA:annual_pur_plan.mat_spec"></aspxform:XTextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td height="14" class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        单位</td>
                                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        <aspxform:XDropDownList id="XDropDownList1" runat="server" FieldName="单位" XDataBind="SFDATA:annual_pur_plan.plan_slnum_unit" DataMap="numerator->SFDATA:annual_pur_plan.sl_st_scale" XDataSource="DataSource:SFDATA;TableName:ctl_mat_unit;Filter:mat_id->SFDATA:annual_pur_plan.mat_id,if_base_unit->varState" Width="100%" DisplayColumn="mat_unit_name" ValueColumn="mat_unit_id"></aspxform:XDropDownList>
                                    </td>
                                    <td class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        基准单位</td>
                                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        <aspxform:XTextBox id="XTextBox12" runat="server" FieldName="基准单位" DisableExpress="1" BorderColor="#DCDCDC" BorderWidth="1" width="100%" XDataBind="SFDATA:annual_pur_plan.plan_stnum_unit"></aspxform:XTextBox>
                                    </td>
                                    <td class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        转换比例</td>
                                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        <aspxform:XTextBox id="XTextBox13" runat="server" FieldName="转换比例" DisableExpress="1" BorderColor="#DCDCDC" BorderWidth="1" width="100%" XDataBind="SFDATA:annual_pur_plan.sl_st_scale"></aspxform:XTextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td height="14" class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                                        总数量</td>
                                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                                        <aspxform:XTextBox id="XTextBox7" runat="server" FieldName="总数量" DisableExpress="1" BorderColor="#DCDCDC" BorderWidth="1" width="100%" XDataBind="SFDATA:annual_pur_plan.plan_total_num" Express="SFDATA:annual_pur_plan.plan_month_jan+SFDATA:annual_pur_plan.plan_month_feb+SFDATA:annual_pur_plan.plan_month_mar+SFDATA:annual_pur_plan.plan_month_apr+SFDATA:annual_pur_plan.plan_month_may+SFDATA:annual_pur_plan.plan_month_june+SFDATA:annual_pur_plan.plan_month_sept+SFDATA:annual_pur_plan.plan_month_aug+SFDATA:annual_pur_plan.plan_month_july+SFDATA:annual_pur_plan.plan_month_oct+SFDATA:annual_pur_plan.plan_month_nov+SFDATA:annual_pur_plan.plan_month_dec"></aspxform:XTextBox>
                                    </td>
                                    <td class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                                        计划单价</td>
                                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                                        <aspxform:XTextBox id="XTextBox24" runat="server" FieldName="计划单价" BorderColor="#DCDCDC" BorderWidth="1" width="100%" XDataBind="SFDATA:annual_pur_plan.plan_price"></aspxform:XTextBox>
                                    </td>
                                    <td class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                                        总金额</td>
                                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                                        <aspxform:XTextBox id="XTextBox15" runat="server" FieldName="总金额" DisableExpress="1" BorderColor="#DCDCDC" BorderWidth="1" width="100%" XDataBind="SFDATA:annual_pur_plan.total_price" Express="SFDATA:annual_pur_plan.plan_price*SFDATA:annual_pur_plan.plan_total_num*SFDATA:annual_pur_plan.sl_st_scale"></aspxform:XTextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td height="14" class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none">
                                        一月</td>
                                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none">
                                        <aspxform:XTextBox id="XTextBox6" runat="server" FieldName="一月" BorderColor="#DCDCDC" BorderWidth="1" width="100%" XDataBind="SFDATA:annual_pur_plan.plan_month_jan"></aspxform:XTextBox>
                                    </td>
                                    <td class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none">
                                        二月</td>
                                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none">
                                        <aspxform:XTextBox id="XTextBox23" runat="server" FieldName="二月" BorderColor="#DCDCDC" BorderWidth="1" width="100%" XDataBind="SFDATA:annual_pur_plan.plan_month_feb"></aspxform:XTextBox>
                                    </td>
                                    <td class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none">
                                        三月</td>
                                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none">
                                        <aspxform:XTextBox id="XTextBox16" runat="server" FieldName="三月" BorderColor="#DCDCDC" BorderWidth="1" width="100%" XDataBind="SFDATA:annual_pur_plan.plan_month_mar"></aspxform:XTextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td height="14" class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none">
                                        四月</td>
                                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none">
                                        <aspxform:XTextBox id="XTextBox5" runat="server" FieldName="四月" BorderColor="#DCDCDC" BorderWidth="1" width="100%" XDataBind="SFDATA:annual_pur_plan.plan_month_apr"></aspxform:XTextBox>
                                    </td>
                                    <td class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none">
                                        五月</td>
                                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none">
                                        <aspxform:XTextBox id="XTextBox22" runat="server" FieldName="五月" BorderColor="#DCDCDC" BorderWidth="1" width="100%" XDataBind="SFDATA:annual_pur_plan.plan_month_may"></aspxform:XTextBox>
                                    </td>
                                    <td class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none">
                                        六月</td>
                                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none">
                                        <aspxform:XTextBox id="XTextBox17" runat="server" FieldName="六月" BorderColor="#DCDCDC" BorderWidth="1" width="100%" XDataBind="SFDATA:annual_pur_plan.plan_month_june"></aspxform:XTextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td height="35" class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none">
                                        七月</td>
                                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none">
                                        <aspxform:XTextBox id="XTextBox4" runat="server" FieldName="七月" BorderColor="#DCDCDC" BorderWidth="1" width="100%" XDataBind="SFDATA:annual_pur_plan.plan_month_july"></aspxform:XTextBox>
                                    </td>
                                    <td class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none">
                                        八月</td>
                                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none">
                                        <aspxform:XTextBox id="XTextBox21" runat="server" FieldName="八月" BorderColor="#DCDCDC" BorderWidth="1" width="100%" XDataBind="SFDATA:annual_pur_plan.plan_month_aug"></aspxform:XTextBox>
                                    </td>
                                    <td class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none">
                                        九月</td>
                                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none">
                                        <aspxform:XTextBox id="XTextBox18" runat="server" FieldName="九月" BorderColor="#DCDCDC" BorderWidth="1" width="100%" XDataBind="SFDATA:annual_pur_plan.plan_month_sept"></aspxform:XTextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td height="32" class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                                        十月</td>
                                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                                        <aspxform:XTextBox id="XTextBox3" runat="server" FieldName="十月" BorderColor="#DCDCDC" BorderWidth="1" width="100%" XDataBind="SFDATA:annual_pur_plan.plan_month_oct"></aspxform:XTextBox>
                                    </td>
                                    <td class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                                        十一月</td>
                                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                                        <aspxform:XTextBox id="XTextBox20" runat="server" FieldName="十一月" BorderColor="#DCDCDC" BorderWidth="1" width="100%" XDataBind="SFDATA:annual_pur_plan.plan_month_nov"></aspxform:XTextBox>
                                    </td>
                                    <td class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                                        十二月</td>
                                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                                        <aspxform:XTextBox id="XTextBox19" runat="server" FieldName="十二月" BorderColor="#DCDCDC" BorderWidth="1" width="100%" XDataBind="SFDATA:annual_pur_plan.plan_month_dec"></aspxform:XTextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td height="14" class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none">
                                        备注</td>
                                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none" colspan="5">
                                        <aspxform:XTextBox id="XTextBox1" runat="server" FieldName="备注" BorderColor="#DCDCDC" BorderWidth="1" width="100%" XDataBind="SFDATA:annual_pur_plan.planpur_remarks" TextMode="MultiLine" Rows="5"></aspxform:XTextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none">
                                        提报人</td>
                                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none">
                                        <aspxform:XTextBox id="XTextBox2" runat="server" FieldName="提报人" DisableExpress="1" BorderColor="#DCDCDC" BorderWidth="1" width="100%" XDataBind="SFDATA:annual_pur_plan.CreateUserName"></aspxform:XTextBox>
                                    </td>
                                    <td class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none">
                                        提报日期</td>
                                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none">
                                        <aspxform:XDateTimePicker id="XDateTimePicker1" runat="server" FieldName="提报日期" BorderColor="#DCDCDC" BorderWidth="1" XDataBind="SFDATA:annual_pur_plan.create_time" Width="100%" DisplayOnly="True"></aspxform:XDateTimePicker>
                                    </td>
                                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none">
                                    </td>
                                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none">
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <br />
                        <table width="100%" border="0" cellspacing="0" cellpadding="0" hiddenexpress="1">
                            <tbody>
                                <tr>
                                    <td width="33%">
                                    </td>
                                    <td width="33%">
                                    </td>
                                    <td width="34%">
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        物料ID</td>
                                    <td>
                                        <aspxform:XTextBox id="XTextBox8" runat="server" BorderColor="#DCDCDC" BorderWidth="1" width="130px" XDataBind="SFDATA:annual_pur_plan.mat_id"></aspxform:XTextBox>
                                    </td>
                                    <td>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        State</td>
                                    <td>
                                        <aspxform:XTextBox id="XTextBox27" runat="server" BorderColor="#DCDCDC" BorderWidth="1" width="100%" XDataBind="varState">1</aspxform:XTextBox>
                                    </td>
                                    <td>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Company</td>
                                    <td>
                                        <aspxform:XTextBox id="XTextBox28" runat="server" BorderColor="#DCDCDC" BorderWidth="1" width="130px" XDataBind="SFDATA:annual_pur_plan.Company"></aspxform:XTextBox>
                                    </td>
                                    <td>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Dept</td>
                                    <td>
                                        <aspxform:XTextBox id="XTextBox29" runat="server" BorderColor="#DCDCDC" BorderWidth="1" width="130px" XDataBind="SFDATA:annual_pur_plan.Dept"></aspxform:XTextBox>
                                    </td>
                                    <td>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator1" runat="server" Display="None" ForeColor="Red" ErrorMessage="请选择物料名称" ControlToValidate="XTextBox11">物料名称</aspxform:XRequiredFieldValidator>
                                    </td>
                                    <td>
                                        <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator2" runat="server" Display="None" ForeColor="Red" ErrorMessage="请选择单位" ControlToValidate="XDropDownList1">单位</aspxform:XRequiredFieldValidator>
                                    </td>
                                    <td>
                                        <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator3" runat="server" Display="None" ForeColor="Red" ErrorMessage="请填写计划单价" ControlToValidate="XTextBox24">计划单价</aspxform:XRequiredFieldValidator>
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
