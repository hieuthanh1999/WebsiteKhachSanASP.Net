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
    public class ListServices
    {
        DataConection dataConn = new DataConection();

        public List<Services> lService()
        {
            List<Services> li = new List<Services>();
            SqlConnection conn = dataConn.conn;
            conn.Open();
            string strSQL = "select * from ServicesBooking";
            SqlCommand cmd = new SqlCommand(strSQL, conn);
            SqlDataReader rd = cmd.ExecuteReader();
            while (rd.Read())
            {
                Services s = new Services();
                s.id = (string)rd["id"];
                s.name = (string)rd["name"];
                s.price = (string)rd["price"];
                s.service_status = (string)rd["service_status"];

                li.Add(s);
            }
            return li;
            conn.Close();
        }
    }
}