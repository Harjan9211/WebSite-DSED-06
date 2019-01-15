<%@ Page Language="C#" AutoEventWireup="true" CodeFile="userdash.aspx.cs" Inherits="userdash" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <link href="css/style.css" rel="stylesheet" type="text/css" />
        <link href="css/nav.css" rel="stylesheet" type="text/css" />
        <link rel="stylesheet" href="css/bootstrap.min.css" />

        <script src="js/jquery.js"></script>
        <script src="js/bootstrap.min.js"></script>

        <!-- Responsive Code -->
        <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no"/>
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
        <meta name="HandheldFriendly" content="true"/>
        <!-- Responsive Code Ends -->

        <!-- CuFon: Enables smooth pretty custom font rendering. 100% SEO friendly. To disable, remove this section -->
        <script type="text/javascript" src="js/cufon-yui.js"></script>
        <script type="text/javascript" src="js/arial.js"></script>
        <script type="text/javascript" src="js/cuf_run.js"></script>
        <!-- CuFon ends -->

       

         <!-- Slider Code  -->
         <script src="js/popper.min.js"></script>
         <style>
            /* Make the image fully responsive */
             .carousel-inner img {
              width: 100%;
              height: 100%;
              }
         </style>
         <!-- Slider Code Ends  -->

</head>
<body>
    <form id="form1" runat="server">
       <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
<div>
   
<!-- Navigation -->
<%--<nav class="navbar navbar-expand-lg navbar-dark bg-dark static-top">--%>
  <div class="container">
        <br />
        <div class="row">
            <div class="col-5">
                 <%--<a class="navbar-brand">--%>
                 <a>
                  <div class="logo"><h5><a href="Default.aspx"><span>Student</span> info<small></small></a></h5></div>
                 </a>
            </div>
            <div class="col-7">
                 <nav id="nav" role="navigation"> <a href="#nav" title="Show navigation">Show navigation</a> <a href="#" title="Hide navigation">Hide navigation</a>
      <ul class="clearfix">
    <li><a href="userdash.aspx">Home</a></li> 
    <li> <a href=""><span>Operation</span></a>
          <ul>
        <li><a href="UserUpdate.aspx">Update</a></li>  
       
        <li><a href="UserRegister.aspx">Register</a></li>             
      </ul>
        </li>
        <li><a href="usersearch.aspx">Search</a></li>    
        <li><a href="Default.aspx">Log Out</a></li>
  </ul>
</nav>
  

            </div>
        </div>
         <br />
  
    

  </div>
<%--</nav>--%>


<%--Slider--%>
<div class="container mt-3 border border-info">
<div id="myCarousel" class="carousel slide" style="max-height:460px; overflow:hidden;">

  <!-- Indicators -->
  <ul class="carousel-indicators">
    <li class="item1 active"></li>
    <li class="item2"></li>
    <li class="item3"></li>
  </ul>
  
  <!-- The slideshow -->
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="slider/information.jpg" alt="Los Angeles" width="1100" height="500">
    </div>
    <div class="carousel-item">
      <img src="slider/information1.jpg" alt="Chicago" width="1100" height="500">
    </div>
    <div class="carousel-item">
      <img src="slider/information2.jpg" alt="New York" width="1100" height="500">
    </div>
  </div>
  
  <!-- Left and right controls -->
  <a class="carousel-control-prev" href="#myCarousel">
    <span class="carousel-control-prev-icon"></span>
  </a>
  <a class="carousel-control-next" href="#myCarousel">
    <span class="carousel-control-next-icon"></span>
  </a>
</div>
</div>

<script>
    $(document).ready(function () {
        // Activate Carousel
        $("#myCarousel").carousel();

        // Enable Carousel Indicators
        $(".item1").click(function () {
            $("#myCarousel").carousel(0);
        });
        $(".item2").click(function () {
            $("#myCarousel").carousel(1);
        });
        $(".item3").click(function () {
            $("#myCarousel").carousel(2);
        });

        // Enable Carousel Controls
        $(".carousel-control-prev").click(function () {
            $("#myCarousel").carousel("prev");
        });
        $(".carousel-control-next").click(function () {
            $("#myCarousel").carousel("next");
        });
    });
</script>


 
    
     
   
    
   <%--Three Columns Contact , About --%>
  <div class="FBG" style="margin-top:15px;">
    <div class="FBG_resize">
      <div class="container">
         <div class="row border-top border-bottom border-success" style="padding-top:5px; padding-bottom:5px;">
            <div class="col-12">
                 <div class="row">
                 <%-- Contact Us Column--%>
                 <div class="col-sm-3">
                    <div class="bg-info" style="padding-left:15px;">
                       
        <h2 class="text-center"><span>Image</span> Gallery</h2>
        <img src="images/gallery_1.gif" alt="img" width="68" height="68"/><img src="images/gallery_2.gif" alt="img" width="68" height="68" /><img src="images/gallery_3.gif" alt="img" width="68" height="68" /><img src="images/gallery_4.gif" alt="img" width="68" height="68" /><img src="images/gallery_5.gif" alt="img" width="68" height="68" /><img src="images/gallery_6.gif" alt="img" width="68" height="68" />
        <div class="clr"></div>
        <h2 class="text-center">Contact Info </h2>
        <p><strong>Phone</strong>: +1234567<br />
          <strong>Address</strong>: 123 Put Your  Address Here <br />
          <strong>E-mail:</strong> me@jungleland.com<br />
        <a href="#">contact page</a></p>
        <p><br/></p>    
        
      </div>
                 </div>
                 <%--  Gif Pic--%>
                  <div class="col-sm-6">
                    <img class="border-info" style="border:2px solid blue;" src="myimages/system.gif" alt="" height="400px"/>
                 <div>                 
        
        <p><br />
        </p>
      </div>
              </div>
                  <%--About System Column--%>
                  <div class="col-sm-3">
                   <div class="bg-info text-justify">
        <h2 class="text-center"><span>About</span> System</h2>
        <p>A student information system (SIS), student management system, school administration software or student administration system is a management information system for education establishments to manage student data.</p>
        <p>most Student Information Systems offer functionality along these lines:</p>
        <p>It is a centralized platform for hosting and managing student data. It stores data like class schedules, school events, student performance, athletic eligibility, individual health records, and much more.</p>
      
        </div>
              </div>
                 </div>
            </div>
              
              
             
         </div>
      </div>
    
      <div class="clr"></div>
    </div>
  </div>
 <%-- Footer--%>
  <div class="footer">
    <div class="container">
        <div class="row">
            <div class="col-12">                
                       <p>© Copyright Student Info WebSite. Designed by ..... <a href="......">Aman</a></p>             
            </div>
        </div>
    </div>
    
  </div>
  <script src="js/jquery.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="/js/main.js"></script>
<script src="/js/doubletaptogo.js"></script> 
  
<script>
    $(function () {
        $('#nav li:has(ul)').doubleTapToGo();
    });
</script>
  </div>
    </form>
</body>
</html>
