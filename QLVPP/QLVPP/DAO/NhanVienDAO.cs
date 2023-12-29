using QLVPP.Form;
using QLVPP.Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QLVPP.DAO
{
    public class NhanVienDAO
    {
        DBConnection conn = new DBConnection();
        public DataTable LayDanhSachNhanVien()
        {
            DataTable dt = new DataTable();
            string sqlStr = $"Select * from V_DanhSachNhanVien";
            dt = conn.GetTable(sqlStr);
            return dt;
        }
        public DataTable TimKiemNhanVien(string key)
        {
            conn.OpenConnection();
            DataTable dt = new DataTable();
            string sqlStr = $"select * from dbo.fn_TimKiemNhanVien(@keyword)";
            SqlCommand command = new SqlCommand(sqlStr, conn.GetConnection());
            command.Parameters.AddWithValue("@keyword", key);
            SqlDataAdapter adapter = new SqlDataAdapter(command);
            adapter.Fill(dt);
            conn.CloseConnection();
            return dt; 
        }
        public void ThemNhanVien(NhanVien nv)
        {
            try
            {
                conn.OpenConnection();
                SqlCommand command = new SqlCommand("proc_ThemNhanVien", conn.GetConnection());
                command.Parameters.Clear();
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.Add("@manv", SqlDbType.VarChar).Value = nv.MaNV;
                command.Parameters.Add("@honv", SqlDbType.NVarChar).Value = nv.HoNV;
                command.Parameters.Add("@tennv", SqlDbType.NVarChar).Value = nv.TenNV;
                command.Parameters.Add("@ngaysinh", SqlDbType.Date).Value = nv.NgaySinh.Date;
                command.Parameters.Add("@gioitinh", SqlDbType.NVarChar).Value = nv.GioiTinh;
                command.Parameters.Add("@diachi", SqlDbType.NVarChar).Value = nv.DiaChi;
                command.Parameters.Add("@sdt", SqlDbType.VarChar).Value = nv.SDT;
                command.Parameters.Add("@ngaytd", SqlDbType.Date).Value = nv.NgayTD.Date;
                command.Parameters.Add("@hesoluong", SqlDbType.Float).Value = nv.HeSoLuong;
                command.Parameters.Add("@macv", SqlDbType.VarChar).Value = nv.MaCV;
                command.ExecuteNonQuery();
                ThongBao tb = new ThongBao("Thêm nhân viên thành công");
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
        public DataTable LayDanhSachCongViec()
        {
            DataTable dt = new DataTable();
            string sqlStr = $"Select * from CONGVIEC";
            dt = conn.GetTable(sqlStr);
            return dt;
        }
        public NhanVien GetNhanVien(string maNV)
        {
            NhanVien nv = new NhanVien();
            string sqlStr = $"Select * from NHANVIEN where MaNV = '{maNV}'";
            DataTable dt = conn.GetTable(sqlStr);
            if (dt.Rows.Count > 0)
            {
                DataRow dr = dt.Rows[0];
                nv.MaNV = dr[0].ToString();
                nv.HoNV = dr[1].ToString();
                nv.TenNV = dr[2].ToString();
                nv.NgaySinh = DateTime.Parse(dr[3].ToString()).Date;
                nv.GioiTinh = dr[4].ToString();
                nv.DiaChi = dr[5].ToString();
                nv.SDT = dr[6].ToString();
                nv.NgayTD = DateTime.Parse(dr[7].ToString()).Date;
                nv.HeSoLuong = float.Parse(dr[8].ToString());
                nv.MaCV = dr[9].ToString();
            }
            return nv;
        }
        public void XoaNhanVien(NhanVien nv)
        {
            try
            {
                conn.OpenConnection();
                SqlCommand command = new SqlCommand("proc_XoaNhanVien", conn.GetConnection());
                command.Parameters.Clear();
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.Add("@MaNV", SqlDbType.VarChar).Value = nv.MaNV;
                command.ExecuteNonQuery();
                ThongBao tb = new ThongBao("Xóa nhân viên thành công");
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
        public void SuaNhanVien(NhanVien nv)
        {
            try
            {
                conn.OpenConnection();
                SqlCommand command = new SqlCommand("proc_SuaNhanVien", conn.GetConnection());
                command.Parameters.Clear();
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.Add("@manv", SqlDbType.VarChar).Value = nv.MaNV;
                command.Parameters.Add("@honv", SqlDbType.NVarChar).Value = nv.HoNV;
                command.Parameters.Add("@tennv", SqlDbType.NVarChar).Value = nv.TenNV;
                command.Parameters.Add("@ngaysinh", SqlDbType.Date).Value = nv.NgaySinh.Date;
                command.Parameters.Add("@gioitinh", SqlDbType.NVarChar).Value = nv.GioiTinh;
                command.Parameters.Add("@diachi", SqlDbType.NVarChar).Value = nv.DiaChi;
                command.Parameters.Add("@sdt", SqlDbType.VarChar).Value = nv.SDT;
                command.Parameters.Add("@ngaytd", SqlDbType.Date).Value = nv.NgayTD.Date;
                command.Parameters.Add("@hesoluong", SqlDbType.Float).Value = nv.HeSoLuong;
                command.Parameters.Add("@macv", SqlDbType.VarChar).Value = nv.MaCV;
                command.ExecuteNonQuery();
                ThongBao tb = new ThongBao("Sửa thông tin nhân viên thành công");
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
        public DataTable LayDanhSachNhanVienHoTen()
        {
            DataTable dt = new DataTable();
            string sqlStr = $"Select MaNV, HoNV + ' ' + TenNV + ' - ' + TenCV as HoTen from V_DanhSachNhanVien";
            dt = conn.GetTable(sqlStr);
            return dt;
        }
        public void PhanCa(string maNV, string maCa, DateTime ngay)
        {
            try
            {
                conn.OpenConnection();
                SqlCommand command = new SqlCommand("proc_PhanCa", conn.GetConnection());
                command.Parameters.Clear();
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.Add("@manv", SqlDbType.VarChar).Value = maNV;
                command.Parameters.Add("@maca", SqlDbType.VarChar).Value = maCa;
                command.Parameters.Add("@ngay", SqlDbType.Date).Value = ngay.Date;
                if (command.ExecuteNonQuery() != 0 )
                {
                    ThongBao tb = new ThongBao("Phân ca thành công");
                    tb.ShowDialog();
                }
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
        public DataTable DanhSachCaLamViec()
        {
            DataTable dt = new DataTable();
            string sqlStr = $"Select * from V_CaLamViecTheoTuan";
            dt = conn.GetTable(sqlStr);
            return dt;
        }
        public DataTable DanhSachPhanCa()
        {
            DataTable dt = new DataTable();
            string sqlStr = $"Select * from V_BangPhanCaTheoTuan";
            dt = conn.GetTable(sqlStr);
            return dt;
        }
        public DataTable BangLuongThang(int thang, int nam)
        {
            conn.OpenConnection();
            DataTable dt = new DataTable();
            SqlCommand cmd = new SqlCommand("select * from dbo.fc_TinhLuongNhanVien(@thang, @nam)", conn.GetConnection());
            cmd.Parameters.AddWithValue("@thang", thang);
            cmd.Parameters.AddWithValue("@nam", nam);
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            adapter.Fill(dt);
            conn.CloseConnection();
            return dt;
        }
    }
}
