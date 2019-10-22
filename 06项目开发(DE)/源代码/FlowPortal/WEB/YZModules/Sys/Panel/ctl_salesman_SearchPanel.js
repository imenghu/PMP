
Ext.define('YZModules.Sys.Panel.ctl_salesman_SearchPanel', {
    extend: 'Ext.panel.Panel',
    height: 'auto',
    border: false,
    cls: 'yz-bg-transparent yz-pnl-search',
    bodyPadding: '6 10 5 12',

    constructor: function (config) {
        var me = this,
            cfg;

        me.province_store = Ext.create('Ext.data.JsonStore', {
            remoteSort: true,
            model: 'Ext.data.Model',
            proxy: {
                type: 'ajax',
                url: YZSoft.$url(me, '../Service/ctl_salesman.ashx'),
                extraParams: {
                    method: 'GetValue'
                },
                reader: {
                    rootProperty: 'children'
                }
            }
        });
        me.province = Ext.create('Ext.form.field.ComboBox', {
            
            fieldLabel: "省",
            queryMode: 'local',
            store: me.province_store,
            displayField: 'name',
            valueField: 'id',
            value: '',
            editable: false,
            forceSelection: true,
            triggerAction: 'all',
            listeners: {
                change: function () {
                    
                    me.city_store.load(Ext.apply(me.city_store.getProxy().getExtraParams(), {
                        province: me.province.getValue()
                    }));
                }
            }
        });
        me.city_store = Ext.create('Ext.data.JsonStore', {
            remoteSort: true,
            model: 'Ext.data.Model',
            proxy: {
                type: 'ajax',
                url: YZSoft.$url(me, '../Service/ctl_salesman.ashx'),
                extraParams: {
                    method: 'GetCityValue'
                },
                reader: {
                    rootProperty: 'children'
                }
            }
        });
        me.city = Ext.create('Ext.form.field.ComboBox', {

            fieldLabel: "市",
            queryMode: 'local',
            store: me.city_store,
            displayField: 'name',
            valueField: 'name',
            value: '',
            editable: false,
            forceSelection: true,
            triggerAction: 'all',
        });

        me.mat_name = Ext.create('Ext.form.field.Text', {
            fieldLabel: '名称',
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
                    items: [me.province]
                },
                {
                    flex: 1,
                    items: [me.city]
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


        me.province_store.load();
        me.store.on({
            load: function (store, records, successful, operation, eOpts) {
                if (!successful)
                    return;
                var params = operation.request.getParams();

                if (params.searchType)
                    me.edtKeyword.setValue(params.kwd);
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
            province: me.province.getValue(),
            city: me.city.getValue(),
            mat_name: me.mat_name.getValue()
        });

        me.store.loadPage(1);
    },

    onResetClick: function () {
        var me = this,
            store = me.store,
            params = me.store.getProxy().getExtraParams();

        me.province.setValue('');
        me.city.setValue('');
        me.mat_name.setValue('');
        me.edtKeyword.setValue('');
        Ext.apply(params, {
            searchType: '',
        });
        me.store.loadPage(1);
    }
});