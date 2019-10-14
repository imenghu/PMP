Ext.define('Develop.SysForm.Grid.ItemGrid', {
    extend: 'Ext.grid.Panel',
    constructor: function (config) {
        var me = this;
        var sortable = false;

        me.store = Ext.create('Ext.data.JsonStore', {
            remoteSort: true,
            model: 'Ext.data.Model',
            pageSize: 0,
            proxy: {
                type: 'ajax',
                url: YZSoft.$url('Develop/SysForm/Service/SysFormItem.ashx'),
                extraParams: {
                    method: 'GetList'
                },
                reader: {
                    rootProperty: 'children'
                }
            }
        });
        var cfg = {
            border: false,
            region: 'center',
            selModel: Ext.create('Ext.selection.CheckboxModel', { mode: 'MULTI' }),
            columns: [
                { xtype: 'rownumberer' },
                { text: '指标编码', dataIndex: 'ItemId', width: 150, align: 'left', sortable: sortable },
                {
                    text: '指标名称', dataIndex: 'ItemName', width: 120, align: 'left', sortable: sortable
                },
                { text: '指标类型', dataIndex: 'ItemType', width: 80, align: 'left', sortable: sortable },
                { text: '长度', dataIndex: 'ItemLength', width: 60, align: 'left', sortable: sortable },
                { text: '小数位', dataIndex: 'ItemDecimal', width: 60, align: 'left', sortable: sortable },
                { text: '是否显示名称', dataIndex: 'IsShowLabel', width: 120, align: 'center', sortable: sortable, renderer: me.renderTrueOrFalse },
                { text: '列宽', dataIndex: 'Width', width: 60, align: 'left', sortable: sortable },
                { text: '是否显示', dataIndex: 'IsShow', width: 80, align: 'center', sortable: sortable, renderer: me.renderTrueOrFalse },
                { text: '是否临时变量', dataIndex: 'IsTmp', width: 100, align: 'center', sortable: sortable, renderer: me.renderTrueOrFalse },
                { text: '控件名称', dataIndex: 'CtrlName', width: 100, align: 'center', sortable: sortable },
                {
                    xtype: 'actioncolumn',
                    text: RS.$('All_DragOrder'),
                    width: 68,
                    align: 'center',
                    flex:1,
                    sortable: false,
                    draggable: false,
                    menuDisabled: true,
                    items: [{
                        glyph: 0xeacb,
                        iconCls: ['yz-action-move yz-action-gray yz-size-icon-13']
                    }]
                }
            ]
        };

        Ext.apply(cfg, config);
        this.callParent([cfg]);
    },
    renderTrueOrFalse: function (value) {
        if (value) {
            return '是';
        }
        else {
            return '<font color=\'gray\'>否</font>';
        }
    }
});