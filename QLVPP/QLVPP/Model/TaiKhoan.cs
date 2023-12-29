using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QLVPP.Model
{
    public class TaiKhoan
    {
        private string _tenTK;
        private string _matKhau;
        private int _loaiNhanVien;
        public TaiKhoan()
        {
        }

        public TaiKhoan(string tenTK, string matKhau, int loaiNhanVien)
        {
            _tenTK = tenTK;
            _matKhau = matKhau;
            _loaiNhanVien = loaiNhanVien;
        }

        public string TenTK { get => _tenTK; set => _tenTK = value; }
        public string MatKhau { get => _matKhau; set => _matKhau = value; }
        public int LoaiNhanVien { get => _loaiNhanVien; set => _loaiNhanVien = value; }
    }
}
