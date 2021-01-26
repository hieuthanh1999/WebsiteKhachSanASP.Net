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
        ListBill bill = new ListBill();
        public void DisplayBills()
        {
           
            grvListBill.DataSource = bill.getBills();
            DataBind();
        }

        protected void Xoa_Click(object sender, CommandEventArgs e)
        {
            try
            {
                int id = Convert.ToInt32(e.CommandArgument);
                bill.DelBill(id);
                DisplayBills();
            }
            catch(Exception)
            {
                Response.Write("<script LANGUAGE='JavaScript' >alert('Yêu Cầu Xóa Booking trước.')</script>");
            }
           
        }
    }
}