using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using static System.Windows.Forms.VisualStyles.VisualStyleElement.TaskbarClock;

namespace QLVPP.Model
{
    public class Ca
    {
        private string _maCa;
        private DateTime _ngay;
        private DateTime _gioBD;
        private DateTime _gioKT;

        public Ca()
        {
        }

        public Ca(string maCa, DateTime ngay, DateTime gioBD, DateTime gioKT)
        {
            _maCa = maCa;
            _ngay = ngay;
            _gioBD = gioBD;
            _gioKT = gioKT;
        }

        public string MaCa { get => _maCa; set => _maCa = value; }
        public DateTime Ngay { get => _ngay; set => _ngay = value; }
        public DateTime GioBD { get => _gioBD; set => _gioBD = value; }
        public DateTime GioKT { get => _gioKT; set => _gioKT = value; }
    }
}
