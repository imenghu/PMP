
Ext.define('YZModules.Sys.Panel.ctl_material_SearchPanel', {
    extend: 'Ext.panel.Panel',
    height: 'auto',
    border: false,
    cls: 'yz-bg-transparent yz-pnl-search',
    bodyPadding: '6 10 5 12',

    constructor: function (config) {
        var me = this,
            cfg;

        me.plan_pur_year = Ext.create('Ext.form.field.Text', {
            fieldLabel: '物料名称',
            allowBlank: true
        });

        me.mat_name = Ext.create('Ext.form.field.Text', {
            fieldLabel: '审批状态',
            allowBlank: true
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
                    items: [me.plan_pur_year]
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

        me.relayEvents(me.plan_pur_year, ['specialkey']);
        me.relayEvents(me.mat_name, ['specialkey']);

        me.on('specialkey', function (f, e) {
            if (e.getKey() == e.ENTER) {
                me.onSearchClick();
            }
        });

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
            searchType: 'AdvancedSearch',
            plan_pur_year: me.plan_pur_year.getValue(),
            mat_name: me.mat_name.getValue()
        });

        me.store.loadPage(1);
    },

    onResetClick: function () {
        var me = this,
            store = me.store,
            params = me.store.getProxy().getExtraParams();

        me.plan_pur_year.setValue('');
        me.mat_name.setValue('');

        me.store.loadPage(1);
    }
});