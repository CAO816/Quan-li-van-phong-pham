using QLVPP.DAO;
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
    public partial class FrmPhanCa : System.Windows.Forms.Form
    {
        private NhanVienDAO nvDao = new NhanVienDAO();
        public FrmPhanCa()
        {
            InitializeComponent();
        }

        private void FrmPhanCa_Load(object sender, EventArgs e)
        {
            gvNhanVien.DataSource = nvDao.LayDanhSachNhanVien();

            DataTable dt = new DataTable();
            dt.Columns.Add("MaCa", typeof(string));
            dt.Columns.Add("ChiTiet", typeof(string));
            dt.Rows.Add("ca-001", "Ca 1: 8h - 12h");
            dt.Rows.Add("ca-002", "Ca 2: 12h - 16h");
            dt.Rows.Add("ca-003", "Ca 3: 16h - 20h");
            cbMaCa.DataSource = dt;
            cbMaCa.DisplayMember = "ChiTiet";
            cbMaCa.ValueMember = "MaCa";

            cbMaNV.DataSource = nvDao.LayDanhSachNhanVienHoTen();
            cbMaNV.DisplayMember = "HoTen";
            cbMaNV.ValueMember = "MaNV";
        }

        private void btnPhanCa_Click(object sender, EventArgs e)
        {
            nvDao.PhanCa(cbMaNV.SelectedValue.ToString(), cbMaCa.SelectedValue.ToString(), dateTimePickerNgay.Value);
        }

        private void btnListNV_Click(object sender, EventArgs e)
        {
            gvThongTin.DataSource = nvDao.LayDanhSachNhanVien();
        }

        private void btnListCa_Click(object sender, EventArgs e)
        {
            gvThongTin.DataSource = nvDao.DanhSachCaLamViec();
        }

        private void btnListPhanCa_Click(object sender, EventArgs e)
        {
            gvThongTin.DataSource = nvDao.DanhSachPhanCa();
        }
    }
}
