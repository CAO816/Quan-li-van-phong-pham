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
    public partial class FrmDonNhap : System.Windows.Forms.Form
    {
        private DonNhap dn;
        private List<SanPham> listSP;
        private string tenNCC;
        DonNhapDAO dnDao = new DonNhapDAO();
        public FrmDonNhap(DonNhap dn, List<SanPham> listSP, string tenNCC)
        {
            this.dn = dn;
            this.listSP = listSP;
            InitializeComponent();
            this.tenNCC = tenNCC;
        }

        private void FrmHoaDon_Load(object sender, EventArgs e)
        {
            txtMaDN.Text = dn.MaDN;
            txtNCC.Text = tenNCC;
            dateTimePickerNgay.Value = DateTime.Now.Date;
            dateTimePickerGio.Value = DateTime.Parse(dn.ThoiGian.ToString());
            foreach (SanPham s in listSP)
            {
                gvDonNhap.Rows.Add(s.TenSP, s.SoLuong.ToString(), s.GiaBan.ToString(), (s.GiaBan * s.SoLuong).ToString());
            }
            txtThue.Text = dnDao.TinhThue(listSP).ToString();
            txtTong.Text = dn.TongGT.ToString();
        }
    }
}
