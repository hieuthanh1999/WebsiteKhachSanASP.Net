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
    public class UpdateRoom
    {
        DataConection dataConn = new DataConection();
        public void updateRoom(Room r)
        {
            SqlConnection conn = dataConn.conn;
            conn.Open();
            string strSQL = "update Rooms set name=@na, kind=@ki, price=@pr, available=@av, img=@im, room_status=@ro where id = @id";
            SqlCommand cmd = new SqlCommand(strSQL, conn);
            cmd.Parameters.AddWithValue("id", r.id);
            cmd.Parameters.AddWithValue("na", r.name);
            cmd.Parameters.AddWithValue("ki", r.kind);
            cmd.Parameters.AddWithValue("pr", r.price);
            cmd.Parameters.AddWithValue("av", r.available);
            cmd.Parameters.AddWithValue("im", r.img);
            cmd.Parameters.AddWithValue("ro", r.room_status);
            cmd.ExecuteNonQuery();
            conn.Close();
        }
    }
}