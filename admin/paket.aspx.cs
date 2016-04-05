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
public partial class admin_paket : System.Web.UI.Page
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
            resimadi = p_ad.Text + DateTime.Now.Day + uzanti;
            upfileresim.SaveAs(Server.MapPath("../images/paketresim/silinecek" + uzanti));

            int deger = 160;
            Bitmap resim = new Bitmap(Server.MapPath("../images/paketresim/silinecek" + uzanti));
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
                    sonresim.Save(Server.MapPath("../images/paketresim/hotel" + resimadi));
                    sonresim.Dispose();
                    yeniresim.Dispose();
                    resim.Dispose();
                }
                else
                {
                    upfileresim.SaveAs(Server.MapPath("../images/paketresim/hotel" + resimadi));
                }

            }
            FileInfo fsilinecek = new FileInfo(Server.MapPath("../images/paketresim/silinecek" + uzanti));
            fsilinecek.Delete();
        }
        con = new SqlConnection(strbaglanti);
        con.Open();
        cmd = new SqlCommand("INSERT INTO [dbo].[Package] ([h_id],[t_id],[f_id],[p_name],[p_price,][destination],[tname],[p_resim])VALUES(@h_id,@t_id,@f_id,@p_ad,@p_price,@destination,@p_resim)", con);

        cmd.Parameters.AddWithValue("@h_id", drpdwnhotel.SelectedValue);
        cmd.Parameters.AddWithValue("@t_id", drpdwntur.SelectedValue);
        cmd.Parameters.AddWithValue("@f_id", drpdwnucus.SelectedValue);
        cmd.Parameters.AddWithValue("@p_ad",p_ad.Text );
        cmd.Parameters.AddWithValue("@p_price",p_fiyat.Text );
        cmd.Parameters.AddWithValue("@destination",p_bilgi.Text);
        cmd.Parameters.AddWithValue("@p_resim", resimadi);

        cmd.ExecuteNonQuery();
        con.Close();
        GridView2.DataBind();
        DropDownList1.DataBind();

    }
    protected void del_Click(object sender, EventArgs e)
    {
        con = new SqlConnection(strbaglanti);
        con.Open();
        cmd = new SqlCommand("delete from Package where p_id = @pid", con);
        cmd.Parameters.AddWithValue("@pid", DropDownList1.SelectedValue);

        cmd.ExecuteNonQuery();
        GridView2.DataBind();
        DropDownList1.DataBind();
        con.Close();
    }
}