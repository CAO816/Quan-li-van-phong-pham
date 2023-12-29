using QLVPP.Model;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QLVPP.DAO
{
    public class TaiKhoanDAO
    {
        DBConnection conn = new DBConnection();
        public bool checkDangNhap(TaiKhoan taiKhoan)
        {
            conn.openConnectionAdmin();
            SqlCommand cmd = new SqlCommand("Select dbo.checkLogin(@tk, @pw)", conn.getConnectionAdmin());
            cmd.Parameters.AddWithValue("@tk", taiKhoan.TenTK);
            cmd.Parameters.AddWithValue("@pw", taiKhoan.MatKhau);
            bool count = (bool)cmd.ExecuteScalar();
            conn.closeConnectionAdmin();
            return count;
        }
        public int getLoaiNhanVien(string tk)
        {
            conn.openConnectionAdmin();
            SqlCommand cmd = new SqlCommand("Select dbo.getLoaiNhanVien(@tk)", conn.getConnectionAdmin());
            cmd.Parameters.AddWithValue("@tk", tk);
            int count = (int)cmd.ExecuteScalar();
            conn.closeConnectionAdmin();
            return count;   
        }
    }
}
