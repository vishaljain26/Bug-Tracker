using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace bug_tracker
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                using (SqlConnection cmd = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ApplicationServices"].ToString()))
                {
                    if (cmd.State != System.Data.ConnectionState.Open)
                    {
                        cmd.Open();

                        {

                             //string abc = "vishal";
                            if (Session["abc"] == null)
                                Response.Redirect("Login.aspx");

                            string abc = Session["abc"].ToString();
                            SqlCommand cm = new SqlCommand("select access_level from new_user where username='" + abc + "'", cmd);
                            using (SqlDataReader rdr = cm.ExecuteReader())
                            {
                                while (rdr.Read())
                                {


                                    if (rdr["access_level"].ToString() == "Viewer")
                                    {
                                        ImageButton3.ImageUrl = "~/Styles/image/button/bug1.jpg";
                                        ImageButton3.Enabled = false;
                                        ImageButton4.ImageUrl = "~/Styles/image/button/user1.jpg";
                                        ImageButton4.Enabled = false;
                                    }
                                    else if (rdr["access_level"].ToString() == "Developer")
                                    {
                                        ImageButton4.ImageUrl = "~/Styles/image/button/user1.jpg";
                                        ImageButton4.Enabled = false;
                                    }
                                    else if (rdr["access_level"].ToString() == "Reporter")
                                    {
                                        ImageButton4.ImageUrl = "~/Styles/image/button/user1.jpg";
                                        ImageButton4.Enabled = false;
                                    }
                                }
                            }
                        }
                    }
                }

            }
        }
        //public void button(string msg)
        //{

        //    Response.Write("<script language='javascript'>" + Environment.NewLine + "window.alert('" + msg + "')</script>");
        //}


        protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
        {
            
            Response.Redirect("User_Accounts.aspx");
            
        }
        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Report_Bug.aspx");
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            Label4.Text = DateTime.Now.ToLongTimeString();
            Label5.Text = DateTime.Now.ToShortDateString();
        }
    }
}