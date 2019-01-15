using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class UserRegister : System.Web.UI.Page

{
    SqlDataAdapter adap = new SqlDataAdapter();
    SqlConnection con = new SqlConnection();
    SqlCommand com = new SqlCommand();
    DataSet d = new DataSet();

    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox1.Enabled = false;
        Autogenrate();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        sis s = new sis();
        bool f = s.register(TextBox1.Text, TextBox2.Text, TextBox3.Text, TextBox4.Text, TextBox5.Text, TextBox6.Text, TextBox7.Text, TextBox8.Text);
        if (f == true)
        {
            Response.Write("<script language='javascript'>alert('Registered');</script>");
            Autogenrate();
            //TextBox1.Text="";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox7.Text = "";
            TextBox8.Text = "";
        }
        else
        {
            Response.Write("<script language='javascript'>alert('Problem in Registeration');</script>");
            Autogenrate();
            //TextBox1.Text = "";
        }
    }
    public void Autogenrate()
    {
        int r;
        //con.ConnectionString = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|datadirectory|\Database.mdf;Integrated Security=True;User Instance=True";
        con.ConnectionString = @"Data Source=DESKTOP-17CKR5L;Initial Catalog=DATABASE;Integrated Security=True";
        con.Open();
        SqlCommand cmd = new SqlCommand("Select max(sid) from register", con);
        SqlDataReader dr = cmd.ExecuteReader();

        if (dr.Read())
        {

            string d = dr[0].ToString();
            if (d == "")
            {
                TextBox1.Text = "1";

            }
            else
            {

                r = Convert.ToInt32(dr[0].ToString());
                r = r + 1;
                TextBox1.Text = r.ToString();
            }
        }
        con.Close();
    }
   
   
}