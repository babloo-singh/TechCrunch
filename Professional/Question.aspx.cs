using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Question : System.Web.UI.Page
{
    public SqlConnection con;
    public SqlCommand cmd, cmd1,cmd2;
    public SqlDataReader r,rs;
    public void Page_Load(object sender, EventArgs e)
    {
        //Add your database string here before the string within
        con = new SqlConnection("MultipleActiveResultSets=True");
        con.Open();
        cmd = new SqlCommand("SELECT [User].Name,Blog.* FROM Blog INNER JOIN [User] ON Blog.UserID = [User].UserID AND BlogID='" + Request.QueryString["id"] + "' ", con);
        r = cmd.ExecuteReader();
        cmd1 = new SqlCommand("SELECT Professional.Name,Comment.* FROM Comment INNER JOIN Professional ON Comment.PID = Professional.PID AND BlogID='" + Request.QueryString["id"] + "' ", con);
        rs = cmd1.ExecuteReader();
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cmd2 = new SqlCommand("INSERT INTO [dbo].[Comment] ([Comment], [PID], [BlogID], [Date]) VALUES ('" + TextBox1.Text + "'," + Session["proid"] + "," + Request.QueryString["id"] + ",'" + DateTime.Now + "')", con);
        cmd2.ExecuteNonQuery();
        con.Close();
        Msg.Text = "Comment Added ";
        Response.Redirect(Request.RawUrl);
    }
}