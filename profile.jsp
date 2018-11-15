<%-- 
    Document   : profile
    Created on : Nov 14, 2018, 2:57:51 AM
    Author     : User
--%>

<%-- 
    Document   : status
    Created on : Oct 3, 2018, 3:09:20 PM
    Author     : User
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.util.*"%>
<%@page import="java.sql.Connection"%>

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
                                            <li class="active" ><a href="#header"> <%String name = (String) session.getAttribute("uname");
                                        out.print("Hello " + name);%><span class="sr-only">(current)</span> </a></li>
                                    <li><a href="login.jsp">Home </a></li>



                                    <li><a href="#contact">contact us</a></li>

                                    <li><a href="logout.jsp">logout</a></li>
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
        <div class="contact-form">
            <div>
            <fieldset>
                <legend>Personalia:</legend>

                NAME: <%=name%><br>


                <%

                    String na = (String) session.getAttribute("user");
                    Class.forName("com.mysql.jdbc.Driver");
                    // out.println("record inserted successfully 2");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tailor", "root", "");

                    String q = "select address from login where reg_id=?";
                    PreparedStatement ps = con.prepareStatement(q);
                    ps.setString(1, na);
                    ResultSet r = ps.executeQuery();
                    String nn = "";
                    if (r.next()) {
                        nn = r.getString(1);
                    }

                %>
                REGISTRATION ID: <%=na%><br>
                ADDRESS : <%=nn%>
            </fieldset>
        </div>
        <div>
            <form action="updateadd.jsp" method="POST">
                <fieldset>
                    <legend>Update delivery Address:</legend>
                    address:    <input type="text" placeholder="xyz district, xwq state" name="addr"><br><br>
                    <input type="submit" value="Update">
                </fieldset>
            </form>
        </div>

        <div>
            <form action="changepassword.jsp" method="POST">
                <fieldset>
                    <legend>Change Password:</legend>
                    Old Password:       <input type="password" placeholder="Enter password" name="opasswd"><br><br>
                    New Password:       <input type="password" placeholder="Enter password" name="npasswd"><br><br>
                    <input type="submit" value="Change">
                </fieldset>
            </form>
        </div>

        </div>
        <div>
            <div>
                <br><br><br>
                <%
                    /* SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

                        String o_id = request.getParameter("model");
                        String newadd = request.getParameter("addr");
                        String id = (String) session.getAttribute("user");
                        Date olddate = (Date) session.getAttribute("odate");
                        String pppp = request.getParameter("deldate");
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tailor", "root", "");
                        if (pppp.equals(null) || pppp.equals("")) {
                            if (newadd.equals(null) || newadd.equals("")) {
                                response.sendRedirect(request.getContextPath() + "/login.jsp");
                            }

                            String qp = "UPDATE login SET address = ? WHERE reg_id = ?;";
                            PreparedStatement p = con.prepareStatement(qp);
                            p.setString(1, newadd);
                            p.setString(2, id);

                            int r = p.executeUpdate();
                            if (r > 0) {
                                response.sendRedirect(request.getContextPath() + "/login.jsp");
                            } else {
                                response.sendRedirect(request.getContextPath() + "/ErrorWeb");
                            }

                        }
                        if (!(pppp.equals(null)) || !(pppp.equals(""))){
                        Date newdate = sdf.parse(pppp);
                        if (newdate.after(olddate)) {

                            java.sql.Timestamp date1 = new java.sql.Timestamp(newdate.getTime());
                            String qp = "update admin_list set deliver=? where order_id=?;";
                            PreparedStatement p = con.prepareStatement(qp);
                            p.setTimestamp(1, date1);
                            p.setString(2, o_id);

                            int r = p.executeUpdate();
                            if (r > 0) {

                                if (newadd.equals(null) || newadd.equals("")) {
                                    response.sendRedirect(request.getContextPath() + "/login.jsp");
                                }
                                
                                
                                String qp1 = "UPDATE login SET address = ? WHERE reg_id = ?;";
                                PreparedStatement p1 = con.prepareStatement(qp1);
                                p1.setString(1, newadd);
                                p1.setString(2, id);

                                int r1 = p1.executeUpdate();
                                if (r1 > 0) {
                                    response.sendRedirect(request.getContextPath() + "/login.jsp");
                                } else {
                                    response.sendRedirect(request.getContextPath() + "/ErrorWeb");
                                }

                            } else {
                                response.sendRedirect(request.getContextPath() + "/ErrorWeb");
                            }
                            out.println("\n hello world" + date1 + newdate);
                        } else {

                            /* if (newadd.equals(null) || newadd.equals("")) {
                                response.sendRedirect(request.getContextPath() + "/login.jsp");
                            } else {
                                String qp1 = "UPDATE login SET address = ? WHERE reg_id = ?;";
                                PreparedStatement p1 = con.prepareStatement(qp1);
                                p1.setString(1, newadd);
                                p1.setString(2, id);

                                int r1 = p1.executeUpdate();
                                if (r1 > 0) {
                                    response.sendRedirect(request.getContextPath() + "/login.jsp");
                                } else {
                                    response.sendRedirect(request.getContextPath() + "/ErrorWeb");
                                }
                            }*/
 /*         response.sendRedirect(request.getContextPath() + "/ErrorWeb");
                        }
                        }*/

                %>



                <!--<h1>Not Possible</h1><br> <a href="login.jsp">Click Here</a> to continue-->

            </div>
        </div>



        <!--Start of contact-->
        <section id="contact">
            <div class="container">
                <div class="row">
                    <div class="colmd-12">
                        <div class="contact_area text-center">
                            <h3>get in touch</h3>
                            <p>For any complains and suggestion, please mail us.</p>
                        </div>
                    </div>
                </div>
                <!--End of row-->
                <div class="row">
                    <div class="col-md-6">
                        <div class="office">
                            <div class="title">
                                <h5>our office info</h5>
                            </div>
                            <div class="office_location">
                                <div class="address">
                                    <i class="fa fa-map-marker"><span>Amritapuri, Kollam, Kerala</span></i>
                                </div>
                                <div class="phone">
                                    <i class="fa fa-phone"><span>+ 91 xxxxxxxxxx</span></i>
                                </div>
                                <div class="email">
                                    <i class="fa fa-envelope"><span>youremail@mail.com</span></i>
                                </div>
                                <div id="map"></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="msg">
                            <div class="msg_title">
                                <h5>Drop A Message</h5>
                            </div>
                            <div class="form_area">
                                <!-- CONTACT FORM -->
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
                        </div>
                    </div>
                    <!--End of col-md-6-->
                </div>
                <!--End of row-->
            </div>
            <!--End of container-->
        </section>
        <!--End of contact-->



        <!--Start of footer-->
        <section id="footer">
            <div class="container">
                <div class="row text-center">
                    <div class="col-md-6">
                        <div class="copyright">
                            <p>@ 2016 - Design By <span><a href="">&#9798;</a></span></p>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="designer">
                            <p>A Design By <a href="#">XpeedStudio</a></p>
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

