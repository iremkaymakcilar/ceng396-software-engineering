using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace minwin
{
    public partial class AdminEdititem : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            var current_user = (user)Session["current_user"];
            Session["current_user"] = current_user;
            if (current_user != null)
            {
                Session["current_user"] = current_user;
                using (var myDb = new ceng396())
                {
                    int itemid = Convert.ToInt32(Request.QueryString["id"]);
                    var itm = (from u in myDb.item
                               where u.item_id == itemid
                               select u).Single();
                    var currentimg = (from u in myDb.image
                                      where u.item_id == itm.item_id
                                      select u).Single();

                    int id = Convert.ToInt32(Request.QueryString["id"]);
                    Label1.Text = itm.title;
                    Label2.Text = itm.description;
                    Image1.ImageUrl = "data:image;base64," + Convert.ToBase64String(currentimg.img);
                    Image1.Height = 300;
                    Image1.Width = 300;
                }
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var current_user = (user)Session["current_user"];
            Session["current_user"] = current_user;
            using (var myDb = new ceng396())
            {
                int itemid = Convert.ToInt32(Request.QueryString["id"]);
                var itm = (from u in myDb.item
                           where u.item_id == itemid
                           select u).Single();
                myDb.item.Remove(itm);
                myDb.SaveChanges();
            }
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            var current_user = (user)Session["current_user"];
            Session["current_user"] = current_user;
            Response.Redirect("Chat.aspx");
        }
    }


}