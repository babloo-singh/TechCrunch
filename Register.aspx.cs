using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Register : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        //Add your database string here
        con = new SqlConnection("");
        con.Open();
        if (Request.QueryString["str"] != null)
        {
            Msg.Text = Request.QueryString["str"];
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            cmd = new SqlCommand("INSERT INTO [dbo].[User] ( [Name], [Email], [Password]) VALUES ('" + TextBox1.Text + "', '" + TextBox2.Text + "', '" + TextBox3.Text + "')", con);
            cmd.ExecuteNonQuery();
            con.Close();
            //Msg.Text = "Registration Successful!!! Login ";
            Response.Redirect("Register.aspx?msg=Registration Successful!!! Login");
        }
        catch (Exception ex)
        {
            Msg.Text = ex.Message.ToString();
        }
    }
}