using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
/// <summary>
/// Summary description for sis
/// </summary>
public class sis
{
    SqlDataAdapter adap = new SqlDataAdapter();
    SqlConnection con = new SqlConnection();
    SqlCommand com = new SqlCommand();
    DataSet d = new DataSet();

	public sis()
	{
		 
	}
   
    public bool register(string sid, String name, string age, string salary, string email,String dob,string phone,String address)
    {
        bool f = false;
        try
        {
            con.ConnectionString = @"Data Source=DESKTOP-17CKR5L;Initial Catalog=DATABASE;Integrated Security=True";
           // con.ConnectionString = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|datadirectory|\Database.mdf;Integrated Security=True;User Instance=True";
            com.CommandType = CommandType.Text;            
            com.CommandText = "insert into register values(" + sid + ",'" + name + "'," + age + "," + salary + ",'" + email + "','" + dob + "'," + phone + ",'"+ address + "')";
            adap.InsertCommand = com;
            com.Connection = con;
            con.Open();
            com.ExecuteNonQuery();
            f = true;
        }
        catch (Exception e1)
        {
            f = false;
        }
        return (f);
    }
    public DataSet search(string sid)
    {
        try
        {
            con.Close();
            d.Clear();
            con.ConnectionString = @"Data Source=DESKTOP-17CKR5L;Initial Catalog=DATABASE;Integrated Security=True";
            //con.ConnectionString = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|datadirectory|\Database.mdf;Integrated Security=True;User Instance=True";
            com.CommandType = CommandType.Text;
            com.CommandText = "select * from register where sid=" + sid;
            adap.SelectCommand = com;
            com.Connection = con;
            con.Open();
            adap.Fill(d);
             
        }
        catch (Exception e1)
        {
            
        }
        return (d);
    }
    public DataSet sphone(string ph)
    {
        try
        {
            con.Close();
            d.Clear();
            con.ConnectionString = @"Data Source=DESKTOP-17CKR5L;Initial Catalog=DATABASE;Integrated Security=True";
            //con.ConnectionString = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|datadirectory|\Database.mdf;Integrated Security=True;User Instance=True";
            com.CommandType = CommandType.Text;
            com.CommandText = "select * from register where phone=" + ph;
            adap.SelectCommand = com;
            com.Connection = con;
            con.Open();
            adap.Fill(d);

        }
        catch (Exception e1)
        {

        }
        return (d);
    }
    public DataSet sdob(string dob)
    {
        try
        {
            con.Close();
            d.Clear();
            con.ConnectionString = @"Data Source=DESKTOP-17CKR5L;Initial Catalog=DATABASE;Integrated Security=True";
            //con.ConnectionString = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|datadirectory|\Database.mdf;Integrated Security=True;User Instance=True";
            com.CommandType = CommandType.Text;
            com.CommandText = "select * from register where dob = '" + dob + "'";
            adap.SelectCommand = com;
            com.Connection = con;
            con.Open();
            adap.Fill(d);

        }
        catch (Exception e1)
        {

        }
        return (d);
    }
    public DataSet smail(string email)
    {
        try
        {
            con.Close();
            d.Clear();
            con.ConnectionString = @"Data Source=DESKTOP-17CKR5L;Initial Catalog=DATABASE;Integrated Security=True";
            //con.ConnectionString = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|datadirectory|\Database.mdf;Integrated Security=True;User Instance=True";
            com.CommandType = CommandType.Text;
            com.CommandText = "select * from register where email like '" + email + "%'";
            adap.SelectCommand = com;
            com.Connection = con;
            con.Open();
            adap.Fill(d);
            
        }
        catch (Exception e1)
        {

        }
        return (d);
    }
    public bool delete(string sid)
    {
        bool ff = false;
        try
        {
            con.ConnectionString = @"Data Source=DESKTOP-17CKR5L;Initial Catalog=DATABASE;Integrated Security=True";
            //con.ConnectionString = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|datadirectory|\Database.mdf;Integrated Security=True;User Instance=True";
            com.CommandType = CommandType.Text;
            com.CommandText = "delete from register where sid=" + sid;
            adap.DeleteCommand = com;
            com.Connection = con;
            con.Open();
            com.ExecuteNonQuery();
            ff = true;
        }
        catch (Exception e1)
        {
            ff = false;
        }
        return (ff);
    }
    public bool update(string sid, String name, string age, string salary, string email,String dob,string phone,String address)
    {
        bool ff = false;
        try
        {
            con.ConnectionString = @"Data Source=DESKTOP-17CKR5L;Initial Catalog=DATABASE;Integrated Security=True";
            //con.ConnectionString = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|datadirectory|\Database.mdf;Integrated Security=True;User Instance=True";
            com.CommandType = CommandType.Text;
            com.CommandText = "update register set student_name='" + name + "',age=" + age + ",salary=" + salary + ",email='" + email + "',dob='" + dob +"',phone=" + phone +",address='" + address +"' where sid=" + sid;
            adap.UpdateCommand = com;
            com.Connection = con;
            con.Open();
            com.ExecuteNonQuery();
            ff = true;
        }
        catch (Exception e1)
        {
            ff = false;
        }
        return (ff);
    }

   
   
   
}