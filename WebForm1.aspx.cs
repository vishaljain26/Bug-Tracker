using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bug_tracker
{
    public partial class WebForm1 : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            
               
        }
        
        public void message(string msg)
                {
                    Response.Write("<script language='javascript'>"+Environment.NewLine + "window.alert('"+ msg + "')</script>");
                }
        protected void Button1_Click(object sender, EventArgs e)
        {
           
            if (Session["c"]=="updation")
            {
                string user = Session["user"].ToString();
                using (SqlConnection cmd = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ApplicationServices"].ToString()))
                {
                    if (cmd.State != System.Data.ConnectionState.Open)
                        cmd.Open();
                    
                    SqlCommand cn1 = new SqlCommand("update new_user set username='" + TextBox1.Text + "',email='" + TextBox4.Text + "',real_name='" + TextBox5.Text + "',security='" + DropDownList3.SelectedItem.Text + "',answer='" + TextBox7.Text + "',access_level='" + DropDownList1.SelectedItem.Text + "',project_access_level='" + DropDownList2.SelectedItem.Text + "',assigned_project='" + TextBox6.Text + "' where username='"+user+"'", cmd);
                    cn1.ExecuteNonQuery();
                    Session["c"] = null;
                    Session["ab"] = null;
                }
                //message("Account Updated");
                //Response.Write("<script language='javascript'>" + Environment.NewLine + "confirm();</script>");
                Response.Redirect("WebForm8.aspx");
                
    }
            else if(Session["e"]=="new")
            {
                using (SqlConnection cmd = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ApplicationServices"].ToString()))
                {
                    if (cmd.State != System.Data.ConnectionState.Open)
                        cmd.Open();
                    SqlCommand cn = new SqlCommand("insert into new_user values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + DropDownList3.SelectedItem.Text + "','" + TextBox7.Text + "','" + DropDownList1.SelectedItem.Text + "','" + DropDownList2.SelectedItem.Text + "','" + TextBox6.Text + "')", cmd);
                    cn.ExecuteNonQuery();
                    TextBox1.Text = null;
                    TextBox2.Text = null;
                    TextBox3.Text = null;
                    TextBox4.Text = null;
                    TextBox5.Text = null;
                    TextBox6.Text = null;
                    TextBox7.Text = null;
                    DropDownList1.Text = null;
                    DropDownList2.Text = null;
                    DropDownList3.Text = null;
                    Session["e"] = null;
                }
            }
        }
        protected void Panel1_Init(object sender, EventArgs e)
        {
            if (Session["a"] == null)
            {
                if (Session["ab"] == "update")
                {

                    Session["c"] = "updation";

                }
                else
                {
                    Session["e"] = "new";
                }
            }
            else
            {
                TextBox2.Enabled = false;
                TextBox2.BackColor = System.Drawing.Color.LightGray;
                TextBox3.Enabled = false;
                TextBox3.BackColor = System.Drawing.Color.LightGray;
                Session["user"] = Session["a"].ToString();
                Button1.Text = "Update";
                using (SqlConnection cmd = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ApplicationServices"].ToString()))
                {
                    if (cmd.State != System.Data.ConnectionState.Open)
                        cmd.Open();
                    SqlCommand cn1 = new SqlCommand("select * from new_user where username='" + Session["a"].ToString() + "'", cmd);
                    SqlDataReader rdr = cn1.ExecuteReader();
                    while (rdr.Read())
                    {
                        TextBox1.Text = rdr["username"].ToString();
                        TextBox2.Text = rdr["password"].ToString();
                        TextBox3.Text = rdr["password"].ToString();
                        TextBox4.Text = rdr["email"].ToString();
                        TextBox5.Text = rdr["real_name"].ToString();
                        DropDownList3.Text = rdr["security"].ToString();
                        TextBox7.Text = rdr["answer"].ToString();
                        DropDownList1.Text = rdr["access_level"].ToString();
                        DropDownList2.Text = rdr["project_access_level"].ToString();
                        TextBox6.Text = rdr["assigned_project"].ToString();
                    }
                    Session["d"] = Session["a"].ToString();
                    Session["ab"] = "update";
                    Session["a"] = null;
                    
                    
                    rdr.Close();

                }

            }
        }
       
    }
}