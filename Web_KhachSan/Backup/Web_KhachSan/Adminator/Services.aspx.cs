using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Web_KhachSan.Controller;
using Web_KhachSan.Models;

namespace Web_KhachSan.Adminator
{
    public partial class Service1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                DisplayServices();
        }
        private void DisplayServices()
        {
            ListServices lstServices = new ListServices();
            grvListServices.DataSource = lstServices.lService();
            DataBind();
        }
        protected void Xoa_Click(object sender, CommandEventArgs e)
        {
            string id = Convert.ToString(e.CommandArgument);
            DeleteService delService = new DeleteService();
            delService.xoaSV(id);
            DisplayServices();
        }
        protected void Sua_Click(object sender, CommandEventArgs e)
        {
            if (e.CommandName == "sua")
            {
                string id = Convert.ToString(e.CommandArgument);
                GetOneService service = new GetOneService();
                Services s = service.OneService(id);
                txtIdUpdate.Text = s.id;
                txtNameUpdate.Text = s.name;
                txtPriceUpdate.Text = s.price;
                txtStatusUpdate.Text = s.service_status;
                txtIdUpdate.Enabled = false;
            }
        }

        protected void btnInsertService_Click(object sender, EventArgs e)
        {
            Services s = new Services();
            s.id = txtId.Text;
            s.name = txtName.Text;
            s.price = txtPrice.Text;
            s.service_status = txtStatus.Text;
            InsertService insService = new InsertService();
            insService.insertService(s);
            DisplayServices();
            msgLB.Text = "Thêm thành công";
        }
        protected void btnUpdate1_Click(object sender, EventArgs e)
        {
            UpdateService us = new UpdateService();
            Services s = new Services();
            s.id = txtIdUpdate.Text;
            s.name = txtNameUpdate.Text;
            s.price = txtPriceUpdate.Text;
            s.service_status = txtStatusUpdate.Text;
            us.updateService(s);
            DisplayServices();
            msgLB.Text = "Cập nhật thành công";
        }
    }
}