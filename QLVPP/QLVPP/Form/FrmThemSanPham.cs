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
    public partial class FrmThemSanPham : System.Windows.Forms.Form
    {
        SanPhamDAO spDao = new SanPhamDAO();
        public FrmThemSanPham()
        {
            InitializeComponent();
        }

        private void FrmThemSanPham_Load(object sender, EventArgs e)
        {
            DataTable dt = spDao.LayDanhSachLoaiSanPham();
            cbLoaiSP.DataSource = dt;
            cbLoaiSP.DisplayMember = "TenLoaiSP";
            cbLoaiSP.ValueMember = "MaLoaiSP";
            dt = spDao.LayDanhSachNSX();
            cbNSX.DataSource = dt;
            cbNSX.DisplayMember = "TenNSX";
            cbNSX.ValueMember = "MaNSX";
        }

        private void btnThem_Click(object sender, EventArgs e)
        {
            SanPham spNew = new SanPham();
            try
            {
                spNew.MaSP = txtMaSP.Text;
                spNew.TenSP = txtTenSP.Text;
                spNew.GiaBan = float.Parse(txtGiaBan.Text);
                spNew.GiaNhap = float.Parse(txtGiaNhap.Text);
                spNew.SoLuong = 0;
                spNew.DonViTinh = txtDonViTinh.Text;
                spNew.MaLoaiSP = cbLoaiSP.SelectedValue.ToString();
                if (cbNSX.Text == "")
                {
                    spNew.MaNSX = -1;
                }
                else
                {
                    spNew.MaNSX = int.Parse(cbNSX.SelectedValue.ToString());
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("Thất bại " + ex.Message, "Thông báo");
                return;
            }
            if (spDao.ThemSanPham(spNew) == true)
            {
                MessageBox.Show("Thêm sản phẩm thành công", "Thông báo");
                this.Close();
            }
        }
    }
}
