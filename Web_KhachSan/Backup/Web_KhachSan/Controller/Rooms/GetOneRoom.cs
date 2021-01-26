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
    public class GetOneRoom
    {
        DataConection dataConn = new DataConection();
        public Room OneRoom(string id)
        {
            Room r = null;
            SqlConnection conn = dataConn.conn;
            conn.Open();
            string strSQL = "select * from Rooms where id=@id";
            SqlCommand cmd = new SqlCommand(strSQL, conn);
            cmd.Parameters.AddWithValue("id", id);
            SqlDataReader rd = cmd.ExecuteReader();
            if (rd.Read())
            {
                r = new Room();
                r.id = (string)rd["id"];
                r.name = (string)rd["name"];
                r.kind = (string)rd["kind"];
                r.price = (string)rd["price"];
                if ((bool)rd["available"])
                    r.available = "1";
                else
                    r.available = "0";
                r.img = (string)rd["img"];
                r.room_status = (string)rd["room_status"];
            }
            conn.Close();
            return r;
        }
    }
}