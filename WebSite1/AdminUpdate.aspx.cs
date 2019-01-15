using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class AdminUpdate : System.Web.UI.Page
{
    public DataSet d;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        sis s = new sis();
        d = s.search(TextBox1.Text);
        TextBox1.Text = d.Tables[0].Rows[0][1].ToString();
        TextBox2.Text = d.Tables[0].Rows[0][2].ToString();
        TextBox3.Text = d.Tables[0].Rows[0][3].ToString();
        TextBox4.Text = d.Tables[0].Rows[0][4].ToString();
        TextBox5.Text = d.Tables[0].Rows[0][5].ToString();
        TextBox6.Text = d.Tables[0].Rows[0][6].ToString();
        TextBox7.Text = d.Tables[0].Rows[0][7].ToString();
        TextBox8.Text = d.Tables[0].Rows[0][8].ToString();
        TextBox1.Enabled = false;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
       
        sis s = new sis();
        bool f = s.update(TextBox1.Text, TextBox2.Text, TextBox3.Text, TextBox4.Text, TextBox5.Text,TextBox6.Text,TextBox7.Text,TextBox8.Text);
        if (f == true)
        {
            Response.Write("<script language='javascript'>alert('Updated');</script>");
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        TextBox1.Enabled = true;
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
        TextBox7.Text = "";
        TextBox8.Text = "";
    }
    
}