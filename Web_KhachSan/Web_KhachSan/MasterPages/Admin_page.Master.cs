using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_KhachSan.MasterPages
{
    public partial class Admin_page : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (Session["UserAdmin"] == null || !(bool)Session["UserAdmin"])
            //{
                //Session["UserAdmin"] = false;
                //Response.Redirect("Login.aspx");
            //}
        }

        protected void btnExit_Click(object sender, EventArgs e)
        {
            Session["UserAdmin"] = false;
            Response.Redirect("Login.aspx");
        }
    }
}