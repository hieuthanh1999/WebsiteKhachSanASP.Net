using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_KhachSan
{
    public partial class test : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnBooking_Click(object sender, EventArgs e)
        {
            Session["checkin"] = checkin.Text;
            Session["checkout"] = checkout.Text;
            Session["songuoi"] = TextBox3.SelectedValue;
            Session["sophong"] = TextBox4.SelectedValue;
            Response.Redirect("Phong.aspx");
        }
    }
}