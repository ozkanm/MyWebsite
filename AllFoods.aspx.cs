using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Website
{
    public partial class AllFoods : System.Web.UI.Page
    {
        

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                gv.DataSource = BusinessLayer.Food.getAllFoods();
                gv.DataBind();
            }
        }

        

        protected void gv_RowCommand(object sender, GridViewCommandEventArgs e)
        {

            if (!User.Identity.IsAuthenticated)
            {
                Response.Redirect("~/Login.aspx");
                return;
            }

            DataTable dt = new DataTable();
            if (Session["cart"] == null)
            {

                dt.Columns.Add("Food Id");
                dt.Columns.Add("Name");
                dt.Columns.Add("Price");
                Session["cart"] = dt;
            }

            string[] param = e.CommandArgument.ToString().Split(',');

            dt = (DataTable)Session["cart"];            

            DataRow dr = dt.NewRow();
            dr["Name"] = e.CommandName;
            dr["Food Id"] = param[0];
            dr["Price"] = param[1];
            dt.Rows.Add(dr);

            if (Session["carttotal"] == null)
            {
                Session["carttotal"] = 0;
            }

            Session["carttotal"] = Convert.ToInt32(Session["carttotal"]) + Convert.ToInt32(param[1]);


            String minicart = "Minicart " + dt.Rows.Count + " items at " + Session["carttotal"] + "$";
            
            lblCart.Text = minicart;
            btnCheckout.Visible = true;



            message.Text = "Product has been added to cart! Total price: " + Session["carttotal"];
        }

        protected void btnCheckout_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/Checkout.aspx");
        }

        
    }
}