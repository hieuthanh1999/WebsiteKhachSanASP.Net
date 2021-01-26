using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Web_KhachSan.Controller;
using Web_KhachSan;
using Web_KhachSan.Adminator;
using Web_KhachSan.Models;
using System.Data.SqlClient;
using System.Data;

namespace Web_KhachSan.Controller
{
    public class Booking
    {
        DataConection data = new DataConection();
        public void Book(BookRoom r)
        {
            SqlConnection con = data.conn;
            con.Open();
            string strsql = "insert into Booking values (@id_Customer,@id_Room,@id_Bill,@checkin_date,@checkout_date)";
            SqlCommand cmd = new SqlCommand(strsql, con);
            cmd.Parameters.AddWithValue("id_Customer", r.id_Customer);
            cmd.Parameters.AddWithValue("id_Room", r.id_Room);
            cmd.Parameters.AddWithValue("id_Bill", r.id_Bill);
            cmd.Parameters.AddWithValue("checkin_date", r.checkin_date);
            cmd.Parameters.AddWithValue("checkout_date",r.checkout_date);
            cmd.ExecuteNonQuery();
            con.Close();
        }
        
        public void insertCustomer(Customer r)
        {
            SqlConnection con = data.conn;
            con.Open();
            string strsql = "insert into Customer values (@id,@name,@email,@phone,@creditname,@creditnumber)";
            SqlCommand cmd = new SqlCommand(strsql, con);
            cmd.Parameters.AddWithValue("id", r.id);
            cmd.Parameters.AddWithValue("name", r.name);
            cmd.Parameters.AddWithValue("email", r.email);
            cmd.Parameters.AddWithValue("phone", r.phone);
            cmd.Parameters.AddWithValue("creditname", r.credit_name);
            cmd.Parameters.AddWithValue("creditnumber", r.credit_number);
            cmd.ExecuteNonQuery();
            con.Close();
        }
        public void insertbill(Bill r)
        {
            SqlConnection con = data.conn;
            con.Open();
            string strsql = "insert into Bill values (@id,@date_created,@room_price,@services_price,@total_price)";
            SqlCommand cmd = new SqlCommand(strsql, con);
            cmd.Parameters.AddWithValue("id", r.id);
            cmd.Parameters.AddWithValue("date_created", r.date_created);
            cmd.Parameters.AddWithValue("room_price", r.room_price);
            cmd.Parameters.AddWithValue("services_price", r.services_price);
            cmd.Parameters.AddWithValue("total_price", r.total_price);
            cmd.ExecuteNonQuery();
            con.Close();
        }
        public void insertuserservice(UseService s)
        {
            SqlConnection con = data.conn;
            con.Open();
            string strsql = "insert into UseService values (@id_Customer,@id_Service)";
            SqlCommand cmd = new SqlCommand(strsql, con);
            cmd.Parameters.AddWithValue("id_Customer", s.id_Customer);
            cmd.Parameters.AddWithValue("id_Service", s.id_Service);
            cmd.ExecuteNonQuery();
            con.Close();
        }
        public int priceservice(string ma)
        {
            try
            {
                SqlConnection con = data.conn;
                //con.Open();
                string strsql = "SELECT * FROM dbo.ServiceBooking WHERE id='"+ma+"'";
                DataTable tb = new DataTable();
                SqlDataAdapter ad = new SqlDataAdapter(strsql, con);
                ad.Fill(tb);
                if (tb == null)
                    return 0;
                else
                    return Convert.ToInt32(tb.Rows[0][2].ToString());
                //con.Close();
            }
            catch(Exception)
            {
                return 0;
            }
        }
        public int priceroom(string ma)
        {
            try
            {
                SqlConnection con = data.conn;
                //con.Open();
                string strsql = "SELECT * FROM dbo.Rooms WHERE id='"+ma+"'";
                DataTable tb = new DataTable();
                SqlDataAdapter ad = new SqlDataAdapter(strsql, con);
                ad.Fill(tb);
                if (tb == null)
                    return 0;
                else
                    return Convert.ToInt32(tb.Rows[0][3].ToString());
                //con.Close();
            }
            catch (Exception)
            {
                return 0;
            }
        }
        
       
    }
}