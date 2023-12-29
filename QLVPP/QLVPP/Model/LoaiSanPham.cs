using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QLVPP.Model
{
    public class LoaiSanPham
    {
        private string _maLoaiSP;
        private string _tenLoaiSP;
        private string _maKV;

        public LoaiSanPham()
        {
        }

        public LoaiSanPham(string maLoaiSP, string tenLoaiSP, string maKV)
        {
            _maLoaiSP = maLoaiSP;
            _tenLoaiSP = tenLoaiSP;
            _maKV = maKV;
        }

        public string MaLoaiSP { get => _maLoaiSP; set => _maLoaiSP = value; }
        public string TenLoaiSP { get => _tenLoaiSP; set => _tenLoaiSP = value; }
        public string MaKV { get => _maKV; set => _maKV = value; }
    }
}
