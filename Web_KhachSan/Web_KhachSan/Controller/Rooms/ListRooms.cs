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


       
        public void DelRoom(string id)
        {
            SqlConnection conn = dataConn.conn;
            conn.Open();
            string strSQL = "delete from Rooms where id = @id";
            SqlCommand cmd = new SqlCommand(strSQL, conn);
            cmd.Parameters.AddWithValue("id", id);
            cmd.ExecuteNonQuery();
            conn.Close();
        }

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