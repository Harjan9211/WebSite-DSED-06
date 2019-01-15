<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="AdminLogin" Debug="true" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>admin login</title>

    <!-- Bootstrap -->
   <link href="css/dashboard/admindashbootstrap.min.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="css/dashboard/admindash.css" type="text/css">


<style>

body, html {
    height: 100%;
}

.card-container.card {
    max-width: 400px;
    padding: 40px 40px;
	margin-top:50px;
	height:470px;
	border-radius:14px;
}

.btn {
    font-weight: 700;
    height: 36px;
    -moz-user-select: none;
    -webkit-user-select: none;
    user-select: none;
    cursor: default;
}

/*
 * Card component
 */
 .card {
    background-color: #F7F7F7;
    /* just in case there no content*/
    padding: 20px 25px 30px;
    margin: 0 auto 25px;
    margin-top: 50px;
    /* shadows and rounded borders */
    -moz-border-radius: 2px;
    -webkit-border-radius: 2px;
    border-radius: 2px;
    -moz-box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
    -webkit-box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
    box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
}


.profile-img-card {
    width: 140px;
    height: 120px;
	
    margin: 0 auto 10px;
    display: block;
    -moz-border-radius: 50%;
    -webkit-border-radius: 50%;
    border-radius: 50%;
}


</style>

</head>
<body>
    <form id="form1" runat="server">
   <div class="container">
 <img src="images/login/download1.png" class=" img-rounded img-responsive" style="height:80px; width:1200px;margin-top:30px;"/>
        <div class="card card-container">
            <!-- <img class="profile-img-card" src="//lh3.googleusercontent.com/-6V8xOA6M7BA/AAAAAAAAAAI/AAAAAAAAAAA/rzlHcD0KYwo/photo.jpg?sz=120" alt="" /> -->
            <img id="profile-img" class="profile-img-card img-responsive" src="images/login/admin.png"/>
             
             <table class="table align-middle table-responsive" >                                                                                                
                                                <tr><td>User Name:</td>
                                                    <td>
                                                    <asp:TextBox ID="TextBox2" class="form-control" runat="server"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                                         ErrorMessage="Username required" ControlToValidate="TextBox2">
                                                    </asp:RequiredFieldValidator> 
                                                    </td>
                                                </tr>                                              
                                                <tr><td>Password :</td>
                                                    <td>   
                                                        <asp:TextBox ID="TextBox3" runat="server" class="form-control" TextMode="Password"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Password required" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
                                                    </td>
                                                </tr>                                               
                                                <tr><td colspan="2">
                                                        <asp:Button ID="Button1"  runat="server" Text="Submit" class="btn btn-primary btn-lg btn-block " onclick="Button1_Click" />
                                                    </td>
                                                </tr>
                                                <tr><td colspan="2"><asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
                                                                    <b><i><a href="Default.aspx"><br />Click here to go Home Page ....</a></i></b>
                                                    </td>
                                                </tr>                                              
                         </table>

           

        </div><!-- /card-container -->
		<img src="images/login/images (20).jpg" class="img-rounded img-responsive" style="height:100px; width:1200px;"/>
    </div><!-- /container -->
    </form>
</body>
</html>
