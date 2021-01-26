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
            try
            {
                string chin = Session["checkin"].ToString();
                string chout = Session["checkout"].ToString();
                lblcheckin.Text = chin;
                lblcheckout.Text = chout;
                idroom = Session["id_room"].ToString();
            }
            catch (Exception)
            {
                Response.Redirect("Trangchu.aspx");
            }
           
            //lblmsg.Text = idroom;
        
        }
 
        protected void btnDp_Click(object sender, EventArgs e)
        {
            if (chb1.Checked == true)
            {
                try
               {
                    string hoten = txtHoten.Text;
                    string sdt = txtPhone.Text;
                    string email = txtEmail.Text;
                    string cardnumber =txtCardNumber.Text;
                    string cardname = txtTenChuThe.Text;
                    string checkin = Session["checkin"].ToString();
                    string checkout = Session["checkout"].ToString();

                    Customer c = new Customer();
                    c.name = hoten;
                    c.email = email;
                    c.phone = sdt;
                    c.credit_name = cardname;
                    c.credit_number = cardnumber;
                    s.insertCustomer(c);

                    int priceservice = 0;
                    int priceroom = s.deleteString(s.priceroom(idroom));
                    // hàm lấy giá tiền
                    //hàm lấy tên service
                    string[] array = new string[50];
                    string[] service = new string[50];
                    string name="";

                    for (int i = 0; i < checkboxlist1.Items.Count; i++)
                    {
                        if (checkboxlist1.Items[i].Selected)
                        {
                            string ser = checkboxlist1.Items[i].Value;
                            array[i]=  ser;
                            priceservice += s.deleteString(s.priceservice(ser));
                            service[i] = ser;
                            name += s.namesevice(ser) + ",";
                        }
                    }
                    DateTime today = DateTime.Now;

                    int count_room = Int32.Parse(Session["sophong"].ToString());
                    int tutal = priceroom*count_room + priceservice;
                    string sevice = name.TrimEnd(',');
                    Bill b = new Bill();
                    b.date_created = today;
                    b.count_room = Int32.Parse(Session["sophong"].ToString());
                    b.room_price = String.Format("{0:0,0}", priceroom);
                    b.name_sevice = sevice;
                    b.services_price = String.Format("{0:0,0}", priceservice);
                    b.total_price = String.Format("{0:0,0}", tutal);
                    s.insertbill(b);

                    BookRoom r = new BookRoom();
                    r.id_Customer = s.showid_cus();
                    r.id_Room = idroom;
                    r.id_Bill = s.showid_bill();
                    r.count_people = Int32.Parse (Session["songuoi"].ToString());
                    r.count_room = Int32.Parse(Session["sophong"].ToString());
                    r.name_sevice = sevice;
                    r.checkin_date = Session["checkin"].ToString();
                    r.checkout_date = Session["checkout"].ToString();
                    s.Book(r);
                  
                    msg.ForeColor = System.Drawing.Color.Blue;
                    Response.Write("<script LANGUAGE='JavaScript' >alert('Đặt Phòng thành công! Cảm ơn quý khách.')</script>");
                    txtHoten.Text="";
                    txtPhone.Text = "";
                    txtEmail.Text = "";
                    txtCardNumber.Text = "";
                    txtTenChuThe.Text = "";
                    txtConfirmEmail.Text = "";
                    //for (int i = 0; i < checkboxlist1.Items.Count; i++)
                    //{
                        checkboxlist1.ClearSelection();
                    //}
                    chb1.Checked =false;

                }
                catch (Exception e1)
                {
                   msg.Text = "lỗi là :"+e1.Message;
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