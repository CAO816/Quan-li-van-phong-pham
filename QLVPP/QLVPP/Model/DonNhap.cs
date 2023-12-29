using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QLVPP.Model
{
    public class DonNhap
    {
        private string _maDN;
        private DateTime _ngayNhap;
        private TimeSpan _thoiGian;
        private float _tongGT;
        private int _maNCC;
        private string _maNV;

        public DonNhap()
        {
        }

        public DonNhap(string maDN, DateTime ngayNhap, TimeSpan thoiGian, float tongGT, int maNCC, string maNV)
        {
            _maDN = maDN;
            _ngayNhap = ngayNhap;
            _thoiGian = thoiGian;
            _tongGT = tongGT;
            _maNCC = maNCC;
            _maNV = maNV;
        }

        public string MaDN { get => _maDN; set => _maDN = value; }
        public DateTime NgayNhap { get => _ngayNhap; set => _ngayNhap = value; }
        public TimeSpan ThoiGian { get => _thoiGian; set => _thoiGian = value; }
        public float TongGT { get => _tongGT; set => _tongGT = value; }
        public int MaNCC { get => _maNCC; set => _maNCC = value; }
        public string MaNV { get => _maNV; set => _maNV = value; }
    }
}
