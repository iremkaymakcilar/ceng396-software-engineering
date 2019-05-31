using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace minwin
{
    public partial class ShowUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            using (var myDb = new ceng396())
            {
                var allusers = (from u in myDb.user
                                select u).ToList();

                ContentPlaceHolder c = Page.Master.FindControl("ContentPlaceHolder1") as ContentPlaceHolder;

                foreach (var x in allusers)
                {
                    Label label = new Label();
                    label.Text = x.fname + " " + x.lname + " (" + x.username + ") " + " <br>";
                    c.Controls.Add(label);
                }
            }
        }
    }
}