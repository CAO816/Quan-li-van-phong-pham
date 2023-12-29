using QLVPP.Form;
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
using System.Windows.Documents;
using System.Windows.Forms;

namespace QLVPP.Form
{
    public partial class FrmSuaSanPham : System.Windows.Forms.Form
    {
        private SanPham sp;
        SanPhamDAO spDao = new SanPhamDAO();
        public FrmSuaSanPham(SanPham sp)
        {
            this.sp = sp;
            InitializeComponent();
        }

        private void FrmSuaSanPham_Load(object sender, EventArgs e)
        {
            DataTable dt = spDao.LayDanhSachLoaiSanPham();
            cbLoaiSP.DataSource = dt;
            cbLoaiSP.DisplayMember = "TenLoaiSP";
            cbLoaiSP.ValueMember = "MaLoaiSP";
            txtMaSP.Text = sp.MaSP;
            txtMaSP.ReadOnly = true;
            txtTenSP.Text = sp.TenSP;
            txtDonViTinh.Text = sp.DonViTinh;
            txtGiaBan.Text = sp.GiaBan.ToString();
            txtGiaNhap.Text = sp.GiaNhap.ToString();
            txtSoLuong.Text = sp.SoLuong.ToString();
            cbLoaiSP.SelectedValue = sp.MaLoaiSP;
            dt = spDao.LayDanhSachNSX();
            cbNSX.DataSource = dt;
            cbNSX.DisplayMember = "TenNSX";
            cbNSX.ValueMember = "MaNSX";
        }

        private void btnXacNhan_Click(object sender, EventArgs e)
        {
            SanPham spNew = new SanPham();
            try
            {
                spNew.MaSP = sp.MaSP;
                spNew.TenSP = txtTenSP.Text;
                spNew.GiaBan = float.Parse(txtGiaBan.Text);
                spNew.GiaNhap = float.Parse(txtGiaNhap.Text);
                spNew.SoLuong = int.Parse(txtSoLuong.Text);
                spNew.DonViTinh = txtDonViTinh.Text;
                spNew.MaLoaiSP = cbLoaiSP.SelectedValue.ToString();
                spNew.MaNSX = int.Parse(cbNSX.SelectedValue.ToString());
            }
            catch (Exception ex)
            {
                ThongBao tb = new ThongBao("Thất bại: " + ex.Message);
                tb.ShowDialog();
                return;
            }
            if (spDao.SuaSanPham(spNew) == true)
            {
                ThongBao tb = new ThongBao("Sửa sản phẩm thành công");
                tb.ShowDialog();
                this.Close();
            }
            else
            {
                ThongBao tb = new ThongBao("Thất bại");
                tb.ShowDialog();
            }
        }
    }
}
