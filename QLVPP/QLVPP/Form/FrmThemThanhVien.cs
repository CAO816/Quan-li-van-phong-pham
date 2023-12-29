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
    public partial class FrmThemThanhVien : System.Windows.Forms.Form
    {
        ThanhVienDAO tvDao = new ThanhVienDAO();
        public FrmThemThanhVien()
        {
            InitializeComponent();
        }

        private void btnThem_Click(object sender, EventArgs e)
        {
            ThanhVien tvNew = new ThanhVien();
            tvNew.MaTV = txtMaTV.Text;
            tvNew.HoTV = txtHoTV.Text;
            tvNew.TenTV = txtTenTV.Text;
            tvNew.SDT = txtSDT.Text;
            tvNew.DiaChi = txtDiaChi.Text;
            tvNew.DiemTichLuy = 0;
            tvNew.MaLoaiTV = "ltv-003";
            tvDao.ThemThanhVien(tvNew);
            this.Close();
        }
    }
}
