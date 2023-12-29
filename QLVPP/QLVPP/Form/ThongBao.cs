using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace QLVPP.Form
{
    public partial class ThongBao : System.Windows.Forms.Form
    {
        private string thongBao;
        public ThongBao(string thongBao)
        {
            this.thongBao = thongBao;
            InitializeComponent();
        }

        private void btnOk_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void ThongBao_Load(object sender, EventArgs e)
        {
            richTxtThongBao.Text = thongBao;
        }
    }
}
