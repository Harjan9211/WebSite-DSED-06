<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminDashboard.aspx.cs" Inherits="AdminDashboard" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>admin panel</title>

    <!-- Bootstrap -->
    <link href="css/dashboard/admindashbootstrap.min.css" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" href="css/dashboard/admindash.css" type="text/css" />

  </head>
  <body>
  <div class="container-fluid " style="margin-left:10%; margin-right:10%;">
  <div class="row">   
     <div class="col-12">
          <h1>ADMIN DASHBOARD</h1>	     
     </div>    
  </div>
 
 <div class="row">
  <div class="col-md-1"></div>
  <div class="col-md-5">
    <div class="thumbnail">
      <a href="AdminRegister.aspx">
        <img src="images/dash/register.png" alt="Register" style="width:100%"/>
        <div class="caption">
          <p>Register</p>
        </div>
      </a>
    </div>
  </div>
  <div class="col-md-5">
    <div class="thumbnail">
      <a href="AdminUpdate.aspx">
        <img src="images/dash/update.jpg" alt="Update" style="width:100%"/>
        <div class="caption">
          <p>Update</p>
        </div>
      </a>
    </div>
  </div>
  <div class="col-md-1"></div>
  </div>
  <div class="row">
  <div class="col-md-1"></div>
  <div class="col-md-5">
    <div class="thumbnail">
      <a href="AdminSearch.aspx">
        <img src="images/dash/Search.jpg" alt="Search" style="width:100%"/>
        <div class="caption">
          <p>Search</p>
        </div>
      </a>
    </div>
  </div>
  <div class="col-md-5">
    <div class="thumbnail">
      <a href="AdminDelete.aspx">
        <img src="images/dash/delete.jpg" alt="Delete" style="width:100%"/>
        <div class="caption">
          <p>Delete</p>
        </div>
      </a>
    </div>
  </div>
  <div class="col-md-1"></div>
 </div> 
         <div class="row">
     <div class="col-md-1"></div>
     <div class="col-md-10" >
         <div class="row">
             <div class="col-md-12">
                   <h1>Students Record In a List</h1>
             </div>
         </div> 
        </div>
     <div class="col-md-1"></div>
      </div> 
         <div class="row" >
         <form id="gv" runat="server">
           <div class="row">
              <div class="col-sm-3"></div>
              <div class="col-sm-6">
                 <table class="table align-middle table-responsive">
                      <tr>
                          <td><span>Name </span></td>
                          <td><asp:TextBox ID="TextBox1" runat="server"  class="form-control"></asp:TextBox></td>
                          <td><asp:Button ID="Button1" runat="server" Text="Search" onclick="Button1_Click" class="btn btn-info" />
                          <asp:Button ID="Button2" runat="server" Text="Show all" onclick="Button2_Click" class="btn btn-info" /></td>
                      </tr>
                 </table>           
              </div>
              <div class="col-sm-3"></div>
           </div>
           <div class="row" style="height:200px; overflow:auto;">
                  <div class="col-12">
                      <asp:GridView ID="GridView1" runat="server" CssClass="table table-striped table-bordered" >
                      
                      </asp:GridView>
                  </div>
          </div>
            
          </form>
          </div>
     
   
 
 <div class="row">   
     <div class="col-12">
         <h1><a href="Default.aspx"><button type="button" class="btn btn-primary btn-lg btn-block">Log Out</button></a></h1>           
     </div>    
  </div></div>
  <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="js/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
    </div>
</body>
</html>
