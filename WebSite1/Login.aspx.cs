﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
            //SqlConnection con = new SqlConnection();
            //con.ConnectionString = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=|datadirectory|\Database.mdf;Integrated Security=True";
            ////con.ConnectionString = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|datadirectory|\Database.mdf;Integrated Security=True;User Instance=True";
            //try
            //{
            //    string uid = TextBox2.Text;
            //    string pass = TextBox3.Text;
            //    con.Open();
            //    string qry = "select * from login where username='" + uid + "' and password='" + pass + "'";
            //    SqlCommand cmd = new SqlCommand(qry, con);
            //    SqlDataReader sdr = cmd.ExecuteReader();
            //    if (sdr.Read())
            //    {
            //        //Label1.Text = "Login Sucess......!!";
            //        Response.Redirect("Home.aspx");
            //    }
            //    else
            //    {
            //        Label1.Text = "UserName & Password Is not correct Try again..!!";

            //    }
            //    con.Close();
            //}
            //catch (Exception ex)
            //{
            //    Response.Write(ex.Message);
            //}

        SqlConnection con = new SqlConnection();
        con.ConnectionString = @"Data Source=DESKTOP-17CKR5L;Initial Catalog=DATABASE;Integrated Security=True";
        //con.ConnectionString = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|datadirectory|\Database.mdf;Integrated Security=True;User Instance=True";
        try
        {
            string uid = TextBox2.Text;
            string pass = TextBox3.Text;
            con.Open();
            string qry = "select * from register where sid='" + uid + "' and sid='" + pass + "'";
            SqlCommand cmd = new SqlCommand(qry, con);
            SqlDataReader sdr = cmd.ExecuteReader();
            if (sdr.Read())
            {
                
                Session["FirstName"] = TextBox2.Text;
                Response.Redirect("userdash.aspx");
              
              
            }
            else
            {
                Label1.Text = "UserName & Password Is not correct Try again..!!";

            }
            con.Close();
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
        
    }
}