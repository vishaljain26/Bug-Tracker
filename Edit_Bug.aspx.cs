using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bug_tracker
{
    public partial class WebForm10 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                string abc = Request.QueryString["id1"];
                using (SqlConnection cmd = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ApplicationServices"].ToString()))
                {
                    if (cmd.State != System.Data.ConnectionState.Open)
                    {
                        cmd.Open();
                        
                        SqlCommand cm = new SqlCommand("select * from new_bug where id=" + abc, cmd);
                        using (SqlDataReader rdr1 = cm.ExecuteReader())
                        {
                            while (rdr1.Read())
                            {
                                TextBox1.Text = rdr1["id"].ToString();
                                TextBox5.Text = rdr1["date_submitted"].ToString();
                                TextBox6.Text = rdr1["last_updated"].ToString();
                                TextBox7.Text = rdr1["reporter"].ToString();
                                TextBox8.Text = rdr1["assigned_to"].ToString();
                                DropDownList2.Text = rdr1["priority"].ToString();
                                DropDownList3.Text = rdr1["severity"].ToString();
                                DropDownList4.Text = rdr1["reproducibility"].ToString();
                                TextBox12.Text = rdr1["status"].ToString();
                                TextBox13.Text = rdr1["resolution"].ToString();
                                TextBox14.Text = rdr1["platform"].ToString();
                                TextBox15.Text = rdr1["os"].ToString();
                                TextBox16.Text = rdr1["os_version"].ToString();
                                TextBox17.Text = rdr1["summary"].ToString();
                                TextBox18.Text = rdr1["description"].ToString();
                                TextBox19.Text = rdr1["steps_to_reproduce"].ToString();

                            }
                        }
                        
                    }
                    
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (SqlConnection cmd = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ApplicationServices"].ToString()))
            {
                DateTime dt=DateTime.Now;
                string bc = Request.QueryString["id1"];
                Session["bc"] = bc;
                if (cmd.State != System.Data.ConnectionState.Open)
                {
                    cmd.Open();
                    SqlCommand cm = new SqlCommand("update new_bug set priority='" + DropDownList2.SelectedItem.Text + "',severity='" + DropDownList3.SelectedItem.Text + "',reproducibility='" + DropDownList4.SelectedItem.Text + "',platform='" + TextBox14.Text + "',os='" + TextBox15.Text + "',os_version='" + TextBox16.Text + "',summary='" + TextBox17.Text + "',description='" + TextBox18.Text + "',steps_to_reproduce='" + TextBox19.Text + "',last_updated='"+ dt.ToShortDateString() +" "+ dt.ToShortTimeString()+"',update_status='true' where id='" + bc + "'", cmd);
                    cm.ExecuteNonQuery();
                   
                    cmd.Close();
                 }
            }
            Response.Redirect("View_Bug.aspx?id2="+TextBox1.Text);
        }
    }
}