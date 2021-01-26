using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_KhachSan
{
    public partial class Book : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //string str1 = Session["checkin"].ToString();
            //TextBox1.Text = str1.ToString();
            //TextBox2.Text = Session["checkout"].ToString();
        }

        protected void btnDatphong_Click(object sender, EventArgs e)
        {
            Session["checkin2"] = TextBox1.Text;
            Session["checkout2"] = TextBox2.Text;
            string idroom = "";
            foreach(DataListItem item in dtl.Items)
            {
                Label mylabel = (Label)item.FindControl("Label2");
                mylabel.Visible = true;
                idroom = mylabel.Text;
            }
            //msg.Text = idroom;
            Session["id_room"] = idroom;
            Response.Redirect("Datphong.aspx");
        }
    }
}