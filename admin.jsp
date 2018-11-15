<%-- 
    Document   : admin
    Created on : Oct 3, 2018, 5:53:00 PM
    Author     : User
--%>


<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.util.*"%>
<%@page import="java.sql.Connection"%>
<%--<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>--%>


<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

        <title>Swathi Tailors</title>

        <!--    Google Fonts-->
        <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>

        <!--Fontawesom-->
        <link rel="stylesheet" href="css/font-awesome.min.css">

        <!--Animated CSS-->
        <link rel="stylesheet" type="text/css" href="css/animate.min.css">

        <!-- Bootstrap -->
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <!--Bootstrap Carousel-->
        <link type="text/css" rel="stylesheet" href="css/carousel.css" />

        <link rel="stylesheet" href="css/isotope/style.css">

        <!--Main Stylesheet-->
        <link href="css/style.css" rel="stylesheet">
        <!--Responsive Framework-->
        <link href="css/responsive.css" rel="stylesheet">

        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
        
        <style>
            fieldset { 
    display: block;
    margin-left: 2px;
    margin-right: 2px;
    padding-top: 0.35em;
    padding-bottom: 0.625em;
    padding-left: 0.75em;
    padding-right: 0.75em;
    border: 2px groove (internal value);
};
</style>
    </head>

    <body data-spy="scroll" data-target="#header">

        <!--Start Hedaer Section-->
        <section id="header">
            <div class="header-area">
                <div class="top_header">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4 zero_mp">
                                <div class="address">
                                    <i class="fa fa-home floatleft"></i>
                                    <p>Amritapuri, Kollam, Kerala</p>
                                </div>
                            </div>
                            <!--End of col-md-4-->
                            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4 zero_mp">
                                <div class="phone">
                                    <i class="fa fa-phone floatleft"></i>
                                    <p>+ 91 xxxxxxxxxx</p>
                                </div>
                            </div>
                            <!--End of col-md-4-->
                            <div class="col-md-4">
                                <div class="social_icon text-right">
                                    <a href=""><i class="fa fa-facebook"></i></a>
                                    <a href=""><i class="fa fa-twitter"></i></a>
                                    <a href=""><i class="fa fa-google-plus"></i></a>
                                    <a href=""><i class="fa fa-youtube"></i></a>
                                </div>
                            </div>
                            <!--End of col-md-4-->
                        </div>
                        <!--End of row-->
                    </div>
                    <!--End of container-->
                </div>
                <!--End of top header-->
                <div class="header_menu text-center" data-spy="affix" data-offset-top="50" id="nav">
                    <div class="container">
                        <nav class="navbar navbar-default zero_mp ">
                            <!-- Brand and toggle get grouped for better mobile display -->
                            <div class="navbar-header">
                                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                                    <span class="sr-only">Toggle navigation</span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                </button>
                                <a class="navbar-brand custom_navbar-brand" href="#"><h1>Swathi Tailors</h1></a>
                            </div>
                            <!--End of navbar-header-->

                            <!-- Collect the nav links, forms, and other content for toggling -->
                            <div class="collapse navbar-collapse zero_mp" id="bs-example-navbar-collapse-1">
                                <ul class="nav navbar-nav navbar-right main_menu">
                                    <li class="active"><a href="#header"> <%String name=(String)session.getAttribute("user1");  
out.print( name);  %> </a></li>
                                    
                                    <li><a href="http://localhost:8080/WebApplication1/admin.html">logout</a></li>
                                </ul>
                            </div>
                            <!-- /.navbar-collapse -->
                        </nav>
                        <!--End of nav-->
                    </div>
                    <!--End of container-->
                </div>
                <!--End of header menu-->
            </div>
            <!--end of header area-->
        </section>
        <!--End of Hedaer Section-->
                
        <style>
body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box;}

/* Button used to open the contact form - fixed at the bottom of the page */
.open-button {
  background-color: #555;
  color: white;
  padding: 16px 20px;
  border: none;
  cursor: pointer;
  opacity: 0.8;
  position: fixed;
  bottom: 23px;
  right: 28px;
  width: 280px;
}

/* The popup form - hidden by default */
.form-popup {
  display: none;
  position: fixed;
  bottom: 0;
  right: 15px;
  border: 3px solid #f1f1f1;
  z-index: 9;
}

/* Add styles to the form container */
.form-container {
  max-width: 300px;
  padding: 10px;
  background-color: white;
}

/* Full-width input fields */
.form-container input[type=text], .form-container input[type=password] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  border: none;
  background: #f1f1f1;
}

/* When the inputs get focus, do something */
.form-container input[type=text]:focus, .form-container input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}

/* Set a style for the submit/login button */
.form-container .btn {
  background-color: #4CAF50;
  color: white;
  padding: 16px 20px;
  border: none;
  cursor: pointer;
  width: 100%;
  margin-bottom:10px;
  opacity: 0.8;
}

/* Add a red background color to the cancel button */
.form-container .cancel {
  background-color: red;
}

/* Add some hover effects to buttons */
.form-container .btn:hover, .open-button:hover {
  opacity: 1;
}
</style>
<button class="open-button" onclick="openForm()">Update order status</button>

<div class="form-popup" id="myForm">
    <form action="updatestat.jsp" method="POST" class="form-container">
    <h1>Order Status</h1>

    <label for="orderid"><b>Order Id</b></label>
    <input type="text" placeholder="Enter order Id" name="orderid" required>

    

    <button type="submit" class="btn">Update</button>
    <button type="button" class="btn cancel" onclick="closeForm()">Close</button>
  </form>
</div>

<script>
function openForm() {
    document.getElementById("myForm").style.display = "block";
}

function closeForm() {
    document.getElementById("myForm").style.display = "none";
}
</script>

        <%
                    
                    
                   // out.println("record inserted successfully 1");
           
                   
            Class.forName("com.mysql.jdbc.Driver");
           // out.println("record inserted successfully 2");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/tailor","root","");
            //out.println("record inserted successfully 3");
             String qp="select * from orders";
             PreparedStatement p=con.prepareStatement(qp);
             ResultSet r=p.executeQuery();%><br>
             <style>
table, th, td {
    border: 1px solid black;
    text-align: center;
}
</style>
             <table>
  <tr>
    <th>Registration</th>
    <th>     Order Id  </th>
    <th>   Order Status    </th>
    <th>  Delivery date</th>
    
  </tr>
   <%
             while(r.next())
             {
                 String rid = r.getString(1);
                   String oid = r.getString(2);
                   String os = r.getString(3);
                   
                   String q="select deliver from admin_list where order_id=?";
             PreparedStatement pp=con.prepareStatement(q);
             pp.setString(1,oid);
             ResultSet r1=pp.executeQuery();
             String oa="";
             if(r1.next())
             {
                 oa=r1.getString(1);
             }
                   String stat="";
                   if(os.equals("0"))
                       stat="not ready";
                   else
                       stat="ready";
         %>
  <tr>
    <td><%=rid%></td>
   
    <td> <%=oid%> </td>
    <td> <%=stat%> </td>
    <td> <%=oa%> </td>
  </tr>        
          
          <%
                 
             }
            %>
             </table>
            <%
    String qps="select reg_id, address from login";
             PreparedStatement pw=con.prepareStatement(qps);
             ResultSet rr=pw.executeQuery();%><br>
             <style>
table, th, td {
    border: 1px solid black;
    text-align: center;
}
</style>
<br><br>
<br>
             <table>
  <tr>
    <th>Registration</th>
    <th>  Delivery Address</th>
  </tr>
   <%
             while(rr.next())
             {
                 String id = rr.getString(1);
                   String od = rr.getString(2);
                  
         %>
  <tr>
    <td><%=id%></td>
   
    <td> <%=od%> </td>
  </tr>        
          
          <%
                 
             }
            %>
                                        </table>
                   <!--
                                        <section id="contact">
                                            
                                             <div class="form_area">
     <!-- CONTACT FORM 
     <div class="contact-form wow fadeIn animated" data-wow-offset="10" data-wow-duration="1.5s">
         <div id="message"></div>
         <form action="scripts/contact.php" class="form-horizontal contact-1" role="form" name="contactform" id="contactform">
             <div class="form-group">
                 <div class="col-sm-6">
                     <input type="text" class="form-control" name="name" id="name" placeholder="Name">
                 </div>
                 <div class="col-sm-6">
                     <input type="text" class="form-control" name="email" id="email" placeholder="Email">
                 </div>
             </div>
             <div class="form-group">
                 <div class="col-sm-12">
                     <input type="subject" class="form-control" id="subject" placeholder="Subject *">
                     <div class="text_area">
                         <textarea name="contact-message" id="msg" class="form-control" cols="30" rows="8" placeholder="Message"></textarea>
                     </div>
                     <button type="submit" class="btn custom-btn" data-loading-text="Loading...">Send</button>
                 </div>
             </div>
         </form>
     </div>
 </div>
                                            
                                        </section> -->
         
                                            
       
                                                   
<style>
body
{

background-color: #f0ad4e;
background-repeat: no-repeat;
background-size: cover;
}
</style>

 <!--Start of footer-->
        <section id="footer">
            <div class="container">
                <div class="row text-center">
                    <div class="col-md-6">
                        <div class="copyright">
                            <p>@ 2018 - Design By <span><a href="">&#9798;</a></span></p>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="designer">
                            <p>A Design By <a href="#">Sai Sindhu Akula</a></p>
                        </div>
                    </div>
                </div>
                <!--End of row-->
            </div>
            <!--End of container-->
        </section>
        <!--End of footer-->



        <!--Scroll to top-->
        <a href="#" id="back-to-top" title="Back to top">&uarr;</a>
        <!--End of Scroll to top-->


        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <!-- <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.2/jquery.min.js'></script>-->
        <script src="js/jquery-1.12.3.min.js"></script>

        <!--Counter UP Waypoint-->
        <script src="js/waypoints.min.js"></script>
        <!--Counter UP-->
        <script src="js/jquery.counterup.min.js"></script>

        <script>
            //for counter up
            $('.counter').counterUp({
                delay: 10,
                time: 1000
            });
        </script>

        <!--Gmaps-->
        <script src="js/gmaps.min.js"></script>
        <script type="text/javascript">
            var map;
            $(document).ready(function () {
                map = new GMaps({
                    el: '#map',
                    lat: 23.6911078,
                    lng: 90.5112799,
                    zoomControl: true,
                    zoomControlOpt: {
                        style: 'SMALL',
                        position: 'LEFT_BOTTOM'
                    },
                    panControl: false,
                    streetViewControl: false,
                    mapTypeControl: false,
                    overviewMapControl: false,
                    scrollwheel: false,
                });


                map.addMarker({
                    lat: 23.6911078,
                    lng: 90.5112799,
                    title: 'Office',
                    details: {
                        database_id: 42,
                        author: 'Foysal'
                    },
                    click: function (e) {
                        if (console.log)
                            console.log(e);
                        alert('You clicked in this marker');
                    },
                    mouseover: function (e) {
                        if (console.log)
                            console.log(e);
                    }
                });
            });
        </script>
        <!--Google Maps API-->
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBjxvF9oTfcziZWw--3phPVx1ztAsyhXL4"></script>


        <!--Isotope-->
        <script src="js/isotope/min/scripts-min.js"></script>
        <script src="js/isotope/cells-by-row.js"></script>
        <script src="js/isotope/isotope.pkgd.min.js"></script>
        <script src="js/isotope/packery-mode.pkgd.min.js"></script>
        <script src="js/isotope/scripts.js"></script>


        <!--Back To Top-->
        <script src="js/backtotop.js"></script>


        <!--JQuery Click to Scroll down with Menu-->
        <script src="js/jquery.localScroll.min.js"></script>
        <script src="js/jquery.scrollTo.min.js"></script>
        <!--WOW With Animation-->
        <script src="js/wow.min.js"></script>
        <!--WOW Activated-->
        <script>
            new WOW().init();
        </script>


        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="js/bootstrap.min.js"></script>
        <!-- Custom JavaScript-->
        <script src="js/main.js"></script>
    </body>

</html>
