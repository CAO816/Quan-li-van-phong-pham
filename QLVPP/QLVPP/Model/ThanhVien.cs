using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QLVPP.Model
{
    public class ThanhVien
    {
        private string _maTV;
        private string _hoTV;
        private string _tenTV;
        private string _sDT;
        private string _diaChi;
        private int _diemTichLuy;
        private string _maLoaiTV;

        public ThanhVien()
        {
        }

        public ThanhVien(string maTV, string hoTV, string tenTV, string sDT, string diaChi, int diemTichLuy, string maLoaiTV)
        {
            _maTV = maTV;
            _hoTV = hoTV;
            _tenTV = tenTV;
            _sDT = sDT;
            _diaChi = diaChi;
            _diemTichLuy = diemTichLuy;
            _maLoaiTV = maLoaiTV;
        }

        public string MaTV { get => _maTV; set => _maTV = value; }
        public string HoTV { get => _hoTV; set => _hoTV = value; }
        public string TenTV { get => _tenTV; set => _tenTV = value; }
        public string SDT { get => _sDT; set => _sDT = value; }
        public string DiaChi { get => _diaChi; set => _diaChi = value; }
        public int DiemTichLuy { get => _diemTichLuy; set => _diemTichLuy = value; }
        public string MaLoaiTV { get => _maLoaiTV; set => _maLoaiTV = value; }
    }
}
