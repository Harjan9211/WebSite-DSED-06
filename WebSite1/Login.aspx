<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <%--Responsive Page--%>
     <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no">
     <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
     <meta name="HandheldFriendly" content="true">
     <%--Responsive Page--%>
    <title></title>

       <link rel="stylesheet" href="css/bootstrap.min.css">
       <script src="js/jquery.js"></script>
       <script src="js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server" style=" border:5px solid #BD4604; margin-top:5%; margin-left:20%; margin-right:20%;">   
    <div class="container">
      <%--Login Page Heading --%>
        <div class="row">             
             <div class="col-sm-12 centered">
                      <h1 class="text-center" style="color:#bd4604;font-size:3vw;">&nbsp;&nbsp;&nbsp;Welcome to Student Information System</h1>                
             </div>
        </div>
        <div class="row">
         <%--Login page Left Pic--%>
             <div class="col-sm-6">
                  <div class="row">
                      <img src="myimages/databases.jpg" class="img-responsive" />
                  </div>
             </div>
            <%-- Login Page Username and Password column--%>
             <div class="col-sm-6" style="border-left:2px solid black;">                 
                      <table class="align-middle table-responsive" >
                                                <tr><td colspan="2"></td></tr>
                                                <tr><td colspan="2"></td></tr>
                                                <tr><td colspan="2"></td></tr>
                                                <tr><td colspan="2"><h2 class="text-center" style="color:#138496;font-size:3vw;">&nbsp;&nbsp; Member Login</h2></td></tr>                                               
                                                <tr><td>User Name:</td>
                                                    <td>
                                                    <asp:TextBox ID="TextBox2" class="form-control" runat="server"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                                         ErrorMessage="Username required" ControlToValidate="TextBox2">
                                                    </asp:RequiredFieldValidator> 
                                                    </td>
                                                </tr>
                                                <tr><td colspan="2"></td></tr>
                                                <tr><td>Password :</td>
                                                    <td>   
                                                        <asp:TextBox ID="TextBox3" runat="server" class="form-control" TextMode="Password"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Password required" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
                                                    </td>
                                                </tr>
                                                <tr><td colspan="2"></td></tr>
                                                <tr><td>&nbsp;</td>
                                                    <td>   
                                                        <asp:Button ID="Button1" runat="server" Text="Log in" class="btn btn-info btn-lg btn-block" onclick="Button1_Click" />                                                       
                                                    </td>
                                                </tr>
                                                <tr><td colspan="2"><asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr><td align="center" colspan="3"><b><i><a href="AdminLogin.aspx"><br />Admin Login Here ....</a></i></b>
                                                    </td>
                                                </tr>
                         </table>
             </div>
        </div>
        <div class="row">
             <div class="col-sm-6"></div>             
             <div class="col-sm-6"></div>
        </div>
    </div>  

    </form>
</body>
</html>
