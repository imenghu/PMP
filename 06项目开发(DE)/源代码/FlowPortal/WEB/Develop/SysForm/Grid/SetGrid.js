Ext.define('Develop.SysForm.Grid.SetGrid', {
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
                url: YZSoft.$url('Develop/SysForm/Service/SysFormSet.ashx'),
                extraParams: {
                    method: 'GetList'
                },
                reader: {
                    rootProperty: 'children'
                }
            },
            listeners: {
                load: function () {
                    me.fireEvent('afterload');
                }
            }
        });

        var cfg = {
            border: false,
            region: 'center',
            selModel: Ext.create('Ext.selection.CheckboxModel', { mode: 'MULTI' }),
            columns: [
                { xtype: 'rownumberer' },
                { text: '指标集编码', dataIndex: 'SetId', width: 150, align: 'left', sortable: sortable },
                { text: '指标集名称', dataIndex: 'SetName', width: 150, align: 'left', sortable: sortable, flex: 1 },
                { text: '是否可重复', dataIndex: 'IsRepeatable', width: 150, align: 'left', sortable: sortable,renderer:me.renderTrueOrFalse },
                { text: '是否显示名称', dataIndex: 'IsShowHeader', width: 150, align: 'left', sortable: sortable, renderer: me.renderTrueOrFalse },
                {
                    xtype: 'actioncolumn',
                    text: RS.$('All_DragOrder'),
                    width: 68,
                    align: 'center',
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