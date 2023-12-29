using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QLVPP.Model
{
    public class HoaDon
    {
        private string _maHD;
        private DateTime _ngayLap;
        private TimeSpan _thoiGian;
        private float _tongThanhToan;
        private string _maNV;
        private string _maTV;

        public HoaDon()
        {
        }

        public HoaDon(string maHD, DateTime ngayLap, TimeSpan thoiGian, float tongThanhToan, string maNV, string maTV)
        {
            _maHD = maHD;
            _ngayLap = ngayLap;
            _thoiGian = thoiGian;
            _tongThanhToan = tongThanhToan;
            _maNV = maNV;
            _maTV = maTV;
        }

        public string MaHD { get => _maHD; set => _maHD = value; }
        public DateTime NgayLap { get => _ngayLap; set => _ngayLap = value; }
        public TimeSpan ThoiGian { get => _thoiGian; set => _thoiGian = value; }
        public float TongThanhToan { get => _tongThanhToan; set => _tongThanhToan = value; }
        public string MaNV { get => _maNV; set => _maNV = value; }
        public string MaTV { get => _maTV; set => _maTV = value; }
    }
}
