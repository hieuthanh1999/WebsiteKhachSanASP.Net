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
        public int count_people { get; set; }
        public int count_room { get; set; }
        public string id_Room { get; set; }
        public string name_sevice { get; set; }
        public string checkin_date { get; set; }
        public string checkout_date { get; set; }
    }
}