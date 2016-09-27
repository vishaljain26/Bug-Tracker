using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace bug_tracker
{
    public partial class WebForm13 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                string status = Request.QueryString["status"];
                if (status == "New")
                {
                    tb1.Text = "NEW ISSUE";
                    Button1.Text = "New User";
                }
                else if (status == "Feedback")
                {
                    tb1.Text = "REQUEST FEEDBACK ON ISSUE";
                    Button1.Text = "Request Feedback";
                }
                else if (status == "Acknowledged")
                {
                    tb1.Text = "ACKNOWLEDGE ISSUE";
                    Button1.Text = "Acknowledge Issue";
                }
                else if (status == "Confirmed")
                {
                    tb1.Text = "CONFIRM ISSUE";
                    Button1.Text = "Confirm Issue";
                }
            }
            
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DateTime dt = DateTime.Now;
            string bug_id = Session["bug_id"].ToString();
            using (SqlConnection cmd = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ApplicationServices"].ToString()))
            {
                if (cmd.State != System.Data.ConnectionState.Open)
                {
                    cmd.Open();
                    SqlCommand cm = new SqlCommand("update new_bug set assigned_to='"+DropDownList1.SelectedItem.Text+"' where id='"+bug_id+"'", cmd);
                    SqlCommand c = new SqlCommand("insert into notes values('" + bug_id + "','" + TextBox1.Text + "','" + dt.ToShortDateString() + " " + dt.ToShortTimeString() + "')", cmd);

                    cm.ExecuteNonQuery();
                    c.ExecuteNonQuery();
                }
                cmd.Close();
                Response.Redirect("WebForm7.aspx");
            }
        }
    }
}