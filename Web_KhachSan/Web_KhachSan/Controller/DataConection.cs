using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data.Sql;

namespace Web_KhachSan.Controller
{
    public class DataConection
    {
        public SqlConnection conn;
        public DataConection()
        {
            string strConnect = @"Data Source=HIEUTHANH\MSSQLSERVER01;Initial Catalog=quanlykhachsan;Integrated Security=True";
            conn = new SqlConnection(strConnect);
        }
    }
}