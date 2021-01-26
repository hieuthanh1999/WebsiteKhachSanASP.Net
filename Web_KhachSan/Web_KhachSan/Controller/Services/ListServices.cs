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