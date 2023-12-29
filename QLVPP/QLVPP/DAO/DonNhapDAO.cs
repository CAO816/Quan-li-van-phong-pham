using QLVPP.Model;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Drawing.Printing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using QLVPP.Form;

namespace QLVPP.DAO
{
    public class DonNhapDAO
    {
        DBConnection conn = new DBConnection();
        public float TinhThue(List<SanPham> list)
        {
            float sum = 0;
            foreach (SanPham c in list)
            {
                sum = sum + c.GiaNhap * c.SoLuong;
            }
            return sum * 5 / 100;
        }
        public float TinhTienGoc(List<SanPham> list)
        {
            float sum = 0;
            foreach (SanPham c in list)
            {
                sum = sum + c.GiaBan * c.SoLuong;
            }
            return sum;
        }
        public bool ThemDonNhap(DonNhap dn, List<SanPham> list)
        {
            SqlCommand command = new SqlCommand("proc_ThemDonNhap", conn.GetConnection());
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.Add("@madn", SqlDbType.VarChar).Value = dn.MaDN;
            command.Parameters.Add("@ngaynhap", SqlDbType.Date).Value = dn.NgayNhap.Date;
            command.Parameters.Add("@thoigian", SqlDbType.Time).Value = dn.ThoiGian;
            command.Parameters.Add("@tonggt", SqlDbType.Float).Value = dn.TongGT;
            command.Parameters.Add("@mancc", SqlDbType.VarChar).Value = dn.MaNCC;
            command.Parameters.Add("@manv", SqlDbType.VarChar).Value = dn.MaNV;
            conn.OpenConnection();
            try
            {
                if (command.ExecuteNonQuery() != 0)
                {
                    foreach (SanPham s in list)
                    {
                        command = new SqlCommand("proc_ThemCTDonNhap", conn.GetConnection());
                        command.CommandType = CommandType.StoredProcedure;
                        command.Parameters.Add("@MaSP", SqlDbType.VarChar).Value = s.MaSP;
                        command.Parameters.Add("@MaDN", SqlDbType.VarChar).Value = dn.MaDN;
                        command.Parameters.Add("@SoLuong", SqlDbType.Int).Value = s.SoLuong;
                        command.Parameters.Add("@DonGia", SqlDbType.Float).Value = s.GiaNhap;
                        command.Parameters.Add("@ThanhTien", SqlDbType.VarChar).Value = s.SoLuong * s.GiaBan;
                        command.ExecuteNonQuery();
                    }
                    conn.CloseConnection();
                    return true;
                }
                else
                {
                    conn.CloseConnection();
                    return false;
                }
            }
            catch (SqlException ex)
            {
                ThongBao tb = new ThongBao("Thất bại: "+ ex.Message);
                tb.ShowDialog();
                return false;
            }
        }
        public DataTable TimKiemDonNhap(DateTime ngayBD, DateTime ngayKT)
        {
            conn.OpenConnection();
            DataTable dt = new DataTable();
            SqlCommand command = new SqlCommand("proc_TimKiemDonNhap", conn.GetConnection());
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.Add("@NgayBatDau", SqlDbType.Date).Value = ngayBD.Date;
            command.Parameters.Add("@NgayKetThuc", SqlDbType.Date).Value = ngayKT.Date;
            SqlDataAdapter adapter = new SqlDataAdapter(command);
            adapter.Fill(dt);
            conn.CloseConnection();
            return dt;
        }
        public DataTable TimKiemCTDonNhap(DateTime ngayBD, DateTime ngayKT)
        {
            conn.OpenConnection();
            DataTable dt = new DataTable();
            SqlCommand command = new SqlCommand("proc_TimKiemCTDonNhap", conn.GetConnection());
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.Add("@NgayBatDau", SqlDbType.Date).Value = ngayBD.Date;
            command.Parameters.Add("@NgayKetThuc", SqlDbType.Date).Value = ngayKT.Date;
            SqlDataAdapter adapter = new SqlDataAdapter(command);
            adapter.Fill(dt);
            conn.CloseConnection();
            return dt;
        }
    }
}
