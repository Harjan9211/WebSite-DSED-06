using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class AdminDashboard : System.Web.UI.Page
{
    SqlDataAdapter adap = new SqlDataAdapter();
    SqlConnection con = new SqlConnection();
    SqlCommand com = new SqlCommand();

    DataSet d = new DataSet();
    //public DataSet d;
    protected void Page_Load(object sender, EventArgs e)
    {
        searchall();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Close();
        d.Clear();
        con.ConnectionString = @"Data Source=DESKTOP-17CKR5L;Initial Catalog=DATABASE;Integrated Security=True";
        //con.ConnectionString = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|datadirectory|\Database.mdf;Integrated Security=True;User Instance=True";
        com.CommandType = CommandType.Text;
        com.CommandText = "select * from register where student_name like '" + TextBox1.Text + "%'";
        adap.SelectCommand = com;
        com.Connection = con;
        con.Open();
        adap.Fill(d);
        GridView1.DataSource = d;
        GridView1.DataBind();
      
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        searchall();
    }
    public void searchall()
    {
        con.Close();
        d.Clear();      
        con.ConnectionString = @"Data Source=DESKTOP-17CKR5L;Initial Catalog=DATABASE;Integrated Security=True";
        //con.ConnectionString = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|datadirectory|\Database.mdf;Integrated Security=True;User Instance=True";
        com.CommandType = CommandType.Text;
        com.CommandText = "select * from register";
        adap.SelectCommand = com;
        com.Connection = con;
        con.Open();
        adap.Fill(d);
        GridView1.DataSource = d;
        GridView1.DataBind();
        //GridView1.Columns[0].Visible = false;
    }
}