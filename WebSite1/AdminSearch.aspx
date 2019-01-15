<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminSearch.aspx.cs" Inherits="AdminSearch" %>

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
           <%--Search Block Heading--%>
           <div class="col-sm-12 centered">  
               <h1 class="text-center" style="color:#BD4604;">Search a Student</h1>
               <center><a href="AdminDashboard.aspx">My DashBoard</a></center>
           </div>
     </div>
     <div class="row">
           <div class="col-sm-4"></div>
          <%-- Search Design --%>
           <div class="col-sm-4">
        <table class="table align-middle table-responsive">
             <tr>
                       <td> <asp:Label ID="Label1" runat="server" Text="Email"></asp:Label></td>
                       <td> <asp:TextBox ID="TextBox1" runat="server"  class="form-control"></asp:TextBox></td>
                       <td><asp:Button ID="Button1" runat="server" Text="Search" class="btn btn-info" onclick="Button1_Click" /></td>
             </tr>
             <tr>
                 
                        <td><asp:Label ID="Label2" runat="server" Text="DOB"></asp:Label></td>
                        <td><asp:TextBox ID="TextBox2" runat="server"  class="form-control" type="Date"></asp:TextBox></td>
                        <td><asp:Button ID="Button2" runat="server" Text="Search" class="btn btn-info" onclick="Button2_Click"  /></td> 
                 
             </tr>
             <tr>
                 
                        <td><asp:Label ID="Label3" runat="server" Text="Phone"></asp:Label></td>
                        <td><asp:TextBox ID="TextBox3" runat="server" class="form-control"></asp:TextBox></td>
                        <td><asp:Button ID="Button3" runat="server" Text="Search" class="btn btn-info" onclick="Button3_Click"/> </td>
                
             </tr>
             <tr>
               
                        <td><asp:Label ID="Label4" runat="server" Text="SID"></asp:Label></td>
                        <td><asp:TextBox ID="TextBox4" runat="server"  class="form-control"></asp:TextBox></td>
                        <td><asp:Button ID="Button4" runat="server" Text="Search" class="btn btn-info" onclick="Button4_Click" /></td>
                   
             
             </tr>
        </table>
       

      </div>
           <div class="col-sm-4"></div>
     </div>
     <div class="row" style="margin-top:10px; margin-bottom:10px;">
         <div class="col-sm-3"></div>
         <%--Fetch data from database and display in table--%>
         <div class="col-sm-6">

       

        

        <table class="table table-bordered">
            <tr class="table-active"><th>Student Id </th><th> Student Name </th><th> Age </th><th> Salary </th><th> Email Id</th>
                                     <th> DOB </th><th> Phone </th><th> Address</th>
            </tr>
            <tr><td><%try { Response.Write(d.Tables[0].Rows[0][1]); }catch(Exception e1){} %></td>
                <td><%try{Response.Write(d.Tables[0].Rows[0][2]);}catch(Exception e1){} %></td>
                <td><%try { Response.Write(d.Tables[0].Rows[0][3]); } catch (Exception e1) { } %></td>
                <td><%try { Response.Write(d.Tables[0].Rows[0][4]); } catch (Exception e1) { } %></td>
                <td><%try { Response.Write(d.Tables[0].Rows[0][5]); }catch (Exception e1) { } %></td>
                <td><%try { Response.Write(d.Tables[0].Rows[0][6]); } catch (Exception e1) { } %></td>
                <td><%try { Response.Write(d.Tables[0].Rows[0][7]); } catch (Exception e1) { } %></td>
                <td><%try { Response.Write(d.Tables[0].Rows[0][8]); }catch (Exception e1) { } %></td>
            </tr>
        </table> 
          </div>
         <div class="col-sm-3"></div>
     </div>
     <div class="row">   
     <div class="col-12">
         <h1><center><a href="Default.aspx"><button type="button" class="btn btn-info">Log Out</button></a></center></h1>           
     </div>    
  </div>
    </div>
    </form>
</body>
</html>
