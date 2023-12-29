using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QLVPP.Model
{
    public class CongViec
    {
        private string _maCV;
        private string _tenCV;
        private int _luongCoBan;

        public CongViec()
        {
        }

        public CongViec(string maCV, string tenCV, int luongCoBan)
        {
            _maCV = maCV;
            _tenCV = tenCV;
            _luongCoBan = luongCoBan;
        }

        public string MaCV { get => _maCV; set => _maCV = value; }
        public string TenCV { get => _tenCV; set => _tenCV = value; }
        public int LuongCoBan { get => _luongCoBan; set => _luongCoBan = value; }
    }
}
