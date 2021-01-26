using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_KhachSan.Pages
{
    public partial class Gioithieu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            RandomImg1();
            RandomImg2();
            RandomImg3();
        }

        private void RandomImg3()
        {
            Random r = new Random();
            int n = r.Next(13, 18);
            img3.ImageUrl = "img/Images/" + n + ".jpg";
        }

        private void RandomImg2()
        {
            Random r = new Random();
            int n = r.Next(7, 12);
            img2.ImageUrl = "img/Images/" + n + ".jpg";
        }

        private void RandomImg1()
        {
            Random r = new Random();
            int n = r.Next(1, 6);
            img1.ImageUrl = "img/Images/" + n + ".jpg";
        }
        
        protected void tm1_Tick(object sender, EventArgs e)
        {
            RandomImg1();
        }

        protected void tm2_Tick(object sender, EventArgs e)
        {
            RandomImg2();
        }

        protected void tm3_Tick(object sender, EventArgs e)
        {
            RandomImg3();
        }
    }
}