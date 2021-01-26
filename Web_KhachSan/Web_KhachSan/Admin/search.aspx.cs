using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_KhachSan.Admin
{
    public partial class search : System.Web.UI.Page
    {
       
        Controller.Booking room = new Controller.Booking();
        Controller.Others.Search s = new Controller.Others.Search();
        Controller.Others.ListBill b = new Controller.Others.ListBill();
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            listCus();
        }
        public void listCus()
        {
            DataTable dataTable = new DataTable();
            string namex = txtname.Text.Trim();
            dataTable = s.Searchname(namex);
            if(dataTable==null || namex=="")
            {
                txterr.Text = "không tìm thấy!";
            }
            else
            {
                grvListCus.DataSource = dataTable;
                DataBind();
               
            }
            

        }
        protected void Xem_Click(object sender, CommandEventArgs e)
        {

            int id = Convert.ToInt32(e.CommandArgument);
          
            grdBooking.DataSource = room.listBookingid(id);
            DataBind();

        }
        protected void Hoadon_Click(object sender, CommandEventArgs e)
        {

            int id = Convert.ToInt32(e.CommandArgument);

            grvListBill.DataSource = b.getBillsid(id);
            DataBind();

        }
        protected void Can_Click(object sender, CommandEventArgs e)
        {
            listCus();

        }
       

    }
}