using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Drawing;

public partial class admin_hotel : System.Web.UI.Page{
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
            resimadi = h_ad.Text + DateTime.Now.Day + uzanti;
            upfileresim.SaveAs(Server.MapPath("../images/hotelresim/silinecek" + uzanti));

            int deger = 160;
            Bitmap resim = new Bitmap(Server.MapPath("../images/hotelresim/silinecek" + uzanti));
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
                    sonresim.Save(Server.MapPath("../images/hotelresim/hotel" + resimadi));
                    sonresim.Dispose();
                    yeniresim.Dispose();
                    resim.Dispose();
                }
                else
                {
                    upfileresim.SaveAs(Server.MapPath("../images/hotelresim/hotel" + resimadi));
                }

            }
            FileInfo fsilinecek = new FileInfo(Server.MapPath("../images/hotelresim/silinecek" + uzanti));
            fsilinecek.Delete();
        }
        con = new SqlConnection(strbaglanti);
        con.Open();
        cmd = new SqlCommand("INSERT INTO [dbo].[Hotel] ([h_adi],[h_adres],[h_ozellikler],[h_resim])VALUES(@hname,@hadres,@hozellik,@resim)", con);

        cmd.Parameters.AddWithValue("@hname",h_ad.Text );
        cmd.Parameters.AddWithValue("@hadres",h_adres.Text);
        cmd.Parameters.AddWithValue("@hozellik", h_ozellik.Text);
        cmd.Parameters.AddWithValue("@resim", resimadi);


        cmd.ExecuteNonQuery();
        con.Close();
        GridView2.DataBind();
        DropDownList1.DataBind();

    }
    protected void del_Click(object sender, EventArgs e)
    {
        con = new SqlConnection(strbaglanti);
        con.Open();
        cmd = new SqlCommand("delete from Hotel where h_id = @hid", con);
        cmd.Parameters.AddWithValue("@hid", DropDownList1.SelectedValue);

        cmd.ExecuteNonQuery();
        GridView2.DataBind();
        DropDownList1.DataBind();
        con.Close();
    }
}