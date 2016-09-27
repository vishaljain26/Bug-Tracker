using System;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bug_tracker
{
    public partial class WebForm9 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            using (SqlConnection cmd = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ApplicationServices"].ToString()))
            {

                if (cmd.State != System.Data.ConnectionState.Open)
                {

                    cmd.Open();
                    string ab = Session["abc"].ToString();
                    SqlCommand cm = new SqlCommand("select access_level from new_user where username='" + ab + "'", cmd);
                    SqlDataReader rdr = cm.ExecuteReader();
                    while (rdr.Read())
                    {

                        if (rdr["access_level"].ToString() == "Viewer")
                        {
                         
                            Panel3.Visible = false;
                            Panel2.Visible = false;
                            Panel4.Visible = false;
                            Panel5.Visible = false;
                            Panel1.Height = 500;
                        }

                    }
                    rdr.Close();


                    string abc = Request.QueryString["id"];
                    string xyz = Request.QueryString["id2"];

                    if (xyz == null)
                    {
                        // using (SqlConnection cmd = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ApplicationServices"].ToString()))


                        SqlCommand cm1 = new SqlCommand("select * from new_bug where id='" + abc + "'", cmd);
                        rdr = cm1.ExecuteReader();
                        while (rdr.Read())
                        {

                            id.Text = rdr["id"].ToString();
                            date1.Text = rdr["date_submitted"].ToString();
                            severity.Text = rdr["severity"].ToString();
                            steps_to_reproduce.Text = rdr["steps_to_reproduce"].ToString();
                            priority.Text = rdr["priority"].ToString();
                            reporter.Text = rdr["reporter"].ToString();
                            reproducibility.Text = rdr["reproducibility"].ToString();
                            status.Text = rdr["status"].ToString();
                            resolution.Text = rdr["resolution"].ToString();
                            platform.Text = rdr["platform"].ToString();
                            os.Text = rdr["os"].ToString();
                            os_version.Text = rdr["os_version"].ToString();
                            summary.Text = rdr["summary"].ToString();
                            description.Text = rdr["description"].ToString();
                            assigned_to.Text = rdr["assigned_to"].ToString();
                            date2.Text = rdr["last_updated"].ToString();


                        }
                        rdr.Close();
                        cmd.Close();


                    }

                    else
                    {
                        SqlCommand cm2 = new SqlCommand("select * from new_bug where id='" + xyz + "'", cmd);
                        rdr = cm2.ExecuteReader();
                        while (rdr.Read())
                        {
                            id.Text = rdr["id"].ToString();
                            date1.Text = rdr["date_submitted"].ToString();
                            severity.Text = rdr["severity"].ToString();
                            reporter.Text = rdr["reporter"].ToString();
                            steps_to_reproduce.Text = rdr["steps_to_reproduce"].ToString();
                            priority.Text = rdr["priority"].ToString();
                            reproducibility.Text = rdr["reproducibility"].ToString();
                            status.Text = rdr["status"].ToString();
                            resolution.Text = rdr["resolution"].ToString();
                            platform.Text = rdr["platform"].ToString();
                            os.Text = rdr["os"].ToString();
                            os_version.Text = rdr["os_version"].ToString();
                            summary.Text = rdr["summary"].ToString();
                            description.Text = rdr["description"].ToString();
                            assigned_to.Text = rdr["assigned_to"].ToString();
                            date2.Text = rdr["last_updated"].ToString();


                        }
                        rdr.Close();
                        cmd.Close();
                    }
                }
            }
        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm10.aspx?id1=" + id.Text);

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            DateTime dt = DateTime.Now;
            string abc = Request.QueryString["id"];
            using (SqlConnection cmd = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ApplicationServices"].ToString()))
                //{
                //    if (DropDownList2.SelectedItem.Text == "Myself")
                //    {
                //        string username = Session["abc"].ToString();
                //        if (cmd.State != System.Data.ConnectionState.Open)
                //        {
                //            cmd.Open();
                //            SqlCommand cm = new SqlCommand("update new_bug set assigned_to='" + username + "' where id='" + abc + "'", cmd);
                //            cm.ExecuteNonQuery();
                //        }
                //    }
                //    else
                //    {
                if (cmd.State != System.Data.ConnectionState.Open)
                {
                    cmd.Open();
                    SqlCommand cm = new SqlCommand("update new_bug set assigned_to='" + DropDownList2.SelectedItem.Text + "',last_updated='" + dt.ToShortDateString() + " " + dt.ToShortTimeString() + "',update_status='true' where id='" + abc + "'", cmd);
                    cm.ExecuteNonQuery();
                }
            //    }
            //}
            Page_Load(sender, e);

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            DateTime dt = DateTime.Now;
            string abc = Request.QueryString["id"];
            Session["bug_id"] = abc;
            using (SqlConnection cmd = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ApplicationServices"].ToString()))
            {
                if (cmd.State != System.Data.ConnectionState.Open)
                {
                    cmd.Open();
                    SqlCommand cm = new SqlCommand("update new_bug set status='" + DropDownList1.SelectedItem.Text + "',last_updated='" + dt.ToShortDateString() + " " + dt.ToShortTimeString() + "',update_status='true' where id='" + abc + "'", cmd);
                    cm.ExecuteNonQuery();
                    if (DropDownList1.SelectedValue.ToString() == "Resolved" || DropDownList1.SelectedValue.ToString() == "Closed")
                    {
                        Response.Redirect("WebForm14.aspx?status=" + DropDownList1.SelectedValue.ToString());
                    }
                    else
                    {
                        Response.Redirect("WebForm13.aspx?status=" + DropDownList1.SelectedValue.ToString());
                    }
                }
            }

        }
        public void abc(string msg)
        {
            Response.Write("<script language='javascript'>" + Environment.NewLine + "window.alert('" + msg + "')</script>");
        }
        protected void Button4_Click(object sender, EventArgs e)
        {
            
            DateTime dt = DateTime.Now; 
            string x = Request.QueryString["id"];
            using (SqlConnection cmd = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ApplicationServices"].ToString()))
            {
                if (cmd.State != System.Data.ConnectionState.Open)
                {
                    cmd.Open();
                     SqlCommand cm = new SqlCommand("insert into notes values('" + x + "','"+TextBox1.Text+"','"+dt.ToShortDateString()+" "+dt.ToShortTimeString()+"')", cmd);
                    cm.ExecuteNonQuery();
                   
                    SqlCommand cm1 = new SqlCommand("update new_bug set last_updated='" + dt.ToShortDateString() + " " + dt.ToShortTimeString() + "',update_status='true' where id='" + x + "'", cmd);
                    cm1.ExecuteNonQuery();
                }
                
            }
            Response.Redirect("WebForm7.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {


            DateTime dt = DateTime.Now;            
            if (FileUpload1.HasFile)
            {
                FileUpload1.SaveAs("C:\\Users\\server\\Documents\\Visual Studio 2010\\Projects\\bug_tracker\\bug_tracker\\Extensions\\" + FileUpload1.FileName);
            }
             string x = Request.QueryString["id"];
            using (SqlConnection cmd = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ApplicationServices"].ToString()))
            {
                if (cmd.State != System.Data.ConnectionState.Open)
                {
                    cmd.Open();
                    
                    SqlCommand cm = new SqlCommand("insert into files values('" + x + "','"+FileUpload1.FileName+"','"+dt.ToShortDateString()+" "+dt.ToShortTimeString()+"')", cmd);
                    cm.ExecuteNonQuery();
                    SqlCommand cm1 = new SqlCommand("update new_bug set last_updated='" + dt.ToShortDateString() + " " + dt.ToShortTimeString() + "',update_status='true' where id='" + x + "'", cmd);
                    cm1.ExecuteNonQuery();
                }
            }
            Response.Redirect("WebForm7.aspx");

        }
    }
}

                             
                    
                
            

        