using QLVPP.Form;
using QLVPP.Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Documents;

namespace QLVPP.DAO
{
    public class SanPhamDAO
    {
        DBConnection conn = new DBConnection();
        public DataTable GetListSanPhamSapXepTheoTen()
        {
            DataTable dt = new DataTable();
            string sqlStr = String.Format("SELECT MaSP, TenSP, DonViTinh, GiaBan, GiaNhap, SoLuong, MaLoaiSP, MaNSX FROM SANPHAM WHERE SoLuong > 0 ORDER BY TenSP");
            dt = conn.GetTable(sqlStr);
            return dt;
        }
        public DataTable GetListSanPham()
        {
            DataTable dt = new DataTable();
            string sqlStr = $"Select * from V_SanPham";
            dt = conn.GetTable(sqlStr);
            return dt;
        }
        public DataTable TimKiemSanPhamSoLuongLonHon0(string str)
        {
            // So luong > 0.
            conn.OpenConnection();
            DataTable dt = new DataTable();
            string sqlStr = String.Format("Select * from dbo.FC_TimKiemSanPhamSoLuongLonHon0(@str)");
            SqlCommand cmd = new SqlCommand(sqlStr, conn.GetConnection());
            cmd.Parameters.AddWithValue("@str", str);
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            adapter.Fill(dt);
            conn.CloseConnection();
            return dt;
        }
        public DataTable TimKiemSanPham(string str)
        {
            conn.OpenConnection();
            DataTable dt = new DataTable();
            string sqlStr = String.Format("Select * from dbo.FC_TIMKIEMSANPHAM(@str)");
            SqlCommand cmd = new SqlCommand(sqlStr, conn.GetConnection());
            cmd.Parameters.AddWithValue("@str", str);
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            adapter.Fill(dt);
            conn.CloseConnection();
            return dt;
        }
        public SanPham GetSanPham(string maSP)
        {
            string sqlStr = $"Select * From SANPHAM where MaSP = '{maSP}'";
            DataTable dt = conn.GetTable(sqlStr);
            SanPham sp = new SanPham();
            if (dt != null)
            {
                sp.MaSP = dt.Rows[0]["MaSP"].ToString();
                sp.TenSP = dt.Rows[0]["TenSP"].ToString();
                sp.DonViTinh = dt.Rows[0]["DonViTinh"].ToString();
                sp.GiaBan = int.Parse(dt.Rows[0]["GiaBan"].ToString());
                sp.GiaNhap = int.Parse(dt.Rows[0]["GiaNhap"].ToString());
                sp.SoLuong = int.Parse(dt.Rows[0]["SoLuong"].ToString());
                sp.MaLoaiSP = dt.Rows[0]["MaLoaiSP"].ToString();
                sp.MaNSX = int.Parse(dt.Rows[0]["MaNSX"].ToString());
            }
            return sp;
        }
        public DataTable LayDanhSachLoaiSanPham()
        {
            DataTable dt = new DataTable();
            string sqlStr = String.Format("Select * from LOAISANPHAM");
            dt = conn.GetTable(sqlStr);
            return dt;
        }
        public bool ThemSanPham(SanPham sp)
        {
            try
            {
                SqlCommand command = new SqlCommand("proc_ThemSanPham", conn.GetConnection());
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.Add("@MaSP", SqlDbType.VarChar).Value = sp.MaSP;
                command.Parameters.Add("@TenSP", SqlDbType.NVarChar).Value = sp.TenSP;
                command.Parameters.Add("@DonViTinh", SqlDbType.NVarChar).Value = sp.DonViTinh;
                command.Parameters.Add("@GiaBan", SqlDbType.Int).Value = sp.GiaBan;
                command.Parameters.Add("@GiaNhap", SqlDbType.Int).Value = sp.GiaNhap;
                command.Parameters.Add("@SoLuong", SqlDbType.Int).Value = sp.SoLuong;
                command.Parameters.Add("@MaLoaiSP", SqlDbType.VarChar).Value = sp.MaLoaiSP;
                if (sp.MaNSX == -1)
                {
                    command.Parameters.Add("@MaNSX", SqlDbType.VarChar).Value = (object)DBNull.Value;
                }
                else
                {
                    command.Parameters.Add("@MaNSX", SqlDbType.VarChar).Value = sp.MaNSX;
                }
                conn.OpenConnection();
                if (command.ExecuteNonQuery() != 0)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch (SqlException ex)
            {
                ThongBao tb = new ThongBao(ex.Message);
                tb.ShowDialog();
                return false;
            }
            finally
            {
                conn.CloseConnection();
            }
        }
        public bool SuaSanPham(SanPham sp)
        {
            try
            {
                SqlCommand command = new SqlCommand("proc_SuaSanPham", conn.GetConnection());
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.Add("@MaSP", SqlDbType.VarChar).Value = sp.MaSP;
                command.Parameters.Add("@TenSP", SqlDbType.NVarChar).Value = sp.TenSP;
                command.Parameters.Add("@DonViTinh", SqlDbType.NVarChar).Value = sp.DonViTinh;
                command.Parameters.Add("@GiaBan", SqlDbType.Int).Value = sp.GiaBan;
                command.Parameters.Add("@GiaNhap", SqlDbType.Int).Value = sp.GiaNhap;
                command.Parameters.Add("@SoLuong", SqlDbType.Int).Value = sp.SoLuong;
                command.Parameters.Add("@MaLoaiSP", SqlDbType.VarChar).Value = sp.MaLoaiSP;
                if (sp.MaNSX == -1)
                {
                    command.Parameters.Add("@MaNSX", SqlDbType.VarChar).Value = (object)DBNull.Value;
                }
                else
                {
                    command.Parameters.Add("@MaNSX", SqlDbType.VarChar).Value = sp.MaNSX;
                }
                conn.OpenConnection();
                if (command.ExecuteNonQuery() != 0)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch (SqlException ex)
            {
                ThongBao tb = new ThongBao(ex.Message);
                tb.ShowDialog();
                return false;
            }
            finally
            {
                conn.CloseConnection();
            }
        }
        public DataTable LayDanhSachNCC()
        {
            DataTable dt = new DataTable();
            string sqlStr = $"Select * from V_NCC";
            dt = conn.GetTable(sqlStr);
            return dt;
        }
        public DataTable LayDanhSachNSX()
        {
            DataTable dt = new DataTable();
            string sqlStr = $"Select * from V_NSX";
            dt = conn.GetTable(sqlStr);
            return dt;
        }
        public bool ThemNCC(NCC ncc)
        {
            try
            {
                SqlCommand command = new SqlCommand("proc_ThemNCC", conn.GetConnection());
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.Add("@TenNCC", SqlDbType.NVarChar).Value = ncc.TenNCC;
                if (ncc.SDT == "")
                {
                    command.Parameters.Add("@SDT", SqlDbType.VarChar).Value = (object)DBNull.Value;
                }
                else
                {
                    command.Parameters.Add("@SDT", SqlDbType.VarChar).Value = ncc.SDT;
                }
                if (ncc.DiaChi == "")
                {
                    command.Parameters.Add("@DiaChi", SqlDbType.NVarChar).Value = (object)DBNull.Value;
                }
                else
                {
                    command.Parameters.Add("@DiaChi", SqlDbType.NVarChar).Value = ncc.DiaChi;
                }
                conn.OpenConnection();
                if (command.ExecuteNonQuery() != 0)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch (SqlException e)
            {
                ThongBao tb = new ThongBao("Thất bại: " + e.Message);
                tb.ShowDialog();
                return false;
            }
            finally
            {
                conn.CloseConnection();
            }
        }
        public bool ThemNSX(NSX nsx)
        {
            try
            {
                SqlCommand command = new SqlCommand("proc_ThemNSX", conn.GetConnection());
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.Add("@TenNSX", SqlDbType.NVarChar).Value = nsx.TenNSX;
                if (nsx.SDT == "")
                {
                    command.Parameters.Add("@SDT", SqlDbType.VarChar).Value = (object)DBNull.Value;
                }
                else
                {
                    command.Parameters.Add("@SDT", SqlDbType.VarChar).Value = nsx.SDT;
                }
                if (nsx.DiaChi == "")
                {
                    command.Parameters.Add("@DiaChi", SqlDbType.NVarChar).Value = (object)DBNull.Value;
                }
                else
                {
                    command.Parameters.Add("@DiaChi", SqlDbType.NVarChar).Value = nsx.DiaChi;
                }
                conn.OpenConnection();
                if (command.ExecuteNonQuery() != 0)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch (SqlException e)
            {
                ThongBao tb = new ThongBao("Thất bại: " + e.Message);
                tb.ShowDialog();
                return false;
            }
            finally
            {
                conn.CloseConnection();
            }
        }
    }
}
