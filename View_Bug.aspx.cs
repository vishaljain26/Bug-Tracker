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
                    string abc = Request.QueryString["id"];
                    string xyz = Request.QueryString["id2"];

                    if (xyz == null)
                    {
                        Session["id_1"] = abc;
                        // using (SqlConnection cmd = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ApplicationServices"].ToString()))




                        //while (rdr.Read())
                        // {
                        //     rdr["description"].ToString();
                        // }

                        SqlCommand cm1 = new SqlCommand("select * from new_bug where id='" + abc + "'", cmd);
                        SqlDataReader rdr = cm1.ExecuteReader();
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
                        


                    }

                    else
                    {
                        Session["id_1"] = xyz;
                        SqlCommand cm2 = new SqlCommand("select * from new_bug where id='" + xyz + "'", cmd);
                        SqlDataReader rdr = cm2.ExecuteReader();
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
                        
                    }


                    string status1 = "null";
                    string ab = Session["abc"].ToString();
                    SqlCommand cm3 = new SqlCommand("select status from new_bug where id='" + Session["id_1"].ToString() + "'", cmd);
                    using (SqlDataReader rdr1 = cm3.ExecuteReader())
                    {
                        while (rdr1.Read())
                        {
                            status1 = rdr1["status"].ToString();
                        }
                    }

                    SqlCommand cm = new SqlCommand("select access_level from new_user where username='" + ab + "'", cmd);
                    SqlDataReader rdr2 = cm.ExecuteReader();
                    {
                        while (rdr2.Read())
                        {

                            if (rdr2["access_level"].ToString() == "Viewer")
                            {
                                GridView1.Columns[0].Visible = false;
                                GridView2.Columns[0].Visible = false;
                                //ImageButton delButton1 = (ImageButton)GridView1.FindControl("DelButton1");
                                
                                //delButton1.Visible=false;
                                Panel3.Visible = false;
                                Panel2.Visible = false;
                                Panel4.Visible = false;
                                Panel5.Visible = true;
                                Panel6.Visible = true;
                                
                                Panel1.Height = 500;
                            }
                            if (rdr2["access_level"].ToString() == "Reporter")
                            {
                                GridView1.Columns[0].Visible = false;
                                GridView2.Columns[0].Visible = false;
                                Panel3.Visible = false;
                                Panel4.Visible = false;
                                if (status1 == "Resolved" || status1=="Closed")
                                {
                                    Button1.Visible = false;
                                    Button3.Visible = false;
                                    DropDownList2.Visible = false;
                                    
                                }
                                else
                                {
                                    Panel2.Visible = false;
                                  
                                }
                            }
                        }
                    }
                }
            }
        }
    

             

        


    
        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Edit_Bug.aspx?id1=" + id.Text);

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
                    SqlCommand cm = new SqlCommand("update new_bug set status='" + DropDownList1.SelectedItem.Text.Replace("'","''") + "',last_updated='" + dt.ToShortDateString() + " " + dt.ToShortTimeString() + "',update_status='true' where id='" + abc + "'", cmd);
                    cm.ExecuteNonQuery();
                    if (DropDownList1.SelectedValue.ToString() == "Resolved" || DropDownList1.SelectedValue.ToString() == "Closed")
                    {
                        Response.Redirect("Change_Status2.aspx?status=" + DropDownList1.SelectedValue.ToString());
                    }
                    else
                    {
                        Response.Redirect("Change_Status1.aspx?status=" + DropDownList1.SelectedValue.ToString());
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
            
            using (SqlConnection cmd = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ApplicationServices"].ToString()))
            {
                if (cmd.State != System.Data.ConnectionState.Open)
                {
                    cmd.Open();
                     SqlCommand cm = new SqlCommand("insert into notes values('"+Session["abc"].ToString()+"','" + Session["id_1"].ToString() + "','"+TextBox1.Text.Replace("'","''")+"','"+dt.ToShortDateString()+" "+dt.ToShortTimeString()+"')", cmd);
                    cm.ExecuteNonQuery();
                   
                    SqlCommand cm1 = new SqlCommand("update new_bug set last_updated='" + dt.ToShortDateString() + " " + dt.ToShortTimeString() + "',update_status='true' where id='" + Session["id_1"].ToString() + "'", cmd);
                    cm1.ExecuteNonQuery();
                }
                
            }
            Response.Redirect("Home.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {


            DateTime dt = DateTime.Now;            
            if (FileUpload1.HasFile)
            {
                FileUpload1.SaveAs("C:\\Users\\server\\Documents\\Visual Studio 2010\\Projects\\bug_tracker\\bug_tracker\\Extensions\\" + FileUpload1.FileName);
            }
             
            using (SqlConnection cmd = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ApplicationServices"].ToString()))
            {
                if (cmd.State != System.Data.ConnectionState.Open)
                {
                    cmd.Open();
                    
                    SqlCommand cm = new SqlCommand("insert into files values('"+Session["abc"].ToString()+"','" + Session["id_1"].ToString() + "','"+FileUpload1.FileName.Replace("'","''")+"','"+dt.ToShortDateString()+" "+dt.ToShortTimeString()+"')", cmd);
                    cm.ExecuteNonQuery();
                    SqlCommand cm1 = new SqlCommand("update new_bug set last_updated='" + dt.ToShortDateString() + " " + dt.ToShortTimeString() + "',update_status='true' where id='" + Session["id_1"].ToString() + "'", cmd);
                    cm1.ExecuteNonQuery();
                }
            }
            Response.Redirect("Home.aspx");

        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            
            if (e.CommandName.ToString() == "RemoveNote")
            {
                using (SqlConnection cmd = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ApplicationServices"].ToString()))
                {
                    cmd.Open();
                    string noteID = e.CommandArgument.ToString();
                    SqlCommand cm = new SqlCommand("delete from notes where noteID='" + noteID + "'", cmd);
                    cm.ExecuteNonQuery();

                }
            }
            
            Response.Redirect("Home.aspx");
        }
        protected void GridView2_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName.ToString() == "RemoveFile")
            {
                using (SqlConnection cmd = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ApplicationServices"].ToString()))
                {
                    cmd.Open();
                    string fileID = e.CommandArgument.ToString();
                    SqlCommand cm = new SqlCommand("delete from files where fileID='" + fileID + "'", cmd);
                    cm.ExecuteNonQuery();

                }
            }
            Response.Redirect("Home.aspx");
        }  

        
    }
}

                             
                    
                
            

        