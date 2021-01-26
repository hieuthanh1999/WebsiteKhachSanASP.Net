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
    public class InsertRoom
    {
        DataConection dataConn = new DataConection();
        public void insertRoom(Room r)
        {
            SqlConnection conn = dataConn.conn;
            conn.Open();
            string strSQL = "insert into Rooms values(@id,@na,@kid,@pr,@av,@im,@st)";
            SqlCommand cmd = new SqlCommand(strSQL, conn);
            cmd.Parameters.AddWithValue("id", r.id);
            cmd.Parameters.AddWithValue("na", r.name);
            cmd.Parameters.AddWithValue("kid", r.kind);
            cmd.Parameters.AddWithValue("pr", r.price);
            cmd.Parameters.AddWithValue("av", r.available);
            cmd.Parameters.AddWithValue("im", r.img);
            cmd.Parameters.AddWithValue("st", r.room_status);
            cmd.ExecuteNonQuery();
            conn.Close();
        }
    }
}