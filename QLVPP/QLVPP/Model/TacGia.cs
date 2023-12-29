using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QLVPP.Model
{
    public class TacGia
    {
        private string _maTG;
        private string _tenTG;

        public TacGia()
        {
        }

        public TacGia(string maTG, string tenTG)
        {
            _maTG = maTG;
            _tenTG = tenTG;
        }

        public string MaTG { get => _maTG; set => _maTG = value; }
        public string TenTG { get => _tenTG; set => _tenTG = value; }
    }
}
