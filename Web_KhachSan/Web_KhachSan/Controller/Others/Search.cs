using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Web_KhachSan.Models;
using System.Data.SqlClient;
using System.Data;
namespace Web_KhachSan.Controller.Others
{
    public class Search
    {
        DataConection dataConn = new DataConection();
        public Search()
        {

        }
        public DataTable Searchname(string ten)
        {
        try
            {
                SqlConnection conn = dataConn.conn;
                conn.Open();
                string strsql = "select*from Customer  where  name like N'%" + @ten + "%' or phone = N'"+@ten+ "' or email = N'" + @ten + "'";
                DataTable tb = new DataTable();
                SqlDataAdapter ad = new SqlDataAdapter(strsql, conn);
                ad.Fill(tb);
                if (tb == null)
                    return null;
                else
                {
                    return tb;

                }
            }
            catch (Exception)
            {
                return null;
            }
        }
       
    }
}