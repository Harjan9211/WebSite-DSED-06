<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserUpdate.aspx.cs" Inherits="UserUpdate" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   
        <link rel="stylesheet" href="css/bootstrap.min.css" />
        <script src="js/jquery.js"></script>
        <script src="js/bootstrap.min.js"></script>

        <!-- Responsive Code -->
        <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no"/>
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
        <meta name="HandheldFriendly" content="true"/>
        <!-- Responsive Code Ends -->
</head>
<body>
    <form id="form1" runat="server">
    <div class="container border border-info bg-gray" style="margin-top:10px; padding-top:2%;">
       <div class="row">
               <%--<div class="col-sm-1">
               </div>--%>
               <div class="col-sm-12">
                   <div class="row">
           <%--Update Block Heading--%>
           <div class="col-sm-12">
               <h1 class="text-center" style="color:#BD4604;">Update</h1>
               
           </div>
           <div class="col-sm-10"><center><a href="userdash.aspx">My DashBoard</a>&nbsp;&nbsp;</center></div>
           <div class="col-sm-2">
                       <asp:Button ID="Button3" runat="server" Text="Log Out" class="btn btn-info pull-right" 
            onclick="Button3_Click" />
           </div>
         </div>
         <div class="row" style="margin-top:2%;">
          <%-- Update Block Column--%>
           <div class="col-sm-4" style="padding-left:2%;">
                 <img src="myimages/update.jpg" alt="" class="img-responsive" height="550px" width="98%"/>
           </div>
           <div class="col-sm-8">
                <table class="table align-middle table-responsive">
    
        <tr><td>Sid:</td><td>
            <asp:TextBox ID="TextBox1" runat="server" Columns="90" class="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Student Id" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
            </td></tr>       
        <tr><td>Name:</td><td>
            <asp:TextBox ID="TextBox2" runat="server" class="form-control"></asp:TextBox></td></tr>
    
        <tr><td>Age:</td><td>
            <asp:TextBox ID="TextBox3" runat="server" class="form-control"></asp:TextBox></td></tr>
       
        <tr><td>Salary</td><td>
            <asp:TextBox ID="TextBox4" runat="server" class="form-control"></asp:TextBox></td></tr>
     
        <tr><td>Email</td><td>
            <asp:TextBox ID="TextBox5" runat="server" class="form-control"></asp:TextBox></td></tr>

            <tr><td>DOB</td><td>
            <asp:TextBox ID="TextBox6" runat="server" class="form-control" type="Date"></asp:TextBox></td></tr>

            <tr><td>Phone</td><td>
            <asp:TextBox ID="TextBox7" runat="server" class="form-control"></asp:TextBox></td></tr>

            <tr><td>Address</td><td>
            <asp:TextBox ID="TextBox8" runat="server" class="form-control" TextMode="MultiLine"></asp:TextBox></td></tr>
     
    <tr><td colspan="2">  <center>    
        <asp:Button ID="Button1" runat="server" Text="Load" class="btn btn-info" onclick="Button1_Click"/>
                          &nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Text="Update" class="btn btn-info" onclick="Button2_Click" />
          
       
      
        </center></td>

    </tr>
 
    </table>
           </div>
     </div>
               </div>
              
                    
              
       </div>
       
     </div>
    </form>
</body>
</html>
