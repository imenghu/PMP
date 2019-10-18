
Ext.define('YZModules.Sys.Panel.ctl_vendor_SearchPanel', {
    extend: 'Ext.panel.Panel',
    height: 'auto',
    border: false,
    cls: 'yz-bg-transparent yz-pnl-search',
    bodyPadding: '6 10 5 12',

    constructor: function (config) {
        var me = this,
            cfg;

        me.vendor_store = Ext.create('Ext.data.JsonStore', {
            remoteSort: true,
            model: 'Ext.data.Model',
            proxy: {
                type: 'ajax',
                url: YZSoft.$url(me, '../Service/ctl_vendor.ashx'),
                extraParams: {
                    method: 'GetValue'
                },
                reader: {
                    rootProperty: 'children'
                }
            }
        });

        //me.status = Ext.create('Ext.data.JsonStore', {
        //    fields: ['name', 'value'],
        //    data: [
        //        { name: RS.$('All_SearchAll'), value: '' },
        //        { name: "零散供应商", value: '零散供应商' },
        //        { name: "德清县杭翔玻璃", value: '德清县杭翔玻璃' },
        //        { name: "济南鑫超越纸箱厂", value: '济南鑫超越纸箱厂' },
        //        { name: "上海宝翼制罐有限公司", value: '上海宝翼制罐有限公司' },
        //         { name: "郓城博鑫包装有限公司", value: '郓城博鑫包装有限公司' },
        //          { name: "鲍婕测试", value: '鲍婕测试' }
                 


        //    ]
        //});

        me.proc_status = Ext.create('Ext.form.field.ComboBox', {
            fieldLabel: "供应商名称",
            queryMode: 'local',
            store: me.vendor_store,
            displayField: 'vendor_name',
            valueField: 'vendor_name',
            value: '',
            editable: false,
            forceSelection: true,
            triggerAction: 'all',
        });


        me.mat_name = Ext.create('Ext.form.field.Text', {
            fieldLabel: '物料名称',
            allowBlank: true
        });

        me.edtKeyword = Ext.create('Ext.form.field.Text', {
            fieldLabel: RS.$('All_Keyword'),
            allowBlank: true,
            value: config.store.getProxy().getExtraParams().kwd || ''
        });
        me.btnSearch = Ext.create('Ext.button.Button', {
            text: RS.$('All_Search'),
            cls: 'yz-btn-submit yz-btn-round3',
            handler: function () {
                me.onSearchClick();
            }
        });

        me.btnClear = Ext.create('Ext.button.Button', {
            text: RS.$('All_Reset'),
            cls: 'yz-btn-round3',
            handler: function () {
                me.onResetClick();
            }
        });

        cfg = {
            border: false,
            defaults: {
                border: false,
                layout: {
                    type: 'hbox',
                    align: 'middle'
                },
                defaults: {
                    margin: '1 0',
                    border: false,
                    maxWidth: 320,
                    minWidth: 180,
                    layout: {
                        type: 'fit'
                    },
                    defaults: {
                        labelWidth: YZSoft.os.isMobile ? 80 : 100,
                        margin: '3 0 3 10'
                    }
                }
            },
            items: [{
                items: [{
                    flex: 1,
                    items: [me.proc_status]
                }, {
                    flex: 1,
                    items: [me.mat_name]
                }, {
                    flex: 1,
                    minWidth: 100,
                    layout: {
                        type: 'hbox',
                        align: 'middle'
                    },
                    defaults: {
                        padding: '6 16',
                        margin: '0 0 0 8',
                        ui: 'default-toolbar'
                    },
                    items: [me.btnSearch, me.btnClear]
                }]
            }]
        };

        Ext.apply(cfg, config);
        me.callParent([cfg]);

        me.vendor_store.load();

        me.store.on({
            load: function (store, records, successful, operation, eOpts) {
                if (!successful)
                    return;
            }
        });
    },

    onSearchClick: function () {
        var me = this,
            store = me.store,
            params = me.store.getProxy().getExtraParams();

        Ext.apply(params, {
            searchType: 'QuickSearch',
            kwd: me.edtKeyword.getValue(),
            proc_status: me.proc_status.getValue(),
            mat_name: me.mat_name.getValue()
        });

        me.store.loadPage(1);
    },

    onResetClick: function () {
        var me = this,
            store = me.store,
            params = me.store.getProxy().getExtraParams();

        me.proc_status.setValue('');
        me.mat_name.setValue('');
        me.edtKeyword.setValue('');
        Ext.apply(params, {
            searchType: '',
        });
        me.store.loadPage(1);
    }
});