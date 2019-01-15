using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminDelete : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        sis s = new sis();
        bool f = s.delete(TextBox1.Text);
        if (f == true)
        {
            Response.Write("<script language='javascript'>alert('Deleted');</script>");
            TextBox1.Text = "";
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
}