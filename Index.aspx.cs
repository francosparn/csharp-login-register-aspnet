using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LoginWeb
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["userlogin"] != null)
            {
                string userlogin = Session["userlogin"].ToString();
                messageWelcome.Text = "¡Bienvenido/a " + userlogin + "!";
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session.Remove("userlogin");
            Response.Redirect("Login.aspx");
        }
    }
}