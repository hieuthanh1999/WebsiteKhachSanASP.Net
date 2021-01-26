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
    public partial class Rooms : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DisplayRooms();
                List<ListItem> item = new List<ListItem>();
                item.Add(new ListItem("Yes", "1"));
                item.Add(new ListItem("No", "0"));
                ddlAvailable.Items.AddRange(item.ToArray());
                ddlAvailableUpdate.Items.AddRange(item.ToArray());
                ListKindOfRoom lstKor = new ListKindOfRoom();
                ddlKind.DataSource = lstKor.ListkindOfRooms();
                ddlKindUpdate.DataSource = lstKor.ListkindOfRooms();
                ddlKind.DataTextField = "name";
                ddlKind.DataValueField = "id";
                ddlKindUpdate.DataTextField = "name";
                ddlKindUpdate.DataValueField = "id";
                DataBind();
            }
        }

        private void DisplayRooms()
        {
            ListRooms lstRooms = new ListRooms();
            grvListRooms.DataSource = lstRooms.lRooms();
            ListServices lstser = new ListServices();
            DataBind();
        }
        protected void Xoa_Click(object sender, CommandEventArgs e)
        {
            string id = Convert.ToString(e.CommandArgument);
            DeleteRoom delRoom = new DeleteRoom();
            delRoom.DelRoom(id);  
            DisplayRooms();
        }
        protected void Sua_Click(object sender, CommandEventArgs e)
        {
            if (e.CommandName == "sua")
            {
                string id = Convert.ToString(e.CommandArgument);
                GetOneRoom room = new GetOneRoom();
                Room r = room.OneRoom(id);
                txtIdUpdate.Text = r.id;
                txtNameUpdate.Text = r.name;
                ddlKindUpdate.SelectedValue = r.kind;
                txtPriceUpdate.Text = r.price;
                ddlAvailableUpdate.SelectedValue = r.available;
                txtStatusUpdate.Text = r.room_status;
                txtTemp.Text = r.img;
                txtIdUpdate.Enabled = false;
            }
        }

        protected void btnInsertRoom_Click(object sender, EventArgs e)
        {
            try
            {
                if (fileuploadImg.HasFile)
                {
                    string path = Server.MapPath("~/img/");
                    fileuploadImg.SaveAs(path+fileuploadImg.FileName);
                    Room r = new Room();
                    r.id = txtId.Text;
                    r.name = txtName.Text;
                    r.kind = ddlKind.SelectedValue;
                    r.price = txtPrice.Text;
                    r.available = ddlAvailable.SelectedValue;
                    r.img = (string)fileuploadImg.FileName;
                    r.room_status = txtStatus.Text;
                    InsertRoom insRoom = new InsertRoom();
                    insRoom.insertRoom(r);
                    DisplayRooms();
                    msgLB.Text = "Thêm thành công";
                }
            }
            catch (Exception ex)
            {
                msgLB.Text = "Đã xảy ra lỗi: " + ex.Message;
            }
        }

        private string MapPath()
        {
            throw new NotImplementedException();
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            try
            {
                UpdateRoom ur = new UpdateRoom();
                Room r = new Room();
                r.id = txtIdUpdate.Text;
                r.name = txtNameUpdate.Text;
                r.kind = ddlKindUpdate.SelectedValue;
                r.price = txtPriceUpdate.Text;
                r.available = ddlAvailableUpdate.SelectedValue;
                r.room_status = txtStatusUpdate.Text;
                if (fileuploadImgUpdate.HasFile)
                {
                    r.img = (string)fileuploadImgUpdate.FileName;
                }
                else
                {
                    r.img = txtTemp.Text;
                }
                ur.updateRoom(r);
                DisplayRooms();
                msgLB.Text = "Cập nhật thành công";
            }
            catch (Exception ex)
            {
                msgLB.Text = "Đã xảy ra lỗi: " + ex.Message;
            }
        }
    }
}