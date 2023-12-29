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
    public partial class frmDangNhap : System.Windows.Forms.Form
    {
        TaiKhoanDAO tkDao = new TaiKhoanDAO();
        public frmDangNhap()
        {
            InitializeComponent();
        }

        private void HoverQuenMK(object sender, EventArgs e)
        {
            lblQuen.ForeColor = Color.Blue;
        }

        private void LeaveQuenMK(object sender, EventArgs e)
        {
            lblQuen.ForeColor = Color.Black;
        }

        private void btnDangNhap_Click(object sender, EventArgs e)
        {
            TaiKhoan taiKhoan = new TaiKhoan();
            taiKhoan.TenTK = txtTaiKhoan.Text;
            taiKhoan.MatKhau = txtMatKhau.Text;
            GLOBAL.username = txtTaiKhoan.Text.Trim();
            GLOBAL.password = txtMatKhau.Text.Trim();
            if (tkDao.checkDangNhap(taiKhoan))
            {
                taiKhoan.LoaiNhanVien = tkDao.getLoaiNhanVien(taiKhoan.TenTK);
                FrmMain frmMain = new FrmMain(taiKhoan);
                frmMain.ShowDialog();
                this.Close();
            }
            else
            {
                ThongBao tb = new ThongBao("Tài khoản không tồn tại hoặc đã nhập sai mật khẩu");
                tb.ShowDialog();
            }
        }

        private void DangNhap_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
            {
                btnDangNhap_Click(sender, e);
            }
        }
    }
}
