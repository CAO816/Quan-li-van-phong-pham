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
    public partial class FrmSuaThanhVien : System.Windows.Forms.Form
    {
        private ThanhVien tv;
        ThanhVienDAO tvDao = new ThanhVienDAO();
        public FrmSuaThanhVien(ThanhVien tv)
        {
            this.tv = tv;   
            InitializeComponent();
        }

        private void FrmSuaThanhVien_Load(object sender, EventArgs e)
        {
            DataTable dt = tvDao.LayLoaiThanhVien();
            cbLoaiTV.DataSource = dt;
            cbLoaiTV.DisplayMember = "TenLoaiTV";
            cbLoaiTV.ValueMember = "MaLoaiTV";
            txtMaTV.Text = tv.MaTV;
            txtHoTV.Text = tv.HoTV;
            txtTenTV.Text = tv.TenTV;
            txtSDT.Text = tv.SDT;
            txtDiaChi.Text = tv.DiaChi;
            txtDiem.Text = tv.DiemTichLuy.ToString();
            cbLoaiTV.SelectedValue = tv.MaLoaiTV;
        }

        private void btnSua_Click(object sender, EventArgs e)
        {
            ThanhVien tvNew = new ThanhVien();
            try
            {
                tvNew.MaTV = tv.MaTV;
                tvNew.HoTV = txtHoTV.Text;
                tvNew.TenTV = txtTenTV.Text;
                tvNew.SDT = txtSDT.Text;
                tvNew.DiaChi = txtDiaChi.Text;
                tvNew.DiemTichLuy = int.Parse(txtDiem.Text);
                tvNew.MaLoaiTV = cbLoaiTV.SelectedValue.ToString();
            }
            catch
            {
                ThongBao tb = new ThongBao("Lỗi điểm tích lũy");
                tb.ShowDialog();
            }
            tvDao.SuaThanhVien(tvNew);
        }
    }
}
