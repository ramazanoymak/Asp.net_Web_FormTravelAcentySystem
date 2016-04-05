using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPageIndex : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
       panelrole.Visible = false; 
        pnlgirilmedi.Visible = true;
        pnlgirildi.Visible = false;
        Pnlsagirilmedi.Visible = true;
        Pnlsagirildi.Visible = false;
       

        if (Session["kullanici"] != null)
        {
            pnlgirilmedi.Visible = false;
            pnlgirildi.Visible = true;
            Pnlsagirilmedi.Visible = false;
            Pnlsagirildi.Visible = true;
            lbl_kullanici.Text = Session["kullanici"].ToString();
            if(Session["role"].ToString() == "1"){ panelrole.Visible = true;}
           
        }
       

        

    }
    protected void Btncikis_Click(object sender, EventArgs e)
    {

        Session.Abandon();
        Response.Redirect("anasayfa.aspx");
    }
    protected void ara_Click(object sender, EventArgs e)
    {
        
        if(ucus.Checked)
        {
        
        
        }
    }
}
