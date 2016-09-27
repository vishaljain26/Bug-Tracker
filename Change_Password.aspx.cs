using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bug_tracker
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void abc(string msg)
        {
            Response.Write("<script language='javascript'>" + Environment.NewLine + "window.alert('" + msg + "')</script>");
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            
                    Response.Redirect("Login.aspx");
                
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            using (SqlConnection cmd = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ApplicationServices"].ToString()))
            {
                if (cmd.State != System.Data.ConnectionState.Open)
                {
                    cmd.Open();
                    if (TextBox1.Text == TextBox2.Text)
                    {
                        SqlCommand cm = new SqlCommand("update new_user set password='" + TextBox1.Text + "' where username='" + Session["abc"].ToString() + "'", cmd);
                        cm.ExecuteNonQuery();
                        abc("Password changed");
                        Response.Redirect("Login.aspx");


                    }
                    else
                    {

                        abc("Passwords do not match!!!");

                    }

                }
            }
        }
    }
}