var XYSoft = XYSoft || {};

Ext.apply(XYSoft, {
	Render: {
		getValueWithoutZero: function (value) {
			if (parseInt(value) != 0) {
				return value;
			}
		},
		getTrueOrFalse: function (value) {
			if (value) {
				return '是';
			}
			else {
				return '否';
			}
		},
		getSex: function (value) {
			if (value == 'Male') {
				return '男';
			}
			else if (value == 'Female') {
				return '女';
			}
			else {
				return '';
			}
		},
		getTaskState: function (value) {
			if (value)
				value = Ext.String.trim(value).toLowerCase();
			if (value == 'running') {
				return '<font color="blue">处理中</font>';
			}
			else if (value == 'approved') {
				return '<font color="green">已批准</font>';
			}
			else if (value == 'rejected') {
				return '<font color="red">已拒绝</font>';
			}
			else if (value == 'aborted') {
				return '<font color="gray">已撤销</font>';
			}
			else if (value == 'deleted') {
				return '<font color="gray">已删除</font>';
			}
			else {
				return value;
			}
		},
		getDeptNameByFullName: function (value) {
			if (!value) {
				return value;
			}
			value = value.substring('BPMOU://'.length);
			if (value.lastIndexOf('/') > 0) {
				return value.substring(value.lastIndexOf('/') + 1);
			}
			else {
				return value;
			}
		},
		renderDateStrHI: function (value) {
			if (value && Date.parse(value) > 0) {
				return Ext.Date.format(new Date(value), 'H:i');
			}
		},
		renderDateStrYMD: function (value) {
			if (value && Date.parse(value) > 0) {
				return Ext.Date.format(new Date(value), 'Y-m-d');
			}
		},
		renderDateStrYMDHI: function (value) {
			if (value && Date.parse(value) > 0) {
				return Ext.Date.format(new Date(value), 'Y-m-d H:i');
			}
		},
		renderDateY: function (value) {
			if (value && Date.parse(value) > 0) {
				return Ext.Date.format(new Date(value), 'Y');
			}
		},
		renderDateYM: function (value) {
			if (value && Date.parse(value) > 0) {
				return Ext.Date.format(new Date(value), 'Y-m');
			}
		},
		renderDateYMD: function (value) {
			if (value && Date.parse(value) > 0) {
				return Ext.Date.format(new Date(value), 'Y-m-d');
			}
		},
		renderDateYMDHM: function (value) {
			if (value && Date.parse(value) > 0) {
				return Ext.Date.format(new Date(value), 'Y-m-d H:i');
			}
		},
		renderDateYMDHMS: function (value) {
			if (value && Date.parse(value) > 0) {
				return Ext.Date.format(new Date(value), 'Y-m-d H:i:s');
			}
		},
		renderCurrency: function (value) {
			if (value != null) {
				return Ext.util.Format.currency(value, null, 2);
			}
		},
		renderCurrencyD3: function (value) {
			if (value != null) {
				return Ext.util.Format.currency(value, null, 3);
			}
		},
		renderCurrencyD4: function (value) {
			if (value != null) {
				return Ext.util.Format.currency(value, null, 4);
			}
		},
		renderCurrencyD0: function (value) {
			if (value != null) {
				return Ext.util.Format.currency(value, null, 0);
			}
		},
		renderQty: function (value) {
			if (value != null) {
				return Ext.util.Format.number(value, '0.00');
			}
		},
		renderQtyD3: function (value) {
			if (value != null) {
				return Ext.util.Format.number(value, '0.000');
			}
		},
		renderQtyD4: function (value) {
			if (value != null) {
				return Ext.util.Format.number(value, '0.0000');
			}
		},
		renderQtyD0: function (value) {
			if (value != null) {
				return Ext.util.Format.number(value, '0');
			}
		},
		renderHtmlDecode: function (value) {
			if (value) {
				return Ext.util.Format.htmlDecode(value);
			}
		},
		getDateStrArrayToHIStrArray: function (value) {
			debugger;
			if (value) {
				var val = '';
				var list = value.split(',');
				list.forEach(function (element, index, array) {
					val = val + Ext.Date.format(new Date(element), 'H:i') + ',';
				});
				if (val.length > 0) {
					val = val.substring(0, val.length - 1);
				}
				return val;
			}
		},
		renderPicture: function (value) {
			if (value) {
				return '<image style="width : 170px; height : 90px;" src="YZSoft.Services.REST/Attachment/Download.ashx?method=ImageStreamFromFileID&fileid=' + value + '" />';
			}
		},
		renderYesOrNo: function (value) {
		    if (value==1) {
		        return '是';
		    }
		    else {
		        return '否';
		    }
		},
		renderStatus: function (value) {
		    var color = "red",
                str = "";
		    switch (value) {
		        case '0':
		            color = "gray";
		            str = "未提报";
		            break;
		        case "1":
		            color = "blue";
		            str = "审批中";
		            break;
		        case "2":
		            color = "green";
		            str = "审批完成";
		            break;
		        case "3":
		            color = "red";
		            str = "驳回";
		            break;
		    }
		    return Ext.String.format("<font color='{0}'>{1}</font>", color, Ext.util.Format.text(str));
		},
	}
});