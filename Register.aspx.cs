using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Web.UI.WebControls;

namespace minwin
{
    public partial class register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (var myDB = new ceng396())
            {
                var user = (from u in myDB.user
                            select u).ToList();

                if (Page.IsPostBack)
                {
                    HttpPostedFile postedfile = FileUpload1.PostedFile;
                    string filename = Path.GetFileName(postedfile.FileName);
                    string fileextension = Path.GetExtension(filename);

                    if (fileextension.ToLower() == ".jpg" || fileextension.ToLower() == ".jpeg" || fileextension.ToLower() == ".png")
                    {
                        Stream stream = postedfile.InputStream;
                        BinaryReader binaryreader = new BinaryReader(stream);
                        byte[] bytes = binaryreader.ReadBytes((int)stream.Length);


                        var newuser = new user();
                        foreach (var x in user)
                        {
                            if (newuser.email == x.email)
                            {
                                Label1.Text = "Entered email is already in the database!";
                                Label1.Visible = true;
                                Response.Redirect("Register.aspx");
                            }
                        }

                        newuser.fname = TextBoxFname.Text;
                        newuser.lname = TextBoxLname.Text;
                        newuser.email = TextBoxEmail.Text;
                        newuser.school = DropDownList1.SelectedItem.Text;
                        newuser.faculty = DropDownList2.SelectedItem.Text;
                        newuser.major = DropDownList3.SelectedItem.Text;
                        newuser.username = TextBoxUserName.Text;
                        newuser.password = TextBoxPass.Text;                      
                        newuser.is_admin = false;
                        newuser.profile_photo = bytes;
                        myDB.user.Add(newuser);
                        myDB.SaveChanges();
                        Response.Write( "Congratulations you are registered!");
                        Response.Redirect("Login.aspx");
                        Label1.Visible = true;
                    }





                }
            }
        }
    }
}