using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Web_KhachSan.Controller.Others;
using Web_KhachSan.Controller;
using Web_KhachSan.Models;

namespace Web_KhachSan.Adminator
{
    public partial class Bills : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DisplayBills();
            }

        }

        public void DisplayBills()
        {
            ListBill listbill = new ListBill();
            grvListBill.DataSource = listbill.getBills();
            DataBind();
        }

        protected void Xoa_Click(object sender, CommandEventArgs e)
        {
            int id = Convert.ToInt32(e.CommandArgument);
            DeleteBill delBill = new DeleteBill();
            delBill.DelBill(id);
            DisplayBills();
        }
    }
}