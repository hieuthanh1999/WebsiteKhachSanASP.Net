using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data.Sql;

namespace Web_KhachSan.Models
{
    public class Room
    {
        public string id { get; set; }
        public string name { get; set; }
        public string kind { get; set; }
        public string price { get; set; }
        public string available { get; set; }
        public string img { get; set; }
        public string room_status { get; set; }
    }
}