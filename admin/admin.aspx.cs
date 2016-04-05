using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class admin_admin : System.Web.UI.Page
{
 SqlConnection con;
        string strbaglanti = "Data Source=.;Initial Catalog=TravelAgencySystem;Integrated Security=True";
        SqlCommand cmd;
  
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void newuser_Click(object sender, EventArgs e)
    {
        con = new SqlConnection(strbaglanti);
        try
        {
            con.Open();
            cmd.Parameters.AddWithValue("@ad", ad.Text);
            cmd.Parameters.AddWithValue("@soyad", soyad.Text);
            cmd.Parameters.AddWithValue("@role", role.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@mail", mail.Text);
            cmd.Parameters.AddWithValue("@tel", tel.Text);
            cmd.Parameters.AddWithValue("@k_parola", parola.Text);
            cmd = new SqlCommand("INSERT INTO UserContac(k_ad,k_soyad,k_email,k_tel,k_parola)VALUES(@ad,@soyad,@mail,@tel,@k_parola)", con);

            cmd.ExecuteNonQuery();
            con.Close();
            GridView1.DataBind();
            deleteuser.DataBind();
        }
        catch (Exception ex)
        {
            Response.Write("işlem başarısız" + ex.Message);
        }
    }
    protected void delete_Click(object sender, EventArgs e)
    {
        con = new SqlConnection(strbaglanti);
        con.Open();
        cmd = new SqlCommand("delete from UserContac where k_id = @k_id", con);

        cmd.Parameters.AddWithValue("@k_id", deleteuser.SelectedValue);

        cmd.ExecuteNonQuery();
        GridView1.DataBind();
        deleteuser.DataBind();
    }
}