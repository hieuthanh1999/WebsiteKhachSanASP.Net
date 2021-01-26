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
    public class ListRooms
    {
        DataConection dataConn = new DataConection();
        public List<Room> lRooms()
        {
            List<Room> li = new List<Room>();
            SqlConnection conn = dataConn.conn;
            conn.Open();
            string strSQL = "select * from Rooms";
            SqlCommand cmd = new SqlCommand(strSQL, conn);
            SqlDataReader rd = cmd.ExecuteReader();
            while (rd.Read())
            {
                Room r = new Room();
                r.id = (string)rd["id"];
                r.name = (string)rd["name"];
                r.kind = (string)rd["kind"];
                r.price = (string)rd["price"];
                if ((bool)rd["available"])
                    r.available = "Yes";
                else
                    r.available = "No";
                r.img = (string)rd["img"];
                r.room_status = (string)rd["room_status"];
                li.Add(r);
            }
            conn.Close();
            return li;
        }
    }
}