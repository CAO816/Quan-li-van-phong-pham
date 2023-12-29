using QLVPP.Form;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QLVPP.DAO
{
    public class ThongKeDAO
    {
        DBConnection conn = new DBConnection();
        public float DoanhThuTheoNgay(DateTime date)
        {
            float doanhthu = 0;
            conn.OpenConnection();
            SqlCommand cmd = new SqlCommand("Select dbo.FC_DoanhThuTheoNgay(@ngay,@thang, @nam)", conn.GetConnection());
            cmd.Parameters.AddWithValue("@ngay", date.Day);
            cmd.Parameters.AddWithValue("@thang", date.Month);
            cmd.Parameters.AddWithValue("@nam", date.Year);
            try
            {
                doanhthu = (float)Convert.ToDouble(cmd.ExecuteScalar().ToString());
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
            return doanhthu;
        }
        public float DoanhThuTheoThang(DateTime date)
        {
            float doanhthu = 0;
            conn.OpenConnection();
            SqlCommand cmd = new SqlCommand("Select dbo.FC_DoanhThuTheoThang(@thang, @nam)", conn.GetConnection());
            cmd.Parameters.AddWithValue("@thang", date.Month);
            cmd.Parameters.AddWithValue("@nam", date.Year);
            try
            {
                doanhthu = (float)Convert.ToDouble(cmd.ExecuteScalar().ToString());
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
            return doanhthu;
        }
        public float DoanhThuTheoNam(DateTime date)
        {
            float doanhthu = 0;
            conn.OpenConnection();
            SqlCommand cmd = new SqlCommand("Select dbo.FC_DoanhThuTheoNam(@nam)", conn.GetConnection());
            cmd.Parameters.AddWithValue("@nam", date.Year);
            try
            {
                doanhthu = (float)Convert.ToDouble(cmd.ExecuteScalar().ToString());
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
            return doanhthu;
        }
        public float ChiPhiTheoThang(DateTime date)
        {
            float chiphi = 0;
            conn.OpenConnection();
            SqlCommand cmd = new SqlCommand("Select dbo.FC_TongChiPhiThang(@thang,@nam)", conn.GetConnection());
            cmd.Parameters.AddWithValue("@thang", date.Month);
            cmd.Parameters.AddWithValue("@nam", date.Year);
            try
            {
                chiphi = (float)Convert.ToDouble(cmd.ExecuteScalar().ToString());
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
            return chiphi;
        }
        public float ChiPhiTheoNam(DateTime date)
        {
            float chiphi = 0;
            conn.OpenConnection();
            SqlCommand cmd = new SqlCommand("Select dbo.FC_TongChiPhiNam(@nam)", conn.GetConnection());
            cmd.Parameters.AddWithValue("@nam", date.Year);
            try
            {
                chiphi = (float)Convert.ToDouble(cmd.ExecuteScalar().ToString());
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
            return chiphi;
        }
        public DataTable LayDoanhThuTheoNgay(DateTime date)
        {
            DataTable dt = new DataTable();
            string strSql = $"select * from dbo.FC_ThongKeDoanhThuTheoNgay({date.Day}, {date.Month}, {date.Year})";
            dt = conn.GetTable(strSql);
            return dt;
        }
        public DataTable LayDoanhThuTheoThang(DateTime date)
        {
            DataTable dt = new DataTable();
            string strSql = $"select * from dbo.FC_ThongKeDoanhThuTheoThang({date.Month}, {date.Year})";
            dt = conn.GetTable(strSql);
            return dt;
        }
        public DataTable LayDoanhThuTheoNam(DateTime date)
        {
            DataTable dt = new DataTable();
            string strSql = $"select * from dbo.FC_ThongKeDoanhThuTheoNam({date.Year})";
            dt = conn.GetTable(strSql);
            return dt;
        }
        public DataTable LayChiPhiTheoThang(DateTime date)
        {
            DataTable dt = new DataTable();
            string strSql = $"select * from dbo.FC_ThongKeChiPhiTheoThang({date.Month}, {date.Year})";
            dt = conn.GetTable(strSql);
            return dt;
        }
        public DataTable LayChiPhiTheoNam(DateTime date)
        {
            DataTable dt = new DataTable();
            string strSql = $"select * from dbo.FC_ThongKeChiPhiTheoNam({date.Year})";
            dt = conn.GetTable(strSql);
            return dt;
        }
    }
}
