<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Search.aspx.cs" Inherits="Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 
    <div class="container border border-info bg-gray" style="margin-top:10px; padding-top:2%;">
     <div class="row">
           <%--Search Block Heading--%>
           <div class="col-sm-12 centered">  
               <h1 class="text-center" style="color:#BD4604;">Search a Student</h1>
               <center><a href="Default.aspx">Home</a></center>
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
     </div>


   
   
</asp:Content>

