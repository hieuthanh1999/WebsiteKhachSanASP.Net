using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_KhachSan.MasterPages
{
    public partial class Extra_page : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnBooking_Click(object sender, EventArgs e)
        {
            Session["checkin"] = TextBox1.Text;
            Session["checkout"] = TextBox2.Text;
            Session["songuoi"] = dropdownlist1.SelectedValue;
            Session["sophong"] = textbox4.SelectedValue;
            Response.Redirect("Datphong.aspx");
            Response.Redirect("FormBook.aspx");
        }
    }
}