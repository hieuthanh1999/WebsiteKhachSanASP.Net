using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data.Sql;
using Web_KhachSan.Controller;
using Web_KhachSan.Models;

namespace Web_KhachSan.Controller
{
    public class DeleteService
    {
        DataConection dataConn = new DataConection();
        public void xoaSV(string id)
        {
            SqlConnection conn = dataConn.conn;
            conn.Open();
            string strSQL = "delete from ServicesBooking where id = @id";
            SqlCommand cmd = new SqlCommand(strSQL, conn);
            cmd.Parameters.AddWithValue("id", id);
            cmd.ExecuteNonQuery();
            conn.Close();
        }
    }
}