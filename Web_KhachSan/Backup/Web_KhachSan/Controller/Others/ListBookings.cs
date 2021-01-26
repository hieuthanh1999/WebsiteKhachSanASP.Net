using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using Web_KhachSan.Models;

namespace Web_KhachSan.Controller.Others
{
    public class ListBookings
    {
        DataConection datacon = new DataConection();

        public List<BookRoom> listBooking()
        {

            SqlConnection con = datacon.conn;
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
                bk.checkin_date = (DateTime)rd["checkin_date"];
                bk.checkout_date = (DateTime)rd["checkout_date"];
                bk.id_Room = (string)rd["id_Room"];
                items.Add(bk);
            }
            con.Close();
            return items;
        }
    }
}