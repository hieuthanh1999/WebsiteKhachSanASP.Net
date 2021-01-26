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


        //Thêm bảng booking
        public void Book(BookRoom r)
        {
            SqlConnection con = data.conn;
            con.Open();
            string strsql = "insert into Booking values (@id_Customer,  @id_Room,@id_Bill,@count_people, @count_room, @name_sevice ,@checkin_date,@checkout_date)";
            SqlCommand cmd = new SqlCommand(strsql, con);
            cmd.Parameters.AddWithValue("id_Customer", r.id_Customer);
            cmd.Parameters.AddWithValue("id_Room", r.id_Room);
            cmd.Parameters.AddWithValue("id_Bill", r.id_Bill);
            cmd.Parameters.AddWithValue("count_people", r.count_people);
            cmd.Parameters.AddWithValue("count_room", r.count_room);
            cmd.Parameters.AddWithValue("name_sevice",r.name_sevice);
            cmd.Parameters.AddWithValue("checkin_date", r.checkin_date);
            cmd.Parameters.AddWithValue("checkout_date",r.checkout_date);
            cmd.ExecuteNonQuery();
            con.Close();
        }
        //thêm vào bảng khách hàng
        public void insertCustomer(Models.Customer r)
        {
            SqlConnection con = data.conn;
            con.Open();
            string strsql = "insert into Customer values ( @name,@email,@phone,@creditname,@creditnumber)";
            SqlCommand cmd = new SqlCommand(strsql, con);
            //cmd.Parameters.AddWithValue("id", r.id);
            cmd.Parameters.AddWithValue("name", r.name);
            cmd.Parameters.AddWithValue("email", r.email);
            cmd.Parameters.AddWithValue("phone", r.phone);
            cmd.Parameters.AddWithValue("creditname", r.credit_name);
            cmd.Parameters.AddWithValue("creditnumber", r.credit_number);
            cmd.ExecuteNonQuery();
            con.Close();
        }
        // trả về giá trị id gần nhất
        public int showid_cus()
        {
            try
            {
                SqlConnection con = data.conn;
                // con.Open();
                string strsql = "SELECT MAX(id) FROM Customer  ";
                DataTable tb = new DataTable();
                SqlDataAdapter ad = new SqlDataAdapter(strsql, con);
                ad.Fill(tb);
                if (tb == null)
                    return 0;
                else
                {
                    return Convert.ToInt32(tb.Rows[0][0].ToString());
                }

            }
            catch (Exception)
            {
                return 0;
            }
        }


        public List<BookRoom> listBooking()
        {

            SqlConnection con = data.conn;
            con.Open();
            List<BookRoom> items = new List<BookRoom>();
            string sql = "select * from Booking";
            SqlCommand cmd = new SqlCommand(sql, con);
            SqlDataReader rd = cmd.ExecuteReader();

            while (rd.Read())
            {
                BookRoom bk = new BookRoom();
                bk.id = (int)rd["id"];
                bk.id_Customer = (int)rd["id_Customer"];
                bk.id_Bill = (int)rd["id_Bill"];
                bk.count_people = (int)rd["count_people"];
                bk.count_room = (int)rd["count_room"];
                bk.name_sevice = (string)rd["name_sevice"];
                bk.checkin_date = (string)rd["checkin_date"];
                bk.checkout_date = (string)rd["checkout_date"];
                bk.id_Room = (string)rd["id_Room"];
                items.Add(bk);
            }
            con.Close();
            return items;
        }
        public List<BookRoom> listBookingid(int id_Customer)
        {

            SqlConnection con = data.conn;
            con.Open();
            List<BookRoom> items = new List<BookRoom>();
            string sql = "select * from Booking where id_Customer= @id_Customer";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("id_Customer", id_Customer);
            SqlDataReader rd = cmd.ExecuteReader();

            while (rd.Read())
            {
                BookRoom bk = new BookRoom();
                bk.id = (int)rd["id"];
                bk.id_Customer = (int)rd["id_Customer"];
                bk.id_Bill = (int)rd["id_Bill"];
                bk.count_people = (int)rd["count_people"];
                bk.count_room = (int)rd["count_room"];
                bk.name_sevice = (string)rd["name_sevice"];
                bk.checkin_date = (string)rd["checkin_date"];
                bk.checkout_date = (string)rd["checkout_date"];
                bk.id_Room = (string)rd["id_Room"];
                items.Add(bk);
            }
            con.Close();
            return items;
        }

        public void DelBooking(int id)
        {
            SqlConnection conn = data.conn;
            conn.Open();

            string strSQL = "delete from Booking where id = @id";
            SqlCommand cmd = new SqlCommand(strSQL, conn);
            cmd.Parameters.AddWithValue("id", id);
            cmd.ExecuteNonQuery();
            conn.Close();
        }
        //trả về gia trị id gần nhất
        public int showid_bill()
        {
            try
            {
                SqlConnection con = data.conn;
                // con.Open();
                string strsql = "SELECT MAX(id) FROM Bill  ";
                DataTable tb = new DataTable();
                SqlDataAdapter ad = new SqlDataAdapter(strsql, con);
                ad.Fill(tb);
                if (tb == null)
                    return 0;
                else
                {
                    return Convert.ToInt32(tb.Rows[0][0].ToString());
                }

            }
            catch (Exception)
            {
                return 0;
            }
        }
        public void insertbill(Bill r)
        {
            SqlConnection con = data.conn;
            con.Open();
            string strsql = "insert into Bill values (@date_created, @count_room, @room_price, @name_sevice, @services_price, @total_price)";
            SqlCommand cmd = new SqlCommand(strsql, con);
            //cmd.Parameters.AddWithValue("id", r.id);
            cmd.Parameters.AddWithValue("date_created", r.date_created);
            cmd.Parameters.AddWithValue("count_room", r.count_room);
            cmd.Parameters.AddWithValue("room_price", r.room_price);
            cmd.Parameters.AddWithValue("name_sevice", r.name_sevice);
            cmd.Parameters.AddWithValue("services_price", r.services_price);
            cmd.Parameters.AddWithValue("total_price", r.total_price);
            cmd.ExecuteNonQuery();
            con.Close();
        }
     
        public string priceservice(string ma)
        {
            try
            {
                SqlConnection con = data.conn;
              // con.Open();
                string strsql = "SELECT price FROM ServicesBooking WHERE id='"+ma+"'";
                DataTable tb = new DataTable();
                SqlDataAdapter ad = new SqlDataAdapter(strsql, con);
                ad.Fill(tb);
                if (tb == null)
                   return "";
                else
                {
                    return tb.Rows[0][0].ToString();
                    
               }
                 
                con.Close();

            }
            catch(Exception)
            {
               return "";
            }
        }
        public string namesevice(string ma)
        {
            try
            {
                SqlConnection con = data.conn;
                // con.Open();
                string strsql = "SELECT name FROM ServicesBooking WHERE id='" + ma + "'";
                DataTable tb = new DataTable();
                SqlDataAdapter ad = new SqlDataAdapter(strsql, con);
                ad.Fill(tb);
                if (tb == null)
                    return "";
                else
                {
                    return tb.Rows[0][0].ToString();

                }

                con.Close();

            }
            catch (Exception)
            {
                return "";
            }
        }

        public string idroom(string id)
        {
            try
            {
                SqlConnection con = data.conn;
                // con.Open();
                string strsql = "SELECT available FROM Rooms WHERE id='" + id + "'";
                DataTable tb = new DataTable();
                SqlDataAdapter ad = new SqlDataAdapter(strsql, con);
                ad.Fill(tb);
                string s= tb.Rows[0][0].ToString();
                if (tb == null)
                    return "";
                else
                {
                    return s;

                }

                con.Close();

            }
            catch (Exception)
            {
                return "";
            }
        }


        public string priceroom(string ma)
        {
            try
            {
                SqlConnection con = data.conn;
               // con.Open();
                string strsql = "SELECT * FROM Rooms WHERE id='"+ma+"'";
                DataTable tb = new DataTable();
                SqlDataAdapter ad = new SqlDataAdapter(strsql, con);
                ad.Fill(tb);
                if (tb == null)
                    return "";
                else
                    //return Convert.ToInt32(tb.Rows[0][3].ToString());
                    return tb.Rows[0][3].ToString();
                //con.Close();
            }
            catch (Exception)
            {
                return "";
            }
        }

        public int deleteString(string s)
        {
            var charsToRemove = new string[] {","};
            foreach (var c in charsToRemove)
            {
                s = s.Replace(c, string.Empty);
            }
            return Int32.Parse(s);
        }

        
       
    }
}