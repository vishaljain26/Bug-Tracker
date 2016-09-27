using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace bug_tracker
{
    public partial class WebForm11 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                string abc = Request.QueryString["abc"];
                if (!Page.IsPostBack)
                {
                    using (SqlConnection cmd = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ApplicationServices"].ToString()))
                    {
                        if (cmd.State != System.Data.ConnectionState.Open)
                        {
                            cmd.Open();
                            SqlCommand cm = new SqlCommand("select email,real_name,access_level,assigned_project from new_user where username='" + abc + "'", cmd);
                            SqlDataReader rdr = cm.ExecuteReader();
                            while (rdr.Read())
                            {
                                TextBox1.Text = abc;
                                TextBox2.Text = rdr["email"].ToString();
                                TextBox3.Text = rdr["real_name"].ToString();
                                TextBox4.Text = rdr["access_level"].ToString();
                                TextBox5.Text = rdr["assigned_project"].ToString();
                            }
                            rdr.Close();

                        }
                        cmd.Close();

                    }
                }

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string abc=Request.QueryString["abc"];
            using (SqlConnection cmd = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ApplicationServices"].ToString()))
            {
                if (cmd.State != System.Data.ConnectionState.Open)
                {
                    cmd.Open();
                    SqlCommand cm1 = new SqlCommand("delete from new_user where username='" + abc+"'", cmd);
                    cm1.ExecuteNonQuery();
                }
                cmd.Close();
            }
            Response.Redirect("User_Accounts.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("User_Accounts.aspx");
        }

      

       
    }
}