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
    public class CountData
    {
        DataConection dataConn = new DataConection();

        public int tsp()
        {
            SqlConnection conn = dataConn.conn;
            int count = 0;
            conn.Open();
            string strSQL = "select count(*) from Rooms";
            SqlCommand cmd = new SqlCommand(strSQL, conn);
            count = (int)cmd.ExecuteScalar();
            conn.Close();
            return count;
        }
        public int tsdv()
        {
            SqlConnection conn = dataConn.conn;
            int count = 0;
            conn.Open();
            string strSQL = "select count(*) from ServicesBooking";
            SqlCommand cmd = new SqlCommand(strSQL, conn);
            count = (int)cmd.ExecuteScalar();
            conn.Close();
            return count;
        }
        public int tshd()
        {
            SqlConnection conn = dataConn.conn;
            int count = 0;
            conn.Open();
            string strSQL = "select count(*) from Bill";
            SqlCommand cmd = new SqlCommand(strSQL, conn);
            count = (int)cmd.ExecuteScalar();
            conn.Close();
            return count;
        }
        public int tsspdadat()
        {
            SqlConnection conn = dataConn.conn;
            int count = 0;
            conn.Open();
            string strSQL = "select count(*) from  Booking";
            SqlCommand cmd = new SqlCommand(strSQL, conn);
            count = (int)cmd.ExecuteScalar();
            conn.Close();
            return count;
        }
    }
}