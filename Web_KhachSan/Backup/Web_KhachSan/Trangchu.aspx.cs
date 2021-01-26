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
            Session["checkin"] = TextBox1.Text;
            Session["checkout"] = TextBox2.Text;
            Session["songuoi"] = TextBox3.SelectedValue;
            Session["sophong"] = TextBox4.SelectedValue;
            Response.Redirect("Book.aspx");
        }
    }
}