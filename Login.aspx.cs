using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace Website
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // if task is logout, then clear session
            if (Request.Params["task"]!= null && Request.Params["task"].ToString() == "logout")
            {
                Session["Username"] = null;
                Session["Role"] = null;
                Response.Redirect("~/Login.aspx");
            }
        }

       

        protected void Submit_Click(object sender, EventArgs e)
        {
            if (BusinessLayer.User.CheckExists(Username.Text, Password.Text))
            {
                FormsAuthentication.SetAuthCookie(Username.Text, false);
                Response.Redirect("~/AllFoods.aspx");
            }
            else
                message.Text = "Sorry, username or password is wrong";
        }
    }
}