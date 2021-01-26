using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data.Sql;

namespace Web_KhachSan.Models
{
    public class Services
    {
        public string id { get; set; }
        public string name { get; set; }
        public string price { get; set; }
        public string service_status { get; set; }
    }
}