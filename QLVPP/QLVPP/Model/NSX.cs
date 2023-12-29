using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QLVPP.Model
{
    public class NSX
    {
        private int _maNSX;
        private string _tenNSX;
        private string _sDT;
        private string _diaChi;

        public NSX()
        {
        }

        public NSX(int maNSX, string tenNSX, string sDT, string diaChi)
        {
            _maNSX = maNSX;
            _tenNSX = tenNSX;
            _sDT = sDT;
            _diaChi = diaChi;
        }

        public int MaNSX { get => _maNSX; set => _maNSX = value; }
        public string TenNSX { get => _tenNSX; set => _tenNSX = value; }
        public string SDT { get => _sDT; set => _sDT = value; }
        public string DiaChi { get => _diaChi; set => _diaChi = value; }
    }
}
