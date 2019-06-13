using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Default2 : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] == null)
        {
            Response.Redirect("/");
        }
        con = new SqlConnection("Data Source=(LocalDB)\\v11.0;AttachDbFilename='C:\\Users\\Babloo Singh\\Documents\\techcrunch.mdf';Integrated Security=True;Connect Timeout=30");
        con.Open();
    }
   
    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {
            cmd = new SqlCommand("INSERT INTO [dbo].[Blog] ([UserID], [Question], [Code], [Status], [Tags], [Msg] , [Date]) VALUES ("+Session["userid"]+",'"+TextBox1.Text+"', '"+TextBox2.Text+"', 0, 'question','Pending' ,'"+DateTime.Now+"')", con);
            cmd.ExecuteNonQuery();
            con.Close();
            Msg.Text = "Question Sucessfully Added";
            Response.Redirect("AddQuestion.aspx");
        }catch(Exception ex){
            Msg.Text=ex.Message.ToString();
        }

    }
}