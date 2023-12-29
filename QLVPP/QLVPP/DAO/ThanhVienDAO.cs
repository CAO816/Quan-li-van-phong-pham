using QLVPP.Model;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using QLVPP.Form;

namespace QLVPP.DAO
{
    public class ThanhVienDAO
    {
        DBConnection conn = new DBConnection();
        public ThanhVien TimThanhVienTheoSDT(string sdt)
        {
            DataTable dt = new DataTable();
            string sqlStr = String.Format("Select * from dbo.FC_TimThanhVienBangSDT(@SDT)");
            SqlCommand cmd = new SqlCommand(sqlStr, conn.GetConnection());
            cmd.Parameters.AddWithValue("@SDT", sdt);
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            adapter.Fill(dt);
            ThanhVien tv = new ThanhVien();
            if (dt.Rows.Count > 0)
            {
                tv.MaTV = dt.Rows[0][0].ToString();
                tv.HoTV = dt.Rows[0][1].ToString();
                tv.TenTV = dt.Rows[0][2].ToString();
                tv.SDT = dt.Rows[0][3].ToString();
                tv.DiaChi = dt.Rows[0][4].ToString();
                tv.DiemTichLuy = int.Parse(dt.Rows[0][5].ToString());
                tv.MaLoaiTV = dt.Rows[0][6].ToString();
            }
            return tv;
        }
        public DataTable LayDanhSachThanhVien()
        {
            DataTable dt = new DataTable();
            string sqlStr = $"Select * from V_DanhSachThanhVien";
            dt = conn.GetTable(sqlStr);
            return dt;
        }
        public DataTable TimDanhSachThanhVienTheoSDT(string sdt)
        {
            DataTable dt = new DataTable();
            string sqlStr = String.Format("Select * from dbo.FC_TimThanhVienBangSDT(@SDT)");
            SqlCommand cmd = new SqlCommand(sqlStr, conn.GetConnection());
            cmd.Parameters.AddWithValue("@SDT", sdt);
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            adapter.Fill(dt);
            return dt;
        }
        public void ThemThanhVien(ThanhVien tv)
        {
            try
            {
                conn.OpenConnection();
                SqlCommand command = new SqlCommand("proc_ThemThanhVienMoi", conn.GetConnection());
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.Add("@MaTV", SqlDbType.VarChar).Value = tv.MaTV;
                command.Parameters.Add("@HoTV", SqlDbType.NVarChar).Value = tv.HoTV;
                command.Parameters.Add("@TenTV", SqlDbType.NVarChar).Value = tv.TenTV;
                command.Parameters.Add("@SDT", SqlDbType.VarChar).Value = tv.SDT;
                command.Parameters.Add("@DiaChi", SqlDbType.NVarChar).Value = tv.DiaChi;
                command.Parameters.Add("@DiemTichLuy", SqlDbType.Int).Value = tv.DiemTichLuy;
                command.Parameters.Add("@MaLoaiTV", SqlDbType.VarChar).Value = tv.MaLoaiTV;
                command.ExecuteNonQuery();
                ThongBao tb = new ThongBao("Thêm thành viên thành công");
                tb.ShowDialog();
            }
            catch (SqlException ex)
            {
                ThongBao tb = new ThongBao(ex.Message);
                tb.ShowDialog();
            }
            finally
            {
                conn.CloseConnection();
            }
        }
        public DataTable LayLoaiThanhVien()
        {
            DataTable dt = new DataTable();
            string sqlStr = $"Select * from LoaiThanhVien";
            dt = conn.GetTable(sqlStr);
            return dt;
        }
        public void SuaThanhVien(ThanhVien tv)
        {
            try
            {
                conn.OpenConnection();
                SqlCommand command = new SqlCommand("proc_SuaThanhVien", conn.GetConnection());
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.Add("@MaTV", SqlDbType.VarChar).Value = tv.MaTV;
                command.Parameters.Add("@HoTV", SqlDbType.NVarChar).Value = tv.HoTV;
                command.Parameters.Add("@TenTV", SqlDbType.NVarChar).Value = tv.TenTV;
                command.Parameters.Add("@SDT", SqlDbType.VarChar).Value = tv.SDT;
                command.Parameters.Add("@DiaChi", SqlDbType.NVarChar).Value = tv.DiaChi;
                command.Parameters.Add("@DiemTichLuy", SqlDbType.Int).Value = tv.DiemTichLuy;
                command.Parameters.Add("@MaLoaiTV", SqlDbType.VarChar).Value = tv.MaLoaiTV;
                command.ExecuteNonQuery();
                ThongBao tb = new ThongBao("Sửa thành viên thành công");
                tb.ShowDialog();
            }
            catch (SqlException ex)
            {
                ThongBao tb = new ThongBao(ex.Message);
                tb.ShowDialog();
            }
            finally
            {
                conn.CloseConnection();
            }
        }
    }
}
