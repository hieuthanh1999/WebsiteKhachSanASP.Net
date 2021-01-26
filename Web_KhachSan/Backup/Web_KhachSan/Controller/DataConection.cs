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
            //string strConnect = @"Data Source=ADMIN\SQLDOTHE;Initial Catalog=epichoteldb;Integrated Security=True";
            string strConnect = @"Data Source=ADMIN\SQLDOTHE;Initial Catalog=epichoteldb;Integrated Security=True";
            conn = new SqlConnection(strConnect);
        }
    }
}