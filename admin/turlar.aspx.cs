using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.IO;
public partial class admin_turlar : System.Web.UI.Page
{
    SqlConnection con;
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
            resimadi = t_ad.Text + DateTime.Now.Day + uzanti;
            upfileresim.SaveAs(Server.MapPath("../images/tur resim/silinecek" + uzanti));

            int deger = 160;
            Bitmap resim = new Bitmap(Server.MapPath("../images/tur resim/silinecek" + uzanti));
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
                    sonresim.Save(Server.MapPath("../images/tur resim/hotel" + resimadi));
                    sonresim.Dispose();
                    yeniresim.Dispose();
                    resim.Dispose();
                }
                else
                {
                    upfileresim.SaveAs(Server.MapPath("../images/tur resim/hotel" + resimadi));
                }

            }
            FileInfo fsilinecek = new FileInfo(Server.MapPath("../images/tur resim/silinecek" + uzanti));
            fsilinecek.Delete();
        } 
            con = new SqlConnection(strbaglanti);
            con.Open();
            cmd = new SqlCommand("INSERT INTO [dbo].[TourInfo] ([startPlace],[endPlace],[startDate],[endDate],[destination],[tname],[t_price],[t_resim])VALUES(@tstartplace,@tendplace,@tstartdate,@tenddate,@destination,@tprice,@tresim)", con);

            cmd.Parameters.AddWithValue("@tstartplace", t_basyeri.Text);
            cmd.Parameters.AddWithValue("@tendplace", t_bitsyeri.Text);
            cmd.Parameters.AddWithValue("@tstartdate", t_bastime.Text);
            cmd.Parameters.AddWithValue("@tenddate", t_bitstime.Text);
            cmd.Parameters.AddWithValue("@destination", t_bilgi.Text);
            cmd.Parameters.AddWithValue("@tname", t_ad.Text);
            cmd.Parameters.AddWithValue("@tprice", t_ucret.Text);
            cmd.Parameters.AddWithValue("@tresim", resimadi);

            cmd.ExecuteNonQuery();
            con.Close();
            GridView2.DataBind();
            DropDownList1.DataBind();

       

    }
    protected void del_Click(object sender, EventArgs e)
    {
        con = new SqlConnection(strbaglanti);
        con.Open();
        cmd = new SqlCommand("delete from TourInfo where t_id = @tid", con);
        cmd.Parameters.AddWithValue("@tid", DropDownList1.SelectedValue);

        cmd.ExecuteNonQuery();
        GridView2.DataBind();
        DropDownList1.DataBind();
        con.Close();

    }
}