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
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnlogin_Click(object sender, EventArgs e)
        {
            Login_admin login = new Login_admin();

            //Ma hoa password
            //var passwordHash = Encryptor.MD5Hash(string.Format("0",Request.Form["pass"]));
            var passwordHash = Encryptor.MD5Hash(pass.Value);
            var checkLogin = login.CheckLogin(account.Value, pass.Value);
            if (true)
            {
                Session["UserAdmin"] = true;
                Response.Redirect("/Adminator/index.aspx");
            }
            else
            {
                msg.ForeColor = System.Drawing.Color.Red;
                msg.Text = "Tài khoản hoặc mật khẩu không chính xác ";
            }
        }
    }
}