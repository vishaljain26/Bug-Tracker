using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bug_tracker
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DateTime dt = DateTime.Now;
            TextBox2.ReadOnly = true;
            TextBox2.Text = dt.ToShortDateString() +" "+ dt.ToShortTimeString();
           
        }

        public void abc(string msg)
        {
            Response.Write("<script language='javascript'>" + Environment.NewLine + "window.alert('" + msg + "')</script>");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //try
            //{
                //Response.Write(FileUpload1.HasFile.ToString() + " - " + FileUpload1.FileName + " - " + FileUpload1.FileBytes.Length.ToString());
                if (FileUpload1.HasFile)
                {
                    FileUpload1.SaveAs("C:\\Users\\Administrator\\Documents\\Visual Studio 2010\\Projects\\bug_tracker\\bug_tracker\\Extensions\\" + FileUpload1.FileName);
                    
                }

                string a = "0";
                decimal x;
                string abc = Session["abc"].ToString();
                using (SqlConnection cmd = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ApplicationServices"].ToString()))
                {
                    
                    DateTime dt = DateTime.Now;
                    if (cmd.State != System.Data.ConnectionState.Open)
                        cmd.Open();

                    SqlCommand cn = new SqlCommand("insert into new_bug(date_submitted,priority,severity,reproducibility,platform,os,os_version,summary,description,steps_to_reproduce,additional_information,status,reporter) values('" + TextBox2.Text + "','" + DropDownList1.SelectedItem.Text + "','" + DropDownList2.SelectedItem.Text + "','" + DropDownList3.SelectedItem.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "',DEFAULT,'" + abc + "')", cmd);
                    cn.ExecuteNonQuery();
                    SqlCommand cm = new SqlCommand("select @@IDENTITY as 'id'", cmd);
                    using (SqlDataReader rdr = cm.ExecuteReader())
                    {
                        while (rdr.Read())
                        {
                            a = rdr["id"].ToString();

                        }
                    }
                    x = System.Convert.ToDecimal(a);
                    if (FileUpload1.HasFile)
                    {
                        SqlCommand c = new SqlCommand("insert into files values('" + Session["abc"].ToString() + "','" + x + "','" + FileUpload1.FileName + "','" + dt.ToShortDateString() + " " + dt.ToShortTimeString() + "')", cmd);
                        c.ExecuteNonQuery();
                    }
                    if (CheckBox1.Checked == true)
                    {
                        
                       
                        TextBox3.Text = null;
                        TextBox4.Text = null;
                        TextBox5.Text = null;
                        TextBox6.Text = null;
                        TextBox7.Text = null;
                        TextBox8.Text = null;
                        TextBox9.Text = null;
                        DropDownList1.Text = null;
                        DropDownList2.Text = null;
                        DropDownList3.Text = null;
                        CheckBox1.Checked = false;
                    }
                    else
                    {
                        Response.Redirect("Home.aspx");
                    }

                }

            //}
            //catch (Exception)
            //{
            //    abc("Error in the form plz try again!!!");
            //}

        }
     
     

      
    }
}