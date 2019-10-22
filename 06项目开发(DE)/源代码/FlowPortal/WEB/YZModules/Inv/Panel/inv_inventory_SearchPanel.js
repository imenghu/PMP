
Ext.define('YZModules.Inv.Panel.inv_inventory_SearchPanel', {
    extend: 'Ext.panel.Panel',
    requires: [
        'YZSoft.bpm.src.form.field.ProcessNameComboBox',
        'YZSoft.src.form.field.User',
        'YZSoft.src.form.field.PeriodPicker'
    ],
    height: 'auto',
    border: false,
    cls: 'yz-bg-transparent yz-pnl-search',
    bodyPadding: '6 10 5 12',

    constructor: function (config) {
        var me = this,
            cfg;


        me.year = Ext.create('Ext.data.JsonStore', {
            fields: ['name', 'value'],
            data: [
                { name: RS.$('All_SearchAll'), value: '' },
                { name: "2019", value: '2019' },
                { name: "2020", value: '2020' }
               



            ]
        });

        me.inv_year = Ext.create('Ext.form.field.ComboBox', {
            fieldLabel: "月年份",
            queryMode: 'local',
            store: me.year,
            displayField: 'name',
            valueField: 'value',
            value: '',
            editable: false,
            forceSelection: true,
            triggerAction: 'all',
        });
      
        me.status = Ext.create('Ext.data.JsonStore', {
            fields: ['name', 'value'],
            data: [
                { name: RS.$('All_SearchAll'), value: '' },
                { name: "1月", value: '1月' },
                { name: "2月", value: '2月' },
                { name: "3月", value: '3月' },
                { name: "4月", value: '4月' },
                { name: "5月", value: '5月' },
                { name: "6月", value: '6月' },
                { name: "7月", value: '7月' },
                { name: "8月", value: '8月' },
                { name: "9月", value: '9月' },
                { name: "10月", value: '10月' },
                { name: "11月", value: '11月' },
                { name: "12月", value: '12月' }
                


            ]
        });

        me.proc_status = Ext.create('Ext.form.field.ComboBox', {
            fieldLabel: "月份",
            queryMode: 'local',
            store: me.status,
            displayField: 'name',
            valueField: 'value',
            value: '',
            editable: false,
            forceSelection: true,
            triggerAction: 'all',
        });
       
        me.depot_name = Ext.create('Ext.form.field.Text', {
            fieldLabel: '盘存人',
            allowBlank: true,

        });


        me.edtKeyword = Ext.create('Ext.form.field.Text', {
            fieldLabel: '关键字',
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
                    items: [me.inv_year]
                }, {
                    flex: 1,
                    items: [me.proc_status]
                }, {
                    flex: 1,
                    items: [me.depot_name]
                },
                
                {
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

    onTaskStateTypeChanged: function () {
        this.edtRecipient.setDisabled(this.cmbTaskStatus.getValue() != 'Running');
    },

    onSearchClick: function () {
        var me = this,
            store = me.store,
            params = me.store.getProxy().getExtraParams();

        Ext.apply(params, {
            searchType: 'QuickSearch',
            kwd: me.edtKeyword.getValue(),
            proc_status: me.proc_status.getValue(),
            inv_year: me.inv_year.getValue(),
            depot_name: me.depot_name.getValue(),
            
         

        });

        me.store.loadPage(1);
    },

    onResetClick: function () {
        var me = this,
            store = me.store,
            params = me.store.getProxy().getExtraParams();
        me.proc_status.setValue('');
        me.inv_year.setValue('');
        me.depot_name.setValue('');
        
     
        

        me.edtKeyword.setValue('');

        Ext.apply(params, {
            searchType: '',
        });

        me.store.loadPage(1);
    }
});