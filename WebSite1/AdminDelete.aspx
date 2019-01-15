<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminDelete.aspx.cs" Inherits="AdminDelete" %>

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
            <div class="col-sm-12">
                <div class="row">
                    <%--Delete Block Heading--%>
                    <div class="col-sm-12">
                         <h1 class="text-center" style="color:#BD4604;">Delete a Record</h1>
                         <center><a href="AdminDashboard.aspx">Home</a></center>
                    </div>
                </div>
                <div class="row">
                   <%--Delete Block Column--%>
                   <div class="col-sm-4"></div>
                   <div class="col-sm-4">
                     <table  class="table align-middle table-responsive">
                          
                            <tr >
                                <td align="center">Sid:</td>
                                <td><asp:TextBox ID="TextBox1" runat="server" Columns="90" class="form-control"></asp:TextBox></td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Student Id" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
                            </tr>
                         
                            <tr><td colspan="2"><center>
                            <asp:Button ID="Button1" runat="server" Text="Delete" class="btn btn-info" onclick="Button1_Click"/>
                            <asp:Button ID="Button2" runat="server" Text="Log Out" class="btn btn-info" 
                                    onclick="Button2_Click"/>
                            </center>
            </td>
        </tr>
    </table>
                   </div>
                   <div class="col-sm-4"></div>
               
            </div>
            </div>
        </div>
   </div>
    </form>
</body>
</html>
