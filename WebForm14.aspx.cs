using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace bug_tracker
{
    public partial class WebForm14 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                string status = Request.QueryString["status"];
                if (status == "Resolved")
                {
                    tb2.Text = "RESOLVE ISSUE";
                    Button1.Text = "Resolve Issue";
                }
                else if (status == "Closed")
                {
                    tb2.Text = "CLOSE ISSUE";
                    Button1.Text = "Close Issue";
                }
            }

        }
        public void abc(string msg)
        {
            Response.Write("<script language='javascript'>" + Environment.NewLine + "window.alert('" + msg + "')</script>");
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
                    SqlCommand cm = new SqlCommand("update new_bug set resolution='" + DropDownList2.SelectedItem.Text + "',assigned_to='" + DropDownList1.SelectedItem.Text + "' where id='" + bug_id + "'", cmd);
                    cm.ExecuteNonQuery();
                    SqlCommand c = new SqlCommand("insert into notes values('" + bug_id + "','"+TextBox1.Text+"','"+dt.ToShortDateString()+" "+dt.ToShortTimeString()+"')", cmd);
                    c.ExecuteNonQuery();

                    cmd.Close();
                    Response.Redirect("WebForm7.aspx");
                }
            }
        }
    }
}