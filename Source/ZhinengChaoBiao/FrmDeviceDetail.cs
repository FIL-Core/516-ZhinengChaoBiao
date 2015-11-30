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
    public partial class FrmDeviceDetail : FrmDetailBase
    {
        public FrmDeviceDetail()
        {
            InitializeComponent();
        }

        private void InitCmbBus()
        {
            List<DeviceBus> buses = new DeviceBusBLL(AppSettings.Current.ConnStr).GetItems(null).QueryObjects;
            if (buses != null && buses.Count > 0)
            {
                cmbBus.DataSource = buses;
                cmbBus.DisplayMember = "Name";
            }
        }

        #region 重写基类方法
        protected override void InitControls()
        {
            base.InitControls();
            InitCmbBus();
        }

        public override void ShowOperatorRights()
        {
            base.ShowOperatorRights();
        }

        protected override bool CheckInput()
        {
            if (string.IsNullOrEmpty(txtID.Text))
            {
                MessageBox.Show("编号不能为空");
                txtID.Focus();
                return false;
            }
            if (string.IsNullOrEmpty(txtName.Text))
            {
                MessageBox.Show("名称不能为空");
                txtName.Focus();
                return false;
            }
            if (string.IsNullOrEmpty(cmbBus.Text))
            {
                MessageBox.Show("没有选择总线");
                return false;
            }
            if (string.IsNullOrEmpty(cmbDeviceType.Text))
            {
                MessageBox.Show("没有选择设备类型");
                return false;
            }
            return true;
        }

        protected override void ItemShowing()
        {
            Device ct = UpdatingItem as Device;
            txtID.Text = ct.ID;
            txtID.Enabled = false;
            txtName.Text = ct.Name;
            for(int i=0;i<cmbBus .Items .Count ;i++)
            {
                if ((cmbBus .Items[i] as DeviceBus).ID == ct.Bus)
                {
                    cmbBus.SelectedIndex = i;
                    break;
                }
            }
            cmbDeviceType.SelectedIndex = ct.DeviceType;
        }

        protected override Object GetItemFromInput()
        {
            Device ct = UpdatingItem as Device;
            if (IsAdding)
            {
                ct = new Device();
                ct.ID = txtID.Text != "自动创建" ? txtID.Text : string.Empty;
            }
            ct.Name = txtName.Text;
            ct.Bus = (cmbBus.SelectedItem as DeviceBus).ID;
            ct.DeviceType = cmbDeviceType.SelectedIndex;
            return ct;
        }

        protected override CommandResult AddItem(object addingItem)
        {
            return (new DeviceBLL(AppSettings.Current.ConnStr)).Add(addingItem as Device);
        }

        protected override CommandResult UpdateItem(object updatingItem)
        {
            return (new DeviceBLL(AppSettings.Current.ConnStr)).Update(updatingItem as Device);
        }
        #endregion
    }
}
