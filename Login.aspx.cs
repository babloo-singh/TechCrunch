﻿using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataReader r;
    protected void Page_Load(object sender, EventArgs e)
    {
        //Add your database string here
        con = new SqlConnection("");
        con.Open();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cmd = new SqlCommand("select * from dbo.[User] WHERE Email='" + TextBox1.Text + "' and Password='" + TextBox2.Text + "'", con);
        r = cmd.ExecuteReader();
        if (r.HasRows)
        {
            while (r.Read())
            {
                Session["user"] = r.GetString(1);
                Session["userid"] = r.GetInt32(0);
                r.Close();
                Response.Redirect("~/");
            }
        }
    }
}