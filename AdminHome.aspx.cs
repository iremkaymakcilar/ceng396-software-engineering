using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace minwin
{
    public partial class AdminHome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var cur_user = (user)Session["current_user"];
            Session["current_user"] = cur_user;
            if (cur_user != null)
            {
                using (var myDb = new ceng396())
                {
                    var allitems = (from u in myDb.item
                                    select u).ToList();
                    string code = "";
                    string url = "";
                    ContentPlaceHolder c = Page.Master.FindControl("ContentPlaceHolder1") as ContentPlaceHolder;
                    if (allitems.Count == 0)
                    {
                        Label1.Text = "Products are empty!";
                        Label1.Visible = true;
                    }
                    else
                    {
                        var i = 0;
                        foreach (var x in allitems)
                        {
                            var img1 = (from u in myDb.image
                                        where u.item_id == x.item_id
                                        select u.img).SingleOrDefault();
                            LiteralControl l = new LiteralControl();
                            code = "<div class='card' style='width: 20rem;'>";
                            l.Text = code;
                            c.Controls.Add(l);
                            c.FindControl("card");
                            LiteralControl l1 = new LiteralControl();
                            Image img = new Image();
                            img.ImageUrl = "data:image;base64," + Convert.ToBase64String(img1);
                            img.Height = 140;
                            img.Width = 140;
                            var id = "imge" + i.ToString();
                            img.ID = id;
                            c.FindControl(id);
                            img.CssClass = "card-img-top";
                            c.Controls.Add(img);
                            c.FindControl("imge");
                            url = "Adminitem.aspx?id=" + x.item_id;
                            LiteralControl l2 = new LiteralControl();
                            code = "<div class='card-body'><h5 class='card-title'" + x.title + "</h5><p class='card-text'>" + x.description + "</p><a href ='" + url + "'class='btn btn-primary custom'>View Product</a></div></div>";
                            l2.Text = code;
                            c.Controls.Add(l2);
                            i++;
                        }
                    }
                }
            }
            else
                Response.Redirect("Login.aspx");
        }
    
    }
}
