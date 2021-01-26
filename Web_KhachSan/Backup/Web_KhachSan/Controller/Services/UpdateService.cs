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
    public class UpdateService
    {
        DataConection dataConn = new DataConection();
        public void updateService(Services r)
        {
            SqlConnection conn = dataConn.conn;
            conn.Open();
            string strSQL = "update ServicesBooking set name=@na, price=@pr, service_status=@se where id = @id";
            SqlCommand cmd = new SqlCommand(strSQL, conn);
            cmd.Parameters.AddWithValue("id", r.id);
            cmd.Parameters.AddWithValue("na", r.name);
            cmd.Parameters.AddWithValue("pr", r.price);
            cmd.Parameters.AddWithValue("se", r.service_status);
            cmd.ExecuteNonQuery();
            conn.Close();
        }
    }
}