using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Text;


public partial class Kayit_ol : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        
      
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string sql;
        string strbaglanti = "Data Source=.;Initial Catalog=TravelAgencySystem;Integrated Security=True";
       SqlConnection con;
       SqlCommand cmd;
        
        
            try
            {
                con = new SqlConnection(strbaglanti);
                con.Open();
               

                
                SqlParameter k_ad = new SqlParameter("@k_ad",Textk_ad.Text);
                SqlParameter k_email = new SqlParameter("@k_email", Textemail.Text);
                SqlParameter k_parola = new SqlParameter();
                if (Textpassword.Text == TextBox4.Text)
                 {
                          k_parola = new SqlParameter("@k_parola", Textpassword.Text);
                }
                else
                {
                                    Label1.Text = "Parolalar eşleşmiyor!!";

                }
                sql="insert into UserContac(k_ad,k_email,k_parola) VALUES (@k_ad,@k_email,@k_parola)";
                cmd = new SqlCommand(sql, con);
               
                cmd.Parameters.Add(k_ad);
                cmd.Parameters.Add(k_email);
                cmd.Parameters.Add(k_parola);
               
                cmd.ExecuteNonQuery();
                con.Close();

                Response.Write("<script>alert('Üyelik işlemi başariyla gerçekleşmiştir..')</script>");
                Textk_ad.Text = "";
                Textemail.Text = "";
                Textpassword.Text = "";
                TextBox4.Text = "";


            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('işlem başarızsız')</script>"+ ex.Message);
            }
        }
    }

