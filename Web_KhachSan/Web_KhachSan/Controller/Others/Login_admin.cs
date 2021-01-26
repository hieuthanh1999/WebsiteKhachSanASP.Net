using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

namespace Web_KhachSan.Controller.Others
{
    public class Login_admin
    {
        DataConection dataConn = new DataConection();
        //Kiem tra dang nhap
        public bool CheckLogin(string username, string password)
        {
            //Ket noi csdl
            SqlConnection con = dataConn.conn;
            con.Open();
            string sql = "select * from AdminLogin where username_admin=@username and password_admin=@password";
            SqlCommand cmd = new SqlCommand(sql, con);

            cmd.Parameters.AddWithValue("username", username);
            cmd.Parameters.AddWithValue("password", password);

            Int32 count = Convert.ToInt32(cmd.ExecuteScalar());//tra ve gia tri don cua cau truy van
            con.Close();

            if (count > 0)
                return true;
            else
                return false;
        }
    }
}