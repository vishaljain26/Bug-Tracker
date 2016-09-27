using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Threading;
using System.Web.UI;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace bug_tracker
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            using (SqlConnection cmd = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ApplicationServices"].ToString()))

            {
                if (cmd.State != System.Data.ConnectionState.Open)
                cmd.Open();
                using (SqlCommand cm = new SqlCommand("select password,activated from new_user where username='" + TextBox1.Text + "'", cmd))
                {
                    Session["abc"] = TextBox1.Text;
                    SqlDataReader rdr = cm.ExecuteReader();
                    while (rdr.Read())
                    {
                        if (rdr["activated"].ToString() == "Yes")
                        {
                            if (rdr["password"].ToString() == TextBox2.Text)
                            {
                                Response.Redirect("Home.aspx");
                            }
                            else
                            {
                                Response.Redirect("Login.aspx");
                            }
                        }
                        else
                        {

                            Response.Write("<script language='javascript'>" + Environment.NewLine + "alert('Your account has not been Activated!!!')</script>");
                        }
                    }
                    rdr.Close();
                }
            }
    
        }
    }
}