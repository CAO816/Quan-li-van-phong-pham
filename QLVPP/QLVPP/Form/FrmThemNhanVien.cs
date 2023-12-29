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
    public partial class FrmThemNhanVien : System.Windows.Forms.Form
    {
        NhanVienDAO nvDao = new NhanVienDAO();
        public FrmThemNhanVien()
        {
            InitializeComponent();
        }

        private void btnThem_Click(object sender, EventArgs e)
        {
            try
            {
                NhanVien nvNew = new NhanVien();
                nvNew.MaNV = txtMaNV.Text;
                nvNew.HoNV = txtHoNV.Text;
                nvNew.TenNV = txtTenNV.Text;
                nvNew.NgaySinh = dateTimePickerNgaySinh.Value.Date;
                nvNew.GioiTinh = cbGioiTinh.Text;
                nvNew.DiaChi = (txtDiaChi.Text != "") ? txtDiaChi.Text: "";
                nvNew.SDT = txtSDT.Text;
                nvNew.NgayTD = dateTimePickerNgayTD.Value.Date;
                nvNew.HeSoLuong = float.Parse(txtHeSoLuong.Text);
                nvNew.MaCV = cbCongViec.SelectedValue.ToString();
                if (nvNew.MaCV == "" || cbGioiTinh.Text == "")
                {
                    ThongBao tb = new ThongBao("Hãy nhập đầy đủ các mục");
                    tb.Show();
                }
                else
                {
                    nvDao.ThemNhanVien(nvNew);
                }
            }
             catch (Exception ex)
            {
                ThongBao tb = new ThongBao("Hãy nhập lại hệ số lương: " + ex.Message);
                tb.Show();
            }   
        }

        private void FrmThemNhanVien_Load(object sender, EventArgs e)
        {
            cbCongViec.DataSource = nvDao.LayDanhSachCongViec();
            cbCongViec.DisplayMember = "TenCV";
            cbCongViec.ValueMember = "MaCV";
        }
    }
}
