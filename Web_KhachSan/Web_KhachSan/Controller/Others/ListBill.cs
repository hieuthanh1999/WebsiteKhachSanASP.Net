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
                item.count_room = (int)dr["count_room"];
                item.room_price = (string)dr["room_price"];
                item.name_sevice = (string)dr["name_sevice"];
                item.services_price = (string)dr["services_price"];
                item.total_price = (string)dr["total_price"];

                list.Add(item);
            }
            con.Close();
            return list;
        }
        public List<Bill> getBillsid(int id)
        {
            List<Bill> list = new List<Bill>();
            SqlConnection con = dataConn.conn;
            con.Open();
            String sql = "select * from Bill where id=@id";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("id", id);
            SqlDataReader dr = cmd.ExecuteReader();

            while (dr.Read())
            {
                Bill item = new Bill();

                item.id = (int)dr["id"];
                item.date_created = (DateTime)dr["date_created"];
                item.count_room = (int)dr["count_room"];
                item.room_price = (string)dr["room_price"];
                item.name_sevice = (string)dr["name_sevice"];
                item.services_price = (string)dr["services_price"];
                item.total_price = (string)dr["total_price"];

                list.Add(item);
            }
            con.Close();
            return list;
        }
        public void DelBill(int id)
        {
            SqlConnection conn = dataConn.conn;
            conn.Open();

            string strSQL = "delete from Bill where id = @id";
            SqlCommand cmd = new SqlCommand(strSQL, conn);
            cmd.Parameters.AddWithValue("id", id);
            cmd.ExecuteNonQuery();
            conn.Close();
        }
    }
}