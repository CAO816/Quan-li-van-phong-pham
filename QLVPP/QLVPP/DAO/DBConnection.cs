using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using QLVPP.Form;
using System.Windows.Markup;

namespace QLVPP.DAO
{
    public class DBConnection
    {
        SqlConnection conn = new SqlConnection(@"Data Source=(localdb)\mssqllocaldb;Initial Catalog = QLVPP;User Id=" + GLOBAL.username + ";Password=" + GLOBAL.password + ";");
        SqlConnection connAdmin = new SqlConnection(@"Data Source=(localdb)\mssqllocaldb;Initial Catalog = QLVPP;Integrated Security=True");
        public DataTable GetTable(string sqlStr)
        {
            DataTable table = new DataTable();
            try
            {
                conn.Open();
                SqlDataAdapter adapter = new SqlDataAdapter(sqlStr, conn);
                adapter.Fill(table);
            }
            catch (Exception ex)
            {
                ThongBao tb = new ThongBao(ex.Message);
                tb.ShowDialog();
            }
            finally
            {
                conn.Close();
            }
            return table;
        }
        public SqlConnection GetConnection()
        {
            return conn;
        }
        public SqlConnection getConnectionAdmin()
        {
            return connAdmin;
        }
        public void OpenConnection()
        {
            if (conn.State == ConnectionState.Closed)
            {
                conn.Open();
            }
        }
        public void openConnectionAdmin()
        {
            if (connAdmin.State == ConnectionState.Closed)
            {
                connAdmin.Open();
            }
        }
        public void CloseConnection()
        {
            if (conn.State == ConnectionState.Open)
            {
                conn.Close();
            }
        }
        public void closeConnectionAdmin()
        {
            if (connAdmin.State == ConnectionState.Open)
            {
                connAdmin.Close();
            }
        }
    }
}
