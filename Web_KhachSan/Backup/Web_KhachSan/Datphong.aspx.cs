using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Web_KhachSan.Models;
using Web_KhachSan.Controller;

namespace Web_KhachSan
{
    public partial class FormBook : System.Web.UI.Page
    {
        Booking s = new Booking();
        string idroom = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            //string chin = Session["checkin"].ToString();
           // string chout = Session["checkout"].ToString();
            //lblcheckin.Text = chin;
            //lblcheckout.Text = chout;
            //idroom = Session["id_room"].ToString();
            //lblmsg.Text = idroom;
        }
        protected void btnDp_Click(object sender, EventArgs e)
        {
            //msg.Text = idroom;
            if(chb1.Checked == true)
            {
                try
                {
                    string[] array = new string[50];
                    string hoten = txtHoten.Text;
                    string sdt = txtPhone.Text;
                    string email = txtEmail.Text;
                    string cardnumber = txtCardNumber.Text;
                    string cardname = txtTenChuThe.Text;
                    string checkin = Session["checkin"].ToString();
                    string checkout = Session["checkout"].ToString();
                    //msg.Text = checkin;
                    Customer c = new Customer();
                    c.id = cardnumber;
                    c.name = hoten;
                    c.email = email;
                    c.phone = sdt;
                    c.credit_name = cardname;
                    c.credit_number = cardnumber;
                    s.insertCustomer(c);
                    int priceservice = 0;
                    int priceroom = s.priceroom(idroom);
                    //msg.Text = priceroom.ToString();
                    for (int i=0;i<CheckBoxList1.Items.Count;i++)
                    {
                        if(CheckBoxList1.Items[i].Selected)
                        {
                            string ser = CheckBoxList1.Items[i].Value;
                            //msg.Text = ser;
                            array[i] = ser;
                            priceservice += s.priceservice(ser);
                        }
                    }
                    //msg.Text = priceservice.ToString();
                    int tutal = priceroom + priceservice;
                    //msg.Text = tutal.ToString();
                    Bill b = new Bill();
                    b.id = 1;
                    //msg.Text = b.id.ToString();
                    b.date_created = DateTime.Now;
                    //msg.Text = b.date_created.ToString();
                    b.room_price = priceroom.ToString();
                    //msg.Text = b.room_price.ToString();
                    b.services_price = priceservice.ToString();
                    //msg.Text = b.service_price.ToString();
                    b.total_price = tutal.ToString();
                    //msg.Text = b.total_price.ToString();
                    s.insertbill(b);
                    BookRoom r = new BookRoom();
                    r.id_Customer = 1;
                    r.id_Room = idroom;
                    r.id_Bill = 1;
                    r.checkin_date = DateTime.Now;
                    r.checkout_date = DateTime.Now;
                    s.Book(r);
                    for(int j =0;j<array.Count();j++)
                    {
                        string idservice = array[j].ToString();
                        UseService u = new UseService();
                        u.id_Customer = cardnumber;
                        u.id_Service = idservice;
                        s.insertuserservice(u);
                    }
                    msg.ForeColor = System.Drawing.Color.Blue;
                    msg.Text = "Đặt phòng thành công";

                }
                catch(Exception)
                {
                    
                }
            }
            else
            {
                msg.ForeColor = System.Drawing.Color.Red;
                msg.Text = "Bạn chưa xác nhận";
            }
        }
    }
}