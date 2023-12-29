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
using System.Windows.Forms;

namespace QLVPP.Form
{
    public partial class FrmMain : System.Windows.Forms.Form
    {
        
        private SanPhamDAO sanPhamDAO = new SanPhamDAO();
        private ThanhVienDAO tvDao = new ThanhVienDAO();
        private ThongKeDAO tkDAO = new ThongKeDAO();
        private HoaDonDao hdDao = new HoaDonDao();
        private NhanVienDAO nvDao = new NhanVienDAO();
        private DonNhapDAO dnDao =  new DonNhapDAO();
        private NhanVien nv = new NhanVien();
        private ThanhVien tv = new ThanhVien();
        private TaiKhoan taiKhoan;
        List<SanPham> listSP = new List<SanPham>();
        List<SanPham> listNH = new List<SanPham>();
        SanPham sp = new SanPham();
        SanPham spNhap = new SanPham();
        public FrmMain()
        {
            InitializeComponent();
        }
        public FrmMain(TaiKhoan taiKhoan)
        {
            this.taiKhoan = taiKhoan;
            InitializeComponent();
        }

        private void btnPhanCa_Click(object sender, EventArgs e)
        {
            FrmPhanCa frmPhanCa = new FrmPhanCa();
            frmPhanCa.Show();
        }

        private void btnBangLuong_Click(object sender, EventArgs e)
        {
            FrmBangLuong frmBangLuong = new FrmBangLuong();
            frmBangLuong.Show();
        }

        private void FrmMain_Load(object sender, EventArgs e)
        {
            this.Text = taiKhoan.TenTK;
            listSP.Clear();
            sp = new SanPham();
            gvSanPham.DataSource = sanPhamDAO.GetListSanPhamSapXepTheoTen();
            gvListSanPham.DataSource = sanPhamDAO.GetListSanPham();
            gvHoaDon.DataSource = hdDao.LayTatCaHoaDon();
            gvThanhVien.DataSource = tvDao.LayDanhSachThanhVien();
            gvNhanVien.DataSource = nvDao.LayDanhSachNhanVien();
            gvSanPhamTabNhapHang.DataSource = sanPhamDAO.GetListSanPham();
            cbNCC.DataSource = sanPhamDAO.LayDanhSachNCC();
            cbNCC.DisplayMember = "TenNCC";
            cbNCC.ValueMember = "MaNCC";
            gvNCC.DataSource = sanPhamDAO.LayDanhSachNCC();
            gvNSX.DataSource = sanPhamDAO.LayDanhSachNSX();
        }

        private void btnTimKiemHome_Click(object sender, EventArgs e)
        {
            gvSanPham.DataSource = sanPhamDAO.TimKiemSanPhamSoLuongLonHon0(txtTimKiemHome.Text);
        }

        private void btnKiemTraHome_Click(object sender, EventArgs e)
        {
            if (tvDao.TimThanhVienTheoSDT(txtSDTHome.Text) == null)
            {
                MessageBox.Show("Không có khách hàng thành viên này", "Thông báo");
            }
            else
            {
                tv = tvDao.TimThanhVienTheoSDT(txtSDTHome.Text);
                txtTenTV.Text = tvDao.TimThanhVienTheoSDT(txtSDTHome.Text).HoTV + ' ' + tvDao.TimThanhVienTheoSDT(txtSDTHome.Text).TenTV;
            }
        }

        private void gvSanPham_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            sp = sanPhamDAO.GetSanPham(gvSanPham.CurrentRow.Cells[0].Value.ToString());
            txtTenSPHome.Text = sp.TenSP.ToString();
        }

        private void btnAdd_Click(object sender, EventArgs e)
        {
            try
            {
                sp.SoLuong = int.Parse(txtSoLuongHome.Text.Trim());
            }
            catch (Exception ex)
            {
                ThongBao tb = new ThongBao("Nhập số lượng sai định dang: " + ex.Message);
                tb.ShowDialog();
                return;
            }
            if (sp.SoLuong <=0 )
            {
                ThongBao tb = new ThongBao("Số lượng phải > 0");
                tb.ShowDialog();
                return;
            }    
            foreach(SanPham c in listSP)
            {
                if (sp.TenSP == c.TenSP)
                {
                    MessageBox.Show("Đã có sản phẩm này", "Thông báo");
                    return;
                }
            }
            this.gvHoaDonHome.Rows.Add(sp.TenSP, sp.SoLuong, sp.GiaBan);
            listSP.Add(sp);
            txtSoLuongHome.Text = "0";
        }

        private void txtTaoMoiHome_Click(object sender, EventArgs e)
        {
            FrmMain_Load(sender, e);
            gvHoaDonHome.Rows.Clear();
            listSP.Clear();
            sp = null;
        }

        private void btnXuatHome_Click(object sender, EventArgs e)
        {
            if (txtMaHD.Text == "")
            {
                MessageBox.Show("Hãy nhập mã hóa đơn", "Thông báo");
                return;
            }
            HoaDon hd = new HoaDon();
            hd.MaHD = txtMaHD.Text;
            hd.NgayLap = DateTime.Now.Date;
            hd.ThoiGian = new TimeSpan(DateTime.Now.Hour, DateTime.Now.Minute, DateTime.Now.Second);
            hd.TongThanhToan = hdDao.TinhTienGoc(listSP) + hdDao.TinhThue(listSP) - hdDao.TinhPhanTramUuDai(tv.MaTV) * hdDao.TinhTienGoc(listSP);
            hd.MaNV = taiKhoan.TenTK;
            hd.MaTV = tv.MaTV;
            if (hdDao.ThemHoaDon(hd, listSP))
            {
                FrmHoaDon frmHoaDon = new FrmHoaDon(hd, listSP);
                frmHoaDon.ShowDialog();
            }
            else
            {
                MessageBox.Show("Tạo hóa đơn thất bại", "Thông báo");
            }
        }

        private void btnTimKiemSanPham_Click(object sender, EventArgs e)
        {
            gvListSanPham.DataSource = sanPhamDAO.TimKiemSanPham(txtTimKiemSanPham.Text);
        }

        private void itemClearSP_Click(object sender, EventArgs e)
        {
            gvListSanPham.DataSource = sanPhamDAO.GetListSanPham();
            txtTimKiemSanPham.Text = "";
        }

        private void itemThemSP_Click(object sender, EventArgs e)
        {
            FrmThemSanPham frmThemSanPham = new FrmThemSanPham();
            frmThemSanPham.ShowDialog();
        }
        private void btnTimKiemHoaDon_Click(object sender, EventArgs e)
        {
            gvHoaDon.DataSource = hdDao.TimHoaDonTheoNgay(dataTimePickerBatDau.Value.Date, dateTimePickerKetThuc.Value.Date);
        }

        private void btnDoanhThu_Click(object sender, EventArgs e)
        {
            if ((cbTinhDoanhThu.Text) == "Theo ngày")
            {
                float dt = tkDAO.DoanhThuTheoNgay(dateTimePickerNgayDT.Value.Date);
                lblGiaTriDoanhThu.Text = dt.ToString() + " VNĐ";
                gvDoanhThu.DataSource = tkDAO.LayDoanhThuTheoNgay(dateTimePickerNgayDT.Value.Date);
            }
            else if (cbTinhDoanhThu.Text == "Theo tháng")
            {
                float dt = tkDAO.DoanhThuTheoThang(dateTimePickerNgayDT.Value.Date);
                lblGiaTriDoanhThu.Text = dt.ToString() + " VNĐ";
                gvDoanhThu.DataSource = tkDAO.LayDoanhThuTheoThang(dateTimePickerNgayDT.Value.Date);
            }
            else
            {
                float dt = tkDAO.DoanhThuTheoNam(dateTimePickerNgayDT.Value.Date);
                lblGiaTriDoanhThu.Text = dt.ToString() + " VNĐ";
                gvDoanhThu.DataSource = tkDAO.LayDoanhThuTheoNam(dateTimePickerNgayDT.Value.Date);
            }
        }

        private void btnChiPhi_Click(object sender, EventArgs e)
        {
            if (cbTinhChiPhi.Text == "Theo tháng")
            {
                float cp = tkDAO.ChiPhiTheoThang(dateTimePickerChiPhi.Value.Date);
                lblGiaTriChiPhi.Text = cp.ToString() + " VNĐ";
                gvChiPhi.DataSource = tkDAO.LayChiPhiTheoThang(dateTimePickerNgayDT.Value.Date);
            }
            else
            {
                float cp = tkDAO.ChiPhiTheoNam(dateTimePickerChiPhi.Value.Date);
                lblGiaTriChiPhi.Text = cp.ToString() + " VNĐ";
                gvChiPhi.DataSource = tkDAO.LayChiPhiTheoNam(dateTimePickerNgayDT.Value.Date);
            }
        }

        private void btnLamMoi_Click(object sender, EventArgs e)
        {
            gvHoaDon.DataSource = hdDao.LayTatCaHoaDon();
        }

        private void TimKiemSPTabHome_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
            {
                btnTimKiemHome_Click(sender, e);
            }
        }

        private void TimKiemSPTabSP_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
            {
                btnTimKiemSanPham_Click(sender, e);
            }
        }

        private void itemSuaSP_Click(object sender, EventArgs e)
        {
            if (sp.MaSP == null)
            {
                return;
            }
            FrmSuaSanPham frmSuaSanPham = new FrmSuaSanPham(sp);
            frmSuaSanPham.ShowDialog();
        }

        private void LaySanPhamTabSanPhan_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            sp = sanPhamDAO.GetSanPham(gvListSanPham.CurrentRow.Cells[0].Value.ToString());
        }

        private void btnTimKiem_Click(object sender, EventArgs e)
        {
            gvThanhVien.DataSource = tvDao.TimDanhSachThanhVienTheoSDT(txtTimKiem.Text);
        }

        private void itemLamMoiThanhVien_Click(object sender, EventArgs e)
        {
            gvThanhVien.DataSource = tvDao.LayDanhSachThanhVien();
        }

        private void itemThemThanhVien_Click(object sender, EventArgs e)
        {
            FrmThemThanhVien frmThemThanhVien = new FrmThemThanhVien();
            frmThemThanhVien .ShowDialog();
        }

        private void itemSuaThanhVien_Click(object sender, EventArgs e)
        {
            if (tv == null)
            {
                return;
            }    
            FrmSuaThanhVien frmSuaThanhVien = new FrmSuaThanhVien(tv);
            frmSuaThanhVien.ShowDialog();
        }

        private void ChonThanhVien_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            string SDT = gvThanhVien.CurrentRow.Cells[3].Value.ToString();
            tv = tvDao.TimThanhVienTheoSDT(SDT);
            
        }

        private void btnTimKiemNV_Click(object sender, EventArgs e)
        {
            gvNhanVien.DataSource = nvDao.TimKiemNhanVien(txtTimKiemTabNhanVien.Text);
        }

        private void itemLamMoiTabNV_Click(object sender, EventArgs e)
        {
            gvNhanVien.DataSource = nvDao.LayDanhSachNhanVien();
        }

        private void itemThemTabNV_Click(object sender, EventArgs e)
        {
            FrmThemNhanVien frmThemNhanVien = new FrmThemNhanVien();
            frmThemNhanVien .ShowDialog();
        }

        private void ChonNhanVien_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            string maNV = gvNhanVien.CurrentRow.Cells["MaNV"].Value.ToString();
            nv = nvDao.GetNhanVien(maNV);
        }

        private void itemXoaTabNhanVien_Click(object sender, EventArgs e)
        {
            if (nv.MaNV != null)
            {
                nvDao.XoaNhanVien(nv);
            }
            else
            {
                return;
            }
            gvNhanVien.DataSource = nvDao.LayDanhSachNhanVien();
        }

        private void itemSuaTabNV_Click(object sender, EventArgs e)
        {
            if (nv.MaNV != null)
            {
                FrmSuaNhanVien frm = new FrmSuaNhanVien(nv);
                frm.ShowDialog();
            }
            else
            {
                return;
            }
            gvNhanVien.DataSource = nvDao.LayDanhSachNhanVien();
        }

        private void TimKiemSanPhamTabNhapHang_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
            {
                gvSanPhamTabNhapHang.DataSource = sanPhamDAO.TimKiemSanPham(txtTimKiemTabNhapHang.Text);
            }   
        }

        private void NhapHang_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            spNhap = sanPhamDAO.GetSanPham(gvSanPhamTabNhapHang.CurrentRow.Cells["MaSPTabNH"].Value.ToString());
            txtMaSP.Text = spNhap.MaSP;
            txtGiaNhap.Text = spNhap.GiaNhap.ToString();
        }

        private void btnThemDonNhap_Click(object sender, EventArgs e)
        {
            try
            {
                spNhap.SoLuong = int.Parse(txtSoLuong.Text.Trim());
                spNhap.GiaNhap = float.Parse(txtGiaNhap.Text.Trim());
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
                return;
            }
            if (spNhap.SoLuong <= 0)
            {
                ThongBao tb = new ThongBao("Số lượng phải lớn hơn 0");
                tb.ShowDialog();
                return;
            }    
            foreach (SanPham c in listNH)
            {
                if (spNhap.TenSP == c.TenSP)
                {
                    MessageBox.Show("Đã có sản phẩm này", "Thông báo");
                    return;
                }
            }
            this.gvListDonNhap.Rows.Add(spNhap.TenSP, spNhap.SoLuong, spNhap.GiaNhap);
            txtSoLuong.Text = "0";
            txtGiaNhap.Text = "";
            txtMaSP.Text = "";
            listNH.Add(spNhap);
        }

        private void btnTaoDonNhap_Click(object sender, EventArgs e)
        {
            DonNhap dn = new DonNhap();
            dn.MaDN = txtMaDN.Text;
            dn.MaNV = taiKhoan.TenTK;
            dn.MaNCC = int.Parse(cbNCC.SelectedValue.ToString());
            dn.NgayNhap = DateTime.Now.Date;
            dn.ThoiGian = new TimeSpan(DateTime.Now.Hour, DateTime.Now.Minute, DateTime.Now.Second);
            dn.TongGT = dnDao.TinhTienGoc(listNH) + dnDao.TinhThue(listNH);
            if (txtMaDN.Text == "")
            {
                ThongBao tb = new ThongBao("Hãy nhập mã đơn nhập");
                tb.ShowDialog();
                return;
            }
            if (dnDao.ThemDonNhap(dn, listNH))
            {
                FrmDonNhap frm = new FrmDonNhap(dn, listNH, cbNCC.Text);
                frm.ShowDialog();
            }
            else
            {
                ThongBao tb = new ThongBao("Tạo đơn nhập thất bại");
                tb.ShowDialog();
            }
            gvSanPhamTabNhapHang.DataSource = sanPhamDAO.GetListSanPham();
        }

        private void btnTaoMoi_Click(object sender, EventArgs e)
        {
            gvSanPhamTabNhapHang.DataSource = sanPhamDAO.GetListSanPham();
            txtSoLuong.Text = "0";
            txtGiaNhap.Text = "";
            txtMaSP.Text = "";
            gvListDonNhap.Rows.Clear();
            listNH.Clear();
        }

        private void btnTimKiemTabDonNhap_Click(object sender, EventArgs e)
        {
            gvDonNhap.DataSource = dnDao.TimKiemDonNhap(dateTimePickerNgayNH1.Value, dateTimePickerNgayNH2.Value);
            gvCTNhapHang.DataSource = dnDao.TimKiemCTDonNhap(dateTimePickerNgayNH1.Value, dateTimePickerNgayNH2.Value);
        }

        private void btnThemNCC_Click(object sender, EventArgs e)
        {
            NCC ncc = new NCC(-1, txtTenNCC.Text, txtSDTTabNCC.Text, txtDiaChi.Text);
            if(sanPhamDAO.ThemNCC(ncc) == true)
            {
                ThongBao tb = new ThongBao("Thêm NCC thành công");
                tb.ShowDialog();
                gvNCC.DataSource = sanPhamDAO.LayDanhSachNCC();
            }
        }

        private void btnThenNSX_Click(object sender, EventArgs e)
        {
            NSX nsx = new NSX(-1, txtTenNSX.Text, txtSDT_NSX.Text, txtDiaChiNSX.Text);
            if (sanPhamDAO.ThemNSX(nsx) == true)
            {
                ThongBao tb = new ThongBao("Thêm NSX thành công");
                tb.ShowDialog();
                gvNSX.DataSource = sanPhamDAO.LayDanhSachNSX();
            }
        }
    }
}
