using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bug_tracker
{
    public partial class WebForm12 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                string abc = Session["abc"].ToString();
                using (SqlConnection cmd = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ApplicationServices"].ToString()))
                {
                    if (cmd.State != System.Data.ConnectionState.Open)
                    {
                        cmd.Open();
                        SqlCommand cm = new SqlCommand("select * from new_user where username='" + abc + "'", cmd);
                        SqlDataReader rdr = cm.ExecuteReader();
                        while (rdr.Read())
                        {
                            username.Text = rdr["username"].ToString();
                            TextBox4.Text = rdr["email"].ToString();
                            TextBox5.Text = rdr["real_name"].ToString();
                            project_access_level.Text = rdr["project_access_level"].ToString();
                            access_level.Text = rdr["access_level"].ToString();
                        }
                        rdr.Close();
                    }
                    cmd.Close();
                }
            }
        }
         public void ab(string msg)
        {
            Response.Write("<script language='javascript'>" + Environment.NewLine + "window.alert('" + msg + "')</script>");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string abc = Session["abc"].ToString();
            using (SqlConnection cmd = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ApplicationServices"].ToString()))
            {
                if (cmd.State != System.Data.ConnectionState.Open)
                {
                    if (CheckBox1.Checked == true)
                    {
                        if (TextBox2.Text == TextBox3.Text)
                        {
                            cmd.Open();
                            SqlCommand cm = new SqlCommand("update new_user set password='" + TextBox2.Text + "',c_password='" + TextBox3.Text + "',email='" + TextBox4.Text + "',real_name='" + TextBox5.Text + "' where username='" + abc + "'", cmd);
                            cm.ExecuteNonQuery();
                            Response.Redirect("Home.aspx");
                        }
                        else
                        {
                            ab("Passwords do not match!!!");
                        }
                    }
                    else
                    {
                        cmd.Open();
                        SqlCommand cm = new SqlCommand("update new_user set email='" + TextBox4.Text + "',real_name='" + TextBox5.Text + "' where username='" + abc + "'", cmd);
                        cm.ExecuteNonQuery();
                        Response.Redirect("Home.aspx");
                    }
                }
                cmd.Close();
            }
        }
    }
}