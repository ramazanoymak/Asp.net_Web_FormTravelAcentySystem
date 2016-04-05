using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class anasayfa : System.Web.UI.Page
{
     SqlConnection con;
        string strbaglanti = "Data Source=.;Initial Catalog=TravelAgencySystem;Integrated Security=True";
        SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(strbaglanti);
        cmd = new SqlCommand("SELECT p_name, p_price, description, p_resim FROM dbo.Package",con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt= new DataTable();
        da.Fill(dt);
        con.Close();
        DataList1.DataSource = dt;
        DataList1.DataBind();
    }
}
