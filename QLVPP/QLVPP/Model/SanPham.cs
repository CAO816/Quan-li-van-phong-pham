using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QLVPP.Model
{
    public class SanPham
    {
        private string _maSP;
        private string _tenSP;
        private string _donViTinh;
        private float _giaBan;
        private float _giaNhap;
        private int _soLuong;
        private string _maLoaiSP;
        private int _maNSX;

        public SanPham()
        {
        }

        public SanPham(string maSP, string tenSP, string donViTinh, float giaBan, float giaNhap, int soLuong, string maLoaiSP, int maNSX)
        {
            _maSP = maSP;
            _tenSP = tenSP;
            _donViTinh = donViTinh;
            _giaBan = giaBan;
            _giaNhap = giaNhap;
            _soLuong = soLuong;
            _maLoaiSP = maLoaiSP;
            _maNSX = maNSX;
        }

        public string MaSP { get => _maSP; set => _maSP = value; }
        public string TenSP { get => _tenSP; set => _tenSP = value; }
        public string DonViTinh { get => _donViTinh; set => _donViTinh = value; }
        public float GiaBan { get => _giaBan; set => _giaBan = value; }
        public float GiaNhap { get => _giaNhap; set => _giaNhap = value; }
        public int SoLuong { get => _soLuong; set => _soLuong = value; }
        public string MaLoaiSP { get => _maLoaiSP; set => _maLoaiSP = value; }
        public int MaNSX { get => _maNSX; set => _maNSX = value; }
    }
}
