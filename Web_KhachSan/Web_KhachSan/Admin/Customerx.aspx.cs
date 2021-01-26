using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_KhachSan.Admin
{
    public partial class Customer : System.Web.UI.Page
    {
        Controller.Customer.Customer  ct= new Controller.Customer.Customer();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Display();
            }
        }
        public void Display ()
        {
            grvListCus.DataSource = ct.getCustomer();
            DataBind();
        }
        protected void Xoa_Click(object sender, CommandEventArgs e)
        {

                int id = Convert.ToInt32(e.CommandArgument);
                ct.DelCus(id);
                Display();


        }
    }
}