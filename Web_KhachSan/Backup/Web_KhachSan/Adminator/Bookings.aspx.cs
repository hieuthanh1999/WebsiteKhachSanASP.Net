using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Web_KhachSan.Models;
using Web_KhachSan.Controller;
using Web_KhachSan.Controller.Others;

namespace Web_KhachSan.Adminator
{
    public partial class Bookings : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DisplayBookings();
            }
        }
        public void DisplayBookings()
        {
            ListBookings bookings = new ListBookings();
            grdBooking.DataSource = bookings.listBooking();
            DataBind();
        }

        protected void btnXoa_Command(object sender, CommandEventArgs e)
        {
            int id = Convert.ToInt32(e.CommandArgument);
            DeleteBooking delBooking = new DeleteBooking();
            delBooking.DelBooking(id);
            DisplayBookings();
        }
    }
}