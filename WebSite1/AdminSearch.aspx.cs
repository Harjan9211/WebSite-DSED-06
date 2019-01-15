using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class AdminSearch : System.Web.UI.Page
{
    public DataSet d;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        sis s = new sis();
        d = s.smail(TextBox1.Text);
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        sis s = new sis();
        d = s.sdob(TextBox2.Text);
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        sis s = new sis();
        d = s.sphone(TextBox3.Text);
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        sis s = new sis();
        d = s.search(TextBox4.Text);
    }
}