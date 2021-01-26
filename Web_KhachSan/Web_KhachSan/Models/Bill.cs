using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Web_KhachSan.Models
{
    public class Bill
    {
        public int id { get; set; }
        public DateTime date_created { get; set; }
        public int count_room { get; set; }
        public string room_price { get; set; }
        public string name_sevice { get; set; }
        public string services_price { get; set; }
        public string total_price { get; set; }
    }
}