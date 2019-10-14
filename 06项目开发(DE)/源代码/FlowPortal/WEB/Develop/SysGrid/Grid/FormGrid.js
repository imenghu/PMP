Ext.define('Develop.SysGrid.Grid.FormGrid', {
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
                url: YZSoft.$url('Develop/SysGrid/Service/SysGrid.ashx'),
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
                { text: '列表编码', dataIndex: 'GridId', width: 120, align: 'left', sortable: sortable },
                { text: '列表标题', dataIndex: 'GridTitle', width: 120, align: 'left', sortable: sortable },
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