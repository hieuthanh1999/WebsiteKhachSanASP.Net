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
    public class GetOneService
    {
        DataConection dataConn = new DataConection();
        public Services OneService(string id)
        {
            Services s = null;
            SqlConnection conn = dataConn.conn;
            conn.Open();
            string strSQL = "select * from ServicesBooking where id=@id";
            SqlCommand cmd = new SqlCommand(strSQL, conn);
            cmd.Parameters.AddWithValue("id", id);
            SqlDataReader rd = cmd.ExecuteReader();
            if (rd.Read())
            {
                s = new Services();
                s.id = (string)rd["id"];
                s.name = (string)rd["name"];
                s.price = (string)rd["price"];
                s.service_status = (string)rd["service_status"];
            }
            conn.Close();
            return s;
        }
    }
}