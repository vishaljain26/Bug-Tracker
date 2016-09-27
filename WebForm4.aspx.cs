using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace bug_tracker
{
    public partial class WebForm4 : System.Web.UI.Page
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
            if (TextBox3.Text == Session["ab"].ToString())
            {
                Response.Redirect("WebForm5.aspx");
            }
            else
            {
                abc("Incorrect Answer!!!");
            }
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            Session["abc"] = TextBox1.Text;
            using (SqlConnection cmd = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ApplicationServices"].ToString()))
            {
                if (cmd.State != System.Data.ConnectionState.Open)
                {
                    cmd.Open();
                    SqlCommand cm = new SqlCommand("select security,answer from new_user where username='" + TextBox1.Text + "'", cmd);
                    SqlDataReader rdr = cm.ExecuteReader();
                    while (rdr.Read())
                    {

                        TextBox2.Text = rdr["security"].ToString();
                        Session["ab"] = rdr["answer"].ToString();
                        
                    }
                }

            }
        }  
            
    }
}

       

        