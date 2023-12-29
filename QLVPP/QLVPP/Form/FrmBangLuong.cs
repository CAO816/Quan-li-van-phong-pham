using QLVPP.DAO;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace QLVPP
{
    public partial class FrmBangLuong : System.Windows.Forms.Form
    {
        private NhanVienDAO nvDao = new NhanVienDAO();
        public FrmBangLuong()
        {
            InitializeComponent();
        }

        private void btnXem_Click(object sender, EventArgs e)
        {
            gvBangLuong.DataSource = nvDao.BangLuongThang(int.Parse(cbThang.Text), int.Parse(cbNam.Text));
        }
    }
}
