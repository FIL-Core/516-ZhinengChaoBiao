﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using LJH.ZNCB.Model;
using LJH.ZNCB.BLL;
using LJH.GeneralLibrary.Core.DAL;
using LJH.GeneralLibrary.Core.UI;

namespace ZhinengChaoBiao
{
    public partial class FrmDeviceMaster :LJH.GeneralLibrary.Core.UI. FrmMasterBase
    {
        public FrmDeviceMaster()
        {
            InitializeComponent();
        }

        #region 私有变量
        private List<Device> _depts = null;
        private List<DeviceBus> _Buses = null;
        #endregion

        #region 重写基类方法
        public override void ShowOperatorRights()
        {
            base.ShowOperatorRights();
        }

        protected override FrmDetailBase GetDetailForm()
        {
            return new FrmDeviceDetail();
        }

        protected override List<object> GetDataSource()
        {
            _Buses = new DeviceBusBLL(AppSettings.Current.ConnStr).GetItems(null).QueryObjects;
            if (SearchCondition == null)
            {
                _depts = (new DeviceBLL(AppSettings.Current.ConnStr)).GetItems(null).QueryObjects;
            }
            else
            {
                _depts = (new DeviceBLL(AppSettings.Current.ConnStr)).GetItems(SearchCondition).QueryObjects;
            }
            if (_depts != null)
            {
                return (from item in _depts select (object)item).ToList();
            }
            return null;
        }

        protected override void ShowItemInGridViewRow(DataGridViewRow row, object item)
        {
            Device ct = item as Device;
            row.Cells["colID"].Value = ct.ID;
            row.Cells["colName"].Value = ct.Name;
            var bus=_Buses .SingleOrDefault (it=>it.ID ==ct.Bus );
            row.Cells["colBus"].Value = bus != null ? bus.Name : null;
            row.Cells["colDeviceType"].Value = ct.DeviceType == 1 ? "智能电表" : "智能水表";
        }

        protected override bool DeletingItem(object item)
        {
            CommandResult ret = (new DeviceBLL(AppSettings.Current.ConnStr)).Delete(item as Device);
            if (ret.Result != ResultCode.Successful)
            {
                MessageBox.Show(ret.Message);
            }
            return ret.Result == ResultCode.Successful;
        }
        #endregion
    }
}
