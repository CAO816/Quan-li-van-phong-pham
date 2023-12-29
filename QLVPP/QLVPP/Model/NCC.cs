using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QLVPP.Model
{
    public class NCC
    {
        private int _maNCC;
        private string _tenNCC;
        private string _sDT;
        private string _diaChi;

        public NCC()
        {
        }

        public NCC(int maNCC, string tenNCC, string sDT, string diaChi)
        {
            _maNCC = maNCC;
            _tenNCC = tenNCC;
            _sDT = sDT;
            _diaChi = diaChi;
        }

        public int MaNCC { get => _maNCC; set => _maNCC = value; }
        public string TenNCC { get => _tenNCC; set => _tenNCC = value; }
        public string SDT { get => _sDT; set => _sDT = value; }
        public string DiaChi { get => _diaChi; set => _diaChi = value; }
    }
}
