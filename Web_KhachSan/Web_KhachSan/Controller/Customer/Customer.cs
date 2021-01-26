using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Web_KhachSan.Models;
using System.Data.SqlClient;
using System.Data;
using Web_KhachSan.Models;


namespace Web_KhachSan.Controller.Customer
{
    public class Customer
    {
        DataConection data = new DataConection();


        public List<Models.Customer> getCustomer()
        {
            List<Models.Customer> list = new List<Models.Customer>();
            SqlConnection con = data.conn;
            con.Open();
            String sql = "select * from Customer";
            SqlCommand cmd = new SqlCommand(sql, con);
            SqlDataReader dr = cmd.ExecuteReader();

            while (dr.Read())
            {
               Models.Customer item = new Models.Customer();

                item.id = (int)dr["id"];
                item.name = (string)dr["name"];
                item.email = (string)dr["email"];
                item.phone = (string)dr["phone"];
                item.credit_name= (string)dr["credit_Name"];
                item.credit_number = (string)dr["credit_Number"];


                list.Add(item);
            }
            con.Close();
            return list;
        }
        public void DelCus(int id)
        {
            SqlConnection conn = data.conn;
            conn.Open();

            string strSQL = "delete from Customer where id = @id";
            SqlCommand cmd = new SqlCommand(strSQL, conn);
            cmd.Parameters.AddWithValue("id", id);
            cmd.ExecuteNonQuery();
            conn.Close();
        }

    }
}