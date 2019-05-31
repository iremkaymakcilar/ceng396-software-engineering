using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace minwin
{
    public partial class AdminProfil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var cur_user = (user)Session["current_user"];

            if (cur_user != null)
            {
                using (var myDb = new ceng396())
                {
                    var current = (from u in myDb.user
                                   where u.user_id == cur_user.user_id
                                   select u).SingleOrDefault();
                    LabelFname.Text = cur_user.fname;
                    LabelLname.Text = cur_user.lname;
                    LabelEmail.Text = cur_user.email;
                    LabelDep.Text = cur_user.major;
                    LabelFac.Text = cur_user.faculty;
                    LabelSchool.Text = cur_user.school;
                    LabelUserName.Text = cur_user.username;
                    Image1.ImageUrl = "data:image;base64," + Convert.ToBase64String(current.profile_photo);
                    Image1.Height = 100;
                    Image1.Width = 100;
                }
            }
            else
                Response.Redirect("Login.aspx");
        }

        protected void Button_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminProfilUp.aspx");
        }
    }
}