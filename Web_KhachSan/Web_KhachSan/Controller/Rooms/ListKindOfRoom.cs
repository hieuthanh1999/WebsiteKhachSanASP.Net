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
    public class ListKindOfRoom
    {
        DataConection dataConn = new DataConection();
        public List<KindOfRooms> ListkindOfRooms()
        {
            SqlConnection conn = dataConn.conn;
            List<KindOfRooms> li = new List<KindOfRooms>();
            conn.Open();
            string strSQL = "select * from KindOfRooms";
            SqlCommand cmd = new SqlCommand(strSQL, conn);
            SqlDataReader rd = cmd.ExecuteReader();
            while (rd.Read())
            {
                KindOfRooms kor = new KindOfRooms();
                kor.id = (string)rd["id"];
                kor.name = (string)rd["name"];
                kor.room_group = (string)rd["room_group"];
                li.Add(kor);
            }
            conn.Close();
            return li;
        }
    }
}