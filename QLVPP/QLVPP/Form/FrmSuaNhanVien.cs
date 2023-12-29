using QLVPP.DAO;
using QLVPP.Model;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace QLVPP.Form
{
    public partial class FrmSuaNhanVien : System.Windows.Forms.Form
    {
        private NhanVienDAO nvDao = new NhanVienDAO();
        private NhanVien nv;
        public FrmSuaNhanVien(NhanVien nv)
        {
            this.nv = nv;
            InitializeComponent();
        }

        private void btnSua_Click(object sender, EventArgs e)
        {
            try
            {
                NhanVien nvNew = new NhanVien();
                nvNew.MaNV = txtMaNV.Text;
                nvNew.HoNV = txtHoNV.Text;
                nvNew.TenNV = txtTenNV.Text;
                nvNew.NgaySinh = dateTimePickerNgaySinh.Value.Date;
                nvNew.GioiTinh = cbGioiTinh.Text;
                nvNew.DiaChi = (txtDiaChi.Text != "") ? txtDiaChi.Text : "";
                nvNew.SDT = txtSDT.Text;
                nvNew.NgayTD = dateTimePickerNgayTD.Value.Date;
                nvNew.HeSoLuong = float.Parse(txtHeSoLuong.Text);
                nvNew.MaCV = cbCongViec.SelectedValue.ToString();
                if (nvNew.HoNV == "" || nvNew.TenNV == "" ||
                    nvNew.SDT == "" || nvNew.MaCV == "")
                {
                    ThongBao tb = new ThongBao("Hãy nhập đầy đủ các mục");
                    tb.Show();
                }
                else
                {
                    nvDao.SuaNhanVien(nvNew);
                }
            }
            catch (Exception ex)
            {
                ThongBao tb = new ThongBao("Hãy nhập lại hệ số lương: " + ex.Message);
                tb.Show();
            }
        }

        private void FrmSuaNhanVien_Load(object sender, EventArgs e)
        {
            cbCongViec.DataSource = nvDao.LayDanhSachCongViec();
            cbCongViec.DisplayMember = "TenCV";
            cbCongViec.ValueMember = "MaCV";
            txtMaNV.Text = nv.MaNV;
            txtHoNV.Text = nv.HoNV;
            txtTenNV.Text = nv.TenNV;
            dateTimePickerNgaySinh.Value = nv.NgaySinh;
            cbGioiTinh.Text = nv.GioiTinh;
            txtDiaChi.Text = nv.DiaChi;
            txtSDT.Text = nv.SDT;
            dateTimePickerNgayTD.Value = nv.NgayTD;
            txtHeSoLuong.Text = nv.HeSoLuong.ToString();
            cbCongViec.SelectedValue = nv.MaCV;
        }
    }
}
