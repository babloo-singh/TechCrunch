using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Default : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataReader r;
    protected void Page_Load(object sender, EventArgs e)
    {
        
        con = new SqlConnection("Data Source=(LocalDB)\\v11.0;AttachDbFilename='C:\\Users\\Babloo Singh\\Documents\\techcrunch.mdf';Integrated Security=True;Connect Timeout=30");
        con.Open();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cmd = new SqlCommand("select * from dbo.[Admin] WHERE Name='" + TextBox1.Text + "'and Password='" + TextBox2.Text + "'", con);
        r = cmd.ExecuteReader();
        if (r.HasRows)
        {
            while (r.Read())
            {
                Session["admin"] = r.GetString(1);
                r.Close();
                Response.Redirect("~/Admin/NewQuestion.aspx");
            }
        }
    }
}