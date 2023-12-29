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
    public partial class FrmHoaDon : System.Windows.Forms.Form
    {
        private HoaDon hd;
        private List<SanPham> listSP;
        HoaDonDao hdDao = new HoaDonDao();
        public FrmHoaDon(HoaDon hd, List<SanPham> listSP)
        {
            this.hd = hd;
            this.listSP = listSP;
            InitializeComponent();
        }

        private void FrmHoaDon_Load(object sender, EventArgs e)
        {
            txtMaHD.Text = hd.MaHD;
            dateTimePickerNgay.Value = DateTime.Now.Date;
            dateTimePickerGio.Value = DateTime.Parse(hd.ThoiGian.ToString());
            foreach (SanPham s in listSP)
            {
                gvHoaDon.Rows.Add(s.TenSP, s.SoLuong.ToString(), s.GiaBan.ToString(), (s.GiaBan * s.SoLuong).ToString());
            }
            txtUuDai.Text = (hdDao.TinhPhanTramUuDai(hd.MaTV) * hdDao.TinhTienGoc(listSP)).ToString();
            txtThue.Text = hdDao.TinhThue(listSP).ToString();
            txtTong.Text = hd.TongThanhToan.ToString();
        }
    }
}
