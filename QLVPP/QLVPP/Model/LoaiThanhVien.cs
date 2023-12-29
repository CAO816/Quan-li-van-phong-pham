using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QLVPP.Model
{
    public class LoaiThanhVien
    {
        private string _maLoaiTV;
        private string _tenLoaiTV;
        private string _phanTramUuDai;
        private string _gTUuDaiToiDa;

        public LoaiThanhVien()
        {
        }

        public LoaiThanhVien(string maLoaiTV, string tenLoaiTV, string phanTramUuDai, string gTUuDaiToiDa)
        {
            _maLoaiTV = maLoaiTV;
            _tenLoaiTV = tenLoaiTV;
            _phanTramUuDai = phanTramUuDai;
            _gTUuDaiToiDa = gTUuDaiToiDa;
        }

        public string MaLoaiTV { get => _maLoaiTV; set => _maLoaiTV = value; }
        public string TenLoaiTV { get => _tenLoaiTV; set => _tenLoaiTV = value; }
        public string PhanTramUuDai { get => _phanTramUuDai; set => _phanTramUuDai = value; }
        public string GTUuDaiToiDa { get => _gTUuDaiToiDa; set => _gTUuDaiToiDa = value; }
    }
}
