using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QLVPP.Model
{
    public class KhuVuc
    {
        private string _maKV;
        private string _tenKV;
        private string _chiTietKhuVuc;

        public KhuVuc()
        {
        }

        public KhuVuc(string maKV, string tenKV, string chiTietKhuVuc)
        {
            _maKV = maKV;
            _tenKV = tenKV;
            _chiTietKhuVuc = chiTietKhuVuc;
        }

        public string MaKV { get => _maKV; set => _maKV = value; }
        public string TenKV { get => _tenKV; set => _tenKV = value; }
        public string ChiTietKhuVuc { get => _chiTietKhuVuc; set => _chiTietKhuVuc = value; }
    }
}
