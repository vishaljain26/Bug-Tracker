using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bug_tracker
{
    public partial class WebForm8 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
               string abc = Request.QueryString["id"];
            
        }


        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName.ToString() == "Edit")
            {
                Session["a"] = e.CommandArgument.ToString();
                // Response.Write(e.CommandArgument.ToString() + " - " + e.CommandName + " - " + e.CommandSource);
                Response.Redirect("New_User.aspx");
            }
            else if (e.CommandName.ToString() == "Delete")
            {
                Response.Redirect("Delete_User.aspx?abc=" + e.CommandArgument.ToString());
            }
        }  
    }
}