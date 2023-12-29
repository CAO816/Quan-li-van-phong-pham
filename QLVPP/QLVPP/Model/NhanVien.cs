using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QLVPP.Model
{
    public class NhanVien
    {
        private string _maNV;
        private string _hoNV;
        private string _tenNV;
        private DateTime _ngaySinh;
        private string _gioiTinh;
        private string _diaChi;
        private string _sDT;
        private DateTime _ngayTD;
        private double _heSoLuong;
        private string _maCV;

        public NhanVien()
        {
        }

        public NhanVien(string maNV, string hoNV, string tenNV, DateTime ngaySinh, string gioiTinh, string diaChi, string sDT, DateTime ngayTD, double heSoLuong, string maCV)
        {
            _maNV = maNV;
            _hoNV = hoNV;
            _tenNV = tenNV;
            _ngaySinh = ngaySinh;
            _gioiTinh = gioiTinh;
            _diaChi = diaChi;
            _sDT = sDT;
            _ngayTD = ngayTD;
            _heSoLuong = heSoLuong;
            _maCV = maCV;
        }

        public string MaNV { get => _maNV; set => _maNV = value; }
        public string HoNV { get => _hoNV; set => _hoNV = value; }
        public string TenNV { get => _tenNV; set => _tenNV = value; }
        public DateTime NgaySinh { get => _ngaySinh; set => _ngaySinh = value; }
        public string GioiTinh { get => _gioiTinh; set => _gioiTinh = value; }
        public string DiaChi { get => _diaChi; set => _diaChi = value; }
        public string SDT { get => _sDT; set => _sDT = value; }
        public DateTime NgayTD { get => _ngayTD; set => _ngayTD = value; }
        public double HeSoLuong { get => _heSoLuong; set => _heSoLuong = value; }
        public string MaCV { get => _maCV; set => _maCV = value; }
    }
}
