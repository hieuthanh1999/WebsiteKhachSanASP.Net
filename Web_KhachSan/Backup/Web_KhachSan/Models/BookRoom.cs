using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Web_KhachSan.Models
{
    public class BookRoom
    {
        public int id { get; set; }
        public int id_Customer { get; set; }
        public int id_Bill { get; set; }
        public string id_Room { get; set; }
        public DateTime checkin_date { get; set; }
        public DateTime checkout_date { get; set; }
    }
}