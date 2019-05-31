using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace minwin
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button_Click(object sender, System.EventArgs e)
        {
            using (var myDB = new ceng396())
            {
                var loggeduser = (from u in myDB.user
                                  where u.username == TextBoxUserName.Text && u.password == TextBoxPass.Text
                                  select u).SingleOrDefault();
                if (loggeduser != null && loggeduser.is_admin)
                {
                    Session["current_user"] = loggeduser;
                    Response.Redirect("AdminHome.aspx");
                }
                else if (loggeduser != null)
                {
                    Session["current_user"] = loggeduser;
                    Response.Redirect("HomePage.aspx");
                }
                else
                {
                    if (TextBoxUserName.Text == "")
                    {
                        Label1.Text = "Username cannot be empty!";
                    }
                    if (TextBoxPass.Text == "")
                    {
                        Label2.Text = "Password cannot be empty!";
                    }
                    else
                    {
                        Label1.Text = "Email or password is incorrect!";
                        Response.Write("Logging in!");
                        Response.Redirect("Login.aspx");
                    }

                }
            }
        }
    }
}