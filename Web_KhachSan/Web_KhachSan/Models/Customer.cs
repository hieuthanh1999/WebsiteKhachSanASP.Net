using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Web_KhachSan.Models
{
    public class Customer
    {
        public int id { get; set; }
        public string name { get; set; }
        public string email { get; set; }
        public string phone { get; set; }
        public string credit_name { get; set; }
        public string credit_number { get; set; }
    }
}