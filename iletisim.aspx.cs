﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class iletisim : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Label1.Text = "ilginiz için teşekkür ederiz en kısa sürede size dönüş yapılacaktır..";
        Textmail.Text = "";
        Textmsj.Text = "";
    }
}