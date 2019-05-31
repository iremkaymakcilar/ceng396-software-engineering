using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;


namespace minwin
{
    public partial class Additem : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var cur_user = (user)Session["current_user"];
           
                Session["current_user"] = cur_user;
            
            if (cur_user == null)
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (var myDB = new ceng396())
            {
                var cur_user = (user)Session["current_user"];
                Session["current_user"] = cur_user;

                item newitem = new item();
                newitem.seller_id = cur_user.user_id;
                newitem.title = TextBoxTitle.Text;
                newitem.description = TextBoxDescription.Text;
                int a = DropDownList1.SelectedIndex;
                newitem.item_type_id = a;

                HttpPostedFile postedfile1 = FileUpload1.PostedFile;
                string filename1 = Path.GetFileName(postedfile1.FileName);
                string fileextension1 = Path.GetExtension(filename1);                                
                myDB.item.Add(newitem);
                myDB.SaveChanges();

                var c_item = (from u in myDB.item
                              where u.title == TextBoxTitle.Text && u.description == TextBoxDescription.Text
                              select u).SingleOrDefault();



                Stream stream = postedfile1.InputStream;
                BinaryReader binaryreader1 = new BinaryReader(stream);
                byte[] bytes1 = binaryreader1.ReadBytes((int)stream.Length);

                image newimage = new image();
                newimage.img = bytes1;
                newimage.item_id = c_item.item_id;
                myDB.image.Add(newimage);
                myDB.SaveChanges();                             
              
            }
            
            Response.Write("Item Successfully Added");
            Response.Redirect("AdminHome.aspx");


        }


    }


}




