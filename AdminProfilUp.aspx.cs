using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace minwin
{
    public partial class AdminProfilUp : System.Web.UI.Page
    {
        public partial class ProfilUp : System.Web.UI.Page
        {
            protected void Page_Load(object sender, EventArgs e)
            {
                /*var cur_user = (user)Session["current_user"];
                Session["current_user"] = cur_user;
                using (var myDb = new ceng396())
                {
                    var user = (from u in myDb.user
                                where u.user_id == cur_user.user_id
                                select u).Single();
                    
                   // LabelFname.Text = user.fname;
                    //LabelLname.Text = user.lname;
                    //LabelEmail.Text = user.email;
                   // LabelUserName.Text = user.username;
                   // LabelDep.Text = user.major;
                   // LabelFac.Text = user.faculty;
                   // LabelSchool.Text = user.school;
                   // TextBoxPass.Text = cur_user.password;
                   // TextBoxUserName.Text = cur_user.username;
                }
            }*/

/*  protected void Button1_Click(object sender, EventArgs e)
 {
     //HttpPostedFile postedfile = FileUpload1.PostedFile;
    // string filename = Path.GetFileName(postedfile.FileName);
    // string fileextension = Path.GetExtension(filename);

    if (fileextension.ToLower() == ".jpg" || fileextension.ToLower() == ".jpeg" || fileextension.ToLower() == ".png")
     {
        // Stream stream = postedfile.InputStream;
         BinaryReader binaryreader = new BinaryReader(stream);
         byte[] bytes = binaryreader.ReadBytes((int)stream.Length);

         var cur_user = (user)Session["current_user"];
         Session["current_user"] = cur_user;
         using (var myDb = new ceng396())
         {
             var user = (from u in myDb.user
                         where u.user_id == cur_user.user_id
                         select u).Single();
             if (TextBoxUserName.Text != null)
             {
                 user.username = TextBoxUserName.Text;
             }
             if (TextBoxPass.Text != null)
             {
                 user.password = TextBoxPass.Text;
             }
             if (postedfile != null)
             {
                 user.profile_photo = bytes;
             }

             myDb.SaveChanges();
         }


         Response.Redirect("Profil.aspx");
     }
     }*/
 }
}
}
}
 