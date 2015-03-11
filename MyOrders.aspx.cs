using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Website
{
    public partial class MyOrders : System.Web.UI.Page
    {
        

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!User.Identity.IsAuthenticated)
                Response.Redirect("~/Login.aspx");

            if (!Page.IsPostBack)
            {
                gv.DataSource = BusinessLayer.Order.GetUserOrders(User.Identity.Name);
                gv.DataBind();
            }
        }

        

       
        
    }
}