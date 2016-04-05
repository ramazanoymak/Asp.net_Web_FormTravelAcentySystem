using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for metot
/// </summary>
public class metot
{
             SqlConnection con;
             string strbaglanti = "Data Source=IDEA-PC;Initial Catalog=TravelAgencySystem;Integrated Security=True;";
             SqlDataAdapter da;
             DataSet ds;
             SqlCommand cmd;
	public metot()
	{

       
		//
		// TODO: Add constructor logic here
		//
        
         
	}
   public void ekle(string sql)
    {
            con = new SqlConnection(strbaglanti);
            cmd = new SqlCommand(sql, con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
     
    }
   
   
}
 

