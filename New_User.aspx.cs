using System;
using System.Collections.Generic;
using System.Linq;
using System.Data.SqlClient;
using System.Web;
using System.Security.Cryptography;
using System.Net.Mail;
using System.Web.UI;
using System.IO;
using System.Text;
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
                Response.Redirect("User_Accounts.aspx");
                
    }
            else if(Session["e"]=="new")
            {
                using (SqlConnection cmd = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ApplicationServices"].ToString()))
                {
                    if (cmd.State != System.Data.ConnectionState.Open)
                        cmd.Open();
                    SqlCommand cn = new SqlCommand("insert into new_user values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + DropDownList3.SelectedItem.Text + "','" + TextBox7.Text + "','" + DropDownList1.SelectedItem.Text + "','" + DropDownList2.SelectedItem.Text + "','" + TextBox6.Text + "','default')", cmd);
                    cn.ExecuteNonQuery();

                    SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587);
                    MailAddress from = new MailAddress("vishaljain2691@gmail.com", "Confirmation");
                    MailAddress to = new MailAddress(TextBox4.Text);

                    string ab = Encrypt(TextBox1.Text);
                    MailMessage message = new MailMessage(from, to);
                    message.Body = "This is your activation link http://localhost:52763/Account_Activated.aspx?User=" + ab.ToString() + Environment.NewLine + "Please click on the link to Activate your BugTracker Account." + Environment.NewLine + Environment.NewLine + Environment.NewLine + "Thank You";
                    message.Subject = "BugTracker Account activation Link";
                    smtp.EnableSsl = true;
                    smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
                    smtp.Credentials = new System.Net.NetworkCredential("vishaljain2691@gmail.com", "vishal269110");
                  //  Response.Write("<script language='javascript'>" + Environment.NewLine + "alert('Your account has not been Activated!!!')</script>");
                    smtp.Send(message);
                
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
        public static byte[] Encrypt(byte[] clearData, byte[] Key, byte[] IV)
        {
            // Create a MemoryStream to accept the encrypted bytes 
            MemoryStream ms = new MemoryStream();

            // Create a symmetric algorithm. 
            // We are going to use Rijndael because it is strong and
            // available on all platforms. 
            // You can use other algorithms, to do so substitute the
            // next line with something like 
            //      TripleDES alg = TripleDES.Create(); 
            Rijndael alg = Rijndael.Create();

            // Now set the key and the IV. 
            // We need the IV (Initialization Vector) because
            // the algorithm is operating in its default 
            // mode called CBC (Cipher Block Chaining).
            // The IV is XORed with the first block (8 byte) 
            // of the data before it is encrypted, and then each
            // encrypted block is XORed with the 
            // following block of plaintext.
            // This is done to make encryption more secure. 

            // There is also a mode called ECB which does not need an IV,
            // but it is much less secure. 
            alg.Key = Key;
            alg.IV = IV;

            // Create a CryptoStream through which we are going to be
            // pumping our data. 
            // CryptoStreamMode.Write means that we are going to be
            // writing data to the stream and the output will be written
            // in the MemoryStream we have provided. 
            CryptoStream cs = new CryptoStream(ms,
               alg.CreateEncryptor(), CryptoStreamMode.Write);

            // Write the data and make it do the encryption 
            cs.Write(clearData, 0, clearData.Length);

            // Close the crypto stream (or do FlushFinalBlock). 
            // This will tell it that we have done our encryption and
            // there is no more data coming in, 
            // and it is now a good time to apply the padding and
            // finalize the encryption process. 
            cs.Close();

            // Now get the encrypted data from the MemoryStream.
            // Some people make a mistake of using GetBuffer() here,
            // which is not the right way. 
            byte[] encryptedData = ms.ToArray();

            return encryptedData;
        }

        // Encrypt a string into a string using a password 
        //    Uses Encrypt(byte[], byte[], byte[]) 

        public static string Encrypt(string clearText)
        {
            //// First we need to turn the input string into a byte array. 
            //byte[] clearBytes =
            //  System.Text.Encoding.Unicode.GetBytes(clearText);

            //// Then, we need to turn the password into Key and IV 
            //// We are using salt to make it harder to guess our key
            //// using a dictionary attack - 
            //// trying to guess a password by enumerating all possible words. 
            //PasswordDeriveBytes pdb = new PasswordDeriveBytes(Password,
            //    new byte[] {0x49, 0x76, 0x61, 0x6e, 0x20, 0x4d, 
            //0x65, 0x64, 0x76, 0x65, 0x64, 0x65, 0x76});

            //// Now get the key/IV and do the encryption using the
            //// function that accepts byte arrays. 
            //// Using PasswordDeriveBytes object we are first getting
            //// 32 bytes for the Key 
            //// (the default Rijndael key length is 256bit = 32bytes)
            //// and then 16 bytes for the IV. 
            //// IV should always be the block size, which is by default
            //// 16 bytes (128 bit) for Rijndael. 
            //// If you are using DES/TripleDES/RC2 the block size is
            //// 8 bytes and so should be the IV size. 
            //// You can also read KeySize/BlockSize properties off
            //// the algorithm to find out the sizes. 
            //byte[] encryptedData = Encrypt(clearBytes,
            //         pdb.GetBytes(32), pdb.GetBytes(16));

            //// Now we need to turn the resulting byte array into a string. 
            //// A common mistake would be to use an Encoding class for that.
            ////It does not work because not all byte values can be
            //// represented by characters. 
            //// We are going to be using Base64 encoding that is designed
            ////exactly for what we are trying to do. 
            return Convert.ToBase64String(new System.Text.UnicodeEncoding().GetBytes(clearText));

        }

        // Encrypt bytes into bytes using a password 
        //    Uses Encrypt(byte[], byte[], byte[]) 

        public static byte[] Encrypt(byte[] clearData, string Password)
        {
            // We need to turn the password into Key and IV. 
            // We are using salt to make it harder to guess our key
            // using a dictionary attack - 
            // trying to guess a password by enumerating all possible words. 
            PasswordDeriveBytes pdb = new PasswordDeriveBytes(Password,
                new byte[] {0x49, 0x76, 0x61, 0x6e, 0x20, 0x4d, 
            0x65, 0x64, 0x76, 0x65, 0x64, 0x65, 0x76});

            // Now get the key/IV and do the encryption using the function
            // that accepts byte arrays. 
            // Using PasswordDeriveBytes object we are first getting
            // 32 bytes for the Key 
            // (the default Rijndael key length is 256bit = 32bytes)
            // and then 16 bytes for the IV. 
            // IV should always be the block size, which is by default
            // 16 bytes (128 bit) for Rijndael. 
            // If you are using DES/TripleDES/RC2 the block size is 8
            // bytes and so should be the IV size. 
            // You can also read KeySize/BlockSize properties off the
            // algorithm to find out the sizes. 
            return Encrypt(clearData, pdb.GetBytes(32), pdb.GetBytes(16));

        }

        // Encrypt a file into another file using a password 
        public static void Encrypt(string fileIn,
                    string fileOut, string Password)
        {

            // First we are going to open the file streams 
            FileStream fsIn = new FileStream(fileIn,
                FileMode.Open, FileAccess.Read);
            FileStream fsOut = new FileStream(fileOut,
                FileMode.OpenOrCreate, FileAccess.Write);

            // Then we are going to derive a Key and an IV from the
            // Password and create an algorithm 
            PasswordDeriveBytes pdb = new PasswordDeriveBytes(Password,
                new byte[] {0x49, 0x76, 0x61, 0x6e, 0x20, 0x4d, 
            0x65, 0x64, 0x76, 0x65, 0x64, 0x65, 0x76});

            Rijndael alg = Rijndael.Create();
            alg.Key = pdb.GetBytes(32);
            alg.IV = pdb.GetBytes(16);

            // Now create a crypto stream through which we are going
            // to be pumping data. 
            // Our fileOut is going to be receiving the encrypted bytes. 
            CryptoStream cs = new CryptoStream(fsOut,
                alg.CreateEncryptor(), CryptoStreamMode.Write);

            // Now will will initialize a buffer and will be processing
            // the input file in chunks. 
            // This is done to avoid reading the whole file (which can
            // be huge) into memory. 
            int bufferLen = 4096;
            byte[] buffer = new byte[bufferLen];
            int bytesRead;

            do
            {
                // read a chunk of data from the input file 
                bytesRead = fsIn.Read(buffer, 0, bufferLen);

                // encrypt it 
                cs.Write(buffer, 0, bytesRead);
            } while (bytesRead != 0);

            // close everything 

            // this will also close the unrelying fsOut stream
            cs.Close();
            fsIn.Close();
        }

        // Decrypt a byte array into a byte array using a key and an IV 
       
    }
}