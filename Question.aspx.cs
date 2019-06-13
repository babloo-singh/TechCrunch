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
    public SqlCommand cmd, cmd1;
    public SqlDataReader r,rs;
    public void Page_Load(object sender, EventArgs e)
    {
         con = new SqlConnection("Data Source=(LocalDB)\\v11.0;AttachDbFilename='C:\\Users\\Babloo Singh\\Documents\\techcrunch.mdf';Integrated Security=True;Connect Timeout=30;MultipleActiveResultSets=True");
        con.Open();
        cmd = new SqlCommand("SELECT [User].Name,Blog.* FROM Blog INNER JOIN [User] ON Blog.UserID = [User].UserID AND BlogID='" + Request.QueryString["id"] + "' ", con);
        r = cmd.ExecuteReader();
        cmd1 = new SqlCommand("SELECT Professional.Name,Comment.* FROM Comment INNER JOIN Professional ON Comment.PID = Professional.PID AND BlogID='" + Request.QueryString["id"] + "' ", con);
        rs = cmd1.ExecuteReader();
        
    }
}