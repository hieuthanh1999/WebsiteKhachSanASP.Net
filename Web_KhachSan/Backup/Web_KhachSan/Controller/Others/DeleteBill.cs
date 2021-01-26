using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using Web_KhachSan.Models;

namespace Web_KhachSan.Controller.Others
{
    public class DeleteBill
    {
        DataConection dataConn = new DataConection();

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