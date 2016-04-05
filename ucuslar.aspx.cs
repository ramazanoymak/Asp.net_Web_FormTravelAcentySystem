using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class ucuslar : System.Web.UI.Page
{ SqlConnection con;
        string strbaglanti = "Data Source=.;Initial Catalog=TravelAgencySystem;Integrated Security=True";
        SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {

        con = new SqlConnection(strbaglanti);
        cmd = new SqlCommand("SELECT startPlace, endPlace, startDate, endDate, f_price, f_resim, destination FROM dbo.FlightInfo", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        con.Close();
        DataList1.DataSource = dt;
        DataList1.DataBind();

    }
}