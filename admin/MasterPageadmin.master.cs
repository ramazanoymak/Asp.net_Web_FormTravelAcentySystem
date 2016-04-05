using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class admin_MasterPageadmin : System.Web.UI.MasterPage
{
  
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["role"] == null || Session["role"].ToString() != "1")
        {
            Response.Write(@"<script language='javascript'>alert('Yetkisiz Giriş');window.location = 'http://localhost:38525/TravelAcentySystem/Giris_yap.aspx';</script>");
        }

    }
    protected void exit_Click(object sender, EventArgs e)
    {

       
        Response.Redirect("http://localhost:7801/anasayfa.aspx");
    }
}
