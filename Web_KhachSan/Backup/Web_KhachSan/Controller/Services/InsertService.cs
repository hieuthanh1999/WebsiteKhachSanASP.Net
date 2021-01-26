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
    public class InsertService
    {
        DataConection dataConn = new DataConection();
        public void insertService(Services r)
        {
            SqlConnection conn = dataConn.conn;
            conn.Open();
            string strSQL = "insert into ServicesBooking values(@id,@na,@pr,@st)";
            SqlCommand cmd = new SqlCommand(strSQL, conn);
            cmd.Parameters.AddWithValue("id", r.id);
            cmd.Parameters.AddWithValue("na", r.name);
            cmd.Parameters.AddWithValue("pr", r.price);
            cmd.Parameters.AddWithValue("st", r.service_status);
            cmd.ExecuteNonQuery();
            conn.Close();
        }
    }
}