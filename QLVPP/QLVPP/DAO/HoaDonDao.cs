using QLVPP.Form;
using QLVPP.Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using System.Windows;

namespace QLVPP.DAO
{
    public class HoaDonDao
    {
        DBConnection conn = new DBConnection();
        public float TinhPhanTramUuDai(string maKH)
        {
            if (maKH == null)
            {
                return 0;
            }
            conn.OpenConnection();
            SqlCommand cmd = new SqlCommand("Select dbo.FC_TinhPhanTramUuDai(@maKH)", conn.GetConnection());
            cmd.Parameters.AddWithValue("@maKH", maKH);
            float phanTram = (float)Convert.ToDouble(cmd.ExecuteScalar().ToString());
            conn.CloseConnection();
            return phanTram;
        }
        public float TinhThue(List<SanPham> list)
        {
            float sum = 0;
            foreach(SanPham c in list)
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
        public bool ThemHoaDon(HoaDon hd, List<SanPham> list)
        {
            SqlCommand command = new SqlCommand("proc_TaoHoaDon", conn.GetConnection());
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.Add("@MaHD", SqlDbType.VarChar).Value = hd.MaHD;
            command.Parameters.Add("@NgayLap", SqlDbType.Date).Value = hd.NgayLap.Date;
            command.Parameters.Add("@ThoiGian", SqlDbType.Time).Value = hd.ThoiGian;
            command.Parameters.Add("@TongThanhToan", SqlDbType.Float).Value = hd.TongThanhToan;
            command.Parameters.Add("@MaNV", SqlDbType.VarChar).Value = hd.MaNV;
            if (hd.MaTV == null)
            {
                command.Parameters.Add("@MaTV", SqlDbType.VarChar).Value = (object)DBNull.Value;
            }
            else
            {
                command.Parameters.Add("@MaTV", SqlDbType.VarChar).Value = hd.MaTV;
            }
            conn.OpenConnection();
            try
            {
                if (command.ExecuteNonQuery() != 0)
                {
                    foreach (SanPham s in list)
                    {
                        command = new SqlCommand("proc_AddCTHoaDon", conn.GetConnection());
                        command.CommandType = CommandType.StoredProcedure;
                        command.Parameters.Add("@MaHD", SqlDbType.VarChar).Value = hd.MaHD;
                        command.Parameters.Add("@MaSP", SqlDbType.VarChar).Value = s.MaSP;
                        command.Parameters.Add("@SoLuong", SqlDbType.Int).Value = s.SoLuong;
                        command.Parameters.Add("@DonGia", SqlDbType.Float).Value = s.GiaBan;
                        command.Parameters.Add("@ThanhTien", SqlDbType.VarChar).Value = s.SoLuong * s.GiaBan;
                        command.Parameters.Add("@GiaNhap", SqlDbType.Float).Value = s.GiaNhap;
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
                ThongBao tb = new ThongBao("Thất bại: " + ex.Message);
                tb.ShowDialog();
                return false;
            }
        }
        public DataTable TimHoaDonTheoNgay(DateTime ngayBD, DateTime ngayKT)
        {
            DataTable dt = new DataTable();
            string sqlStr = String.Format("exec TimKiemHoaDon @NgayBatDau='" + ngayBD + "',@NgayKetThuc='" + ngayKT + "'");
            SqlCommand cmd = new SqlCommand(sqlStr, conn.GetConnection());
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            adapter.Fill(dt);
            return dt;
        }
        public DataTable LayTatCaHoaDon()
        {
            string sqlStr = String.Format("Select * from V_HoaDon");
            DataTable dt = conn.GetTable(sqlStr);
            return dt;
        }
    }
}
