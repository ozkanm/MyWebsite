using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Website
{
    public partial class Checkout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!User.Identity.IsAuthenticated)
                Response.Redirect("~/Login.aspx");

            if (!Page.IsPostBack)
            {
                if (Session["cart"] == null)
                {
                    Response.Redirect("~/AllFoods");
                    return;
                }
                DataTable dt = (DataTable)Session["cart"];
                cartgrid.DataSource = dt;
                cartgrid.DataBind();
                message.Text = "Total items:  " + dt.Rows.Count + "<br />Total amount: " + Session["carttotal"];
            }
        }

        protected void btnPayment_Click(object sender, EventArgs e)
        {
            mv.ActiveViewIndex = 1;
        }

        protected void btnPayNow_Click(object sender, ImageClickEventArgs e)
        {
            if (Session["cart"] == null)
            {
                Response.Redirect("~/AllFoods.aspx");
                return;
            }
            int orderid = BusinessLayer.Order.AddOrder(User.Identity.Name, Convert.ToInt32(Session["carttotal"]), "Paid");


            DataTable dt = (DataTable)Session["cart"];
           
            foreach (DataRow dr in dt.Rows)
            {
                BusinessLayer.Order.AddOrderItem(orderid, Convert.ToInt32(dr["Food Id"]));
            }

            Session["cart"] = null;
            Session["carttotal"] = null;

            Response.Redirect("~/OrderConfirmation.aspx");
        }

        protected void btnReviewOrder_Click(object sender, EventArgs e)
        {
            mv.ActiveViewIndex = 0;
        }

        protected void btnAddMore_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/AllFoods.aspx");
        }
    }
}