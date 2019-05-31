using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace minwin
{
    public partial class Chat : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var usr = (user)Session["current_user"];
            Session["current_user"] = usr;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (var myDb = new ceng396())
            {
                var user = (user)Session["current_user"];
                chat q = new chat();
                q.sender_message = TextBox2.Text;
                q.receiver_message = TextBox1.Text;
                q.sender_id = user.user_id;
                q.receiver_id = 2;
                myDb.chat.Add(q);
                myDb.SaveChanges();
                Session["curuser"] = q;
            }
        }
    }
}