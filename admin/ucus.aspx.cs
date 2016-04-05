using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Drawing;
using System.IO;
using System.Data.SqlClient;
public partial class admin_ucus : System.Web.UI.Page
{ SqlConnection con;
        string strbaglanti = "Data Source=.;Initial Catalog=TravelAgencySystem;Integrated Security=True";
        SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void add_Click(object sender, EventArgs e)
    {
        string resimadi = ""; string uzanti = "";
        if (upfileresim.HasFile)
        {
            uzanti = Path.GetExtension(upfileresim.PostedFile.FileName);
            resimadi = u_ad.Text + DateTime.Now.Day + uzanti;
            upfileresim.SaveAs(Server.MapPath("../images/ucusresim/silinecek" + uzanti));

            int deger = 160;
            Bitmap resim = new Bitmap(Server.MapPath("../images/ucusresim/silinecek" + uzanti));
            using (Bitmap yeniresim = resim)
            {
                double yukseklik = yeniresim.Height;
                double genislik = yeniresim.Width;

                if (genislik >= deger)
                {

                    genislik = deger;
                    yukseklik = deger - 10;

                    Size yenidegerler = new Size(Convert.ToInt32(genislik), Convert.ToInt32(yukseklik));
                    Bitmap sonresim = new Bitmap(yeniresim, yenidegerler);
                    sonresim.Save(Server.MapPath("../images/ucusresim/hotel" + resimadi));
                    sonresim.Dispose();
                    yeniresim.Dispose();
                    resim.Dispose();
                }
                else
                {
                    upfileresim.SaveAs(Server.MapPath("../images/ucusresim/hotel" + resimadi));
                }

            }
            FileInfo fsilinecek = new FileInfo(Server.MapPath("../images/ucusresim/silinecek" + uzanti));
            fsilinecek.Delete();
        }
        con = new SqlConnection(strbaglanti);
        con.Open();
        cmd = new SqlCommand("INSERT INTO [dbo].[FlightInfo] ([startPlace],[endPlace],[startDate],[endDate],[destination],[tname],[f_price],[f_resim])VALUES(@ustartplace,@uendplace,@ustartdate,@uenddate,@destination,@uprice,@uresim)", con);

        cmd.Parameters.AddWithValue("@ustartplace", u_basyeri.Text);
        cmd.Parameters.AddWithValue("@uendplace", u_bitsyeri.Text);
        cmd.Parameters.AddWithValue("@ustartdate", u_bastime.Text);
        cmd.Parameters.AddWithValue("@uenddate", u_bitstime.Text);
        cmd.Parameters.AddWithValue("@destination", u_bilgi.Text);
        cmd.Parameters.AddWithValue("@uname", u_ad.Text);
        cmd.Parameters.AddWithValue("@uprice", u_ucret.Text);
        cmd.Parameters.AddWithValue("@uresim", resimadi);

        cmd.ExecuteNonQuery();
        con.Close();
        GridView2.DataBind();
        DropDownList1.DataBind();

    }
    protected void del_Click(object sender, EventArgs e)
    {
        con = new SqlConnection(strbaglanti);
        con.Open();
        cmd = new SqlCommand("delete from FlightInfo where f_id = @fid", con);
        cmd.Parameters.AddWithValue("@fid", DropDownList1.SelectedValue);

        cmd.ExecuteNonQuery();
        GridView2.DataBind();
        DropDownList1.DataBind();
        con.Close();

    }
}