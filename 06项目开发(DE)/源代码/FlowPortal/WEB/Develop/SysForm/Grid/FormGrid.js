Ext.define('Develop.SysForm.Grid.FormGrid', {
    extend: 'Ext.grid.Panel',
    constructor: function (config) {
        var me = this;
        var sortable = false;

        me.store = Ext.create('Ext.data.JsonStore', {
            remoteSort: true,
            model: 'Ext.data.Model',
            pageSize: $S.PageSize.defaultSize,
            proxy: {
                type: 'ajax',
                url: YZSoft.$url('Develop/SysForm/Service/SysForm.ashx'),
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
            columns: [
                { xtype: 'rownumberer' },
                { text: '表单名称', dataIndex: 'FormName', width: 120, align: 'left', sortable: sortable },
                { text: '表单标题', dataIndex: 'FormTitle', width: 120, align: 'left', sortable: sortable },
                { text: '备注', dataIndex: 'Description', align: 'left', sortable: sortable, flex: 1 }
            ],

            bbar: Ext.create('Ext.toolbar.Paging', {
                store: me.store,
                displayInfo: true
            })
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