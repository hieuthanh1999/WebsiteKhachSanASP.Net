using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Web_KhachSan.Controller;

namespace Web_KhachSan
{
    public partial class Book : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // string str1 = Session["checkin"].ToString();
            try {
                TextBox1.Text = Session["checkin"].ToString();
                TextBox2.Text = Session["checkout"].ToString();
                TextBox3.Text = Session["songuoi"].ToString();
                TextBox4.Text = Session["sophong"].ToString();
            }
            catch(Exception)
            {
                Response.Redirect("Trangchu.aspx");
            }
            
        }

        protected void Click_datphong(object sender, CommandEventArgs e)
        {
            Booking s = new Booking();
            if (e.CommandName== "dat phong" )
            {
                //Session["checkin2"] = TextBox1.Text;
                //Session["checkout2"] = TextBox2.Text;
               string id = (e.CommandArgument.ToString());
                string check =s.idroom(id);
                if (check == "True")
                {
                    Session["id_room"] = id;
                    Response.Redirect("Datphong.aspx");

                }
                else
                {
                    Response.Write("<script LANGUAGE='JavaScript' >alert('Phòng đã hết!.')</script>");
                }
                
            }

        }

        protected void SqlDataSourcemm_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
    }
}