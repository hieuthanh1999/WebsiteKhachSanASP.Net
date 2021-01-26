using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace Web_KhachSan.Controller.Others
{
    public class DeleteBooking
    {
        DataConection dataConn = new DataConection();

        public void DelBooking(int id)
        {
            SqlConnection conn = dataConn.conn;
            conn.Open();

            string strSQL = "delete from Booking where id = @id";
            SqlCommand cmd = new SqlCommand(strSQL, conn);
            cmd.Parameters.AddWithValue("id", id);
            cmd.ExecuteNonQuery();
            conn.Close();
        }
    }
}