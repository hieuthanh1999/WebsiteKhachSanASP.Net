using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using Web_KhachSan.Models;

namespace Web_KhachSan.Controller.Others
{
    public class ListBill
    {
        DataConection dataConn = new DataConection();

        public List<Bill> getBills()
        {
            List<Bill> list = new List<Bill>();
            SqlConnection con = dataConn.conn;
            con.Open();
            String sql = "select * from Bill";
            SqlCommand cmd = new SqlCommand(sql, con);
            SqlDataReader dr = cmd.ExecuteReader();

            while (dr.Read())
            {
                Bill item = new Bill();

                item.id = (int)dr["id"];
                item.date_created = (DateTime)dr["date_created"];
                item.room_price = (string)dr["room_price"];
                item.services_price = (string)dr["services_price"];
                item.total_price = (string)dr["total_price"];

                list.Add(item);
            }
            con.Close();
            return list;
        }
    }
}