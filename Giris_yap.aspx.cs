using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class Giris_yap : System.Web.UI.Page
{
 SqlConnection con;
        string strbaglanti = "Data Source=.;Initial Catalog=TravelAgencySystem;Integrated Security=True";
        SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        Panelgiris.Visible = true;
        Panelkullanici.Visible = false;
        if (Session["kullanici"] != null)
        {
            Panelgiris.Visible = false;
            Panelkullanici.Visible = true;          
            Label2.Text = Session["kullanici"].ToString();
        }
       
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       
         
        try
        {
            con = new SqlConnection(strbaglanti);
            con.Open();

            cmd = new SqlCommand("select k_id,k_ad,k_parola from UserContac where k_ad='" + TextBox1.Text + "' and k_parola='" + TextBox2.Text + "'", con);
            SqlDataReader dr;

            dr = cmd.ExecuteReader();

            if (dr.Read())
            {
               
                Session["role"] = dr["k_id"].ToString();
                Session["kullanici"] = dr["k_ad"].ToString();
                Response.Redirect("Giris_yap.aspx");
               
            }
           
            else{
            Response.Write("<script>alert('kullanıcı adı veya parola yanlış')</script>");
            }
            con.Close();
            

        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('işlem başarızsız')</script>");
        }
    }
}