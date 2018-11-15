<%-- 
    Document   : makeorder
    Created on : Oct 18, 2018, 10:56:57 AM
    Author     : User
--%>

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
                                    <li><a href="#"> <%String name=(String)session.getAttribute("uname");  
            out.print("Hello "+name);%> </a></li>
                                    <li class="active"><a href="login.jsp">Home <span class="sr-only">(current)</span></a></li>
                                    
                                   
                                    
                                    <li><a href="logout.jsp">logout</a></li>
                                </ul>
                            </div>
                                    <div class="collapse navbar-collapse zero_mp" id="bs-example-navbar-collapse-1">
                                
                                <ul class="nav navbar-nav navbar-left main_menu">
                                    <li><a href="#lehenga">Lehenga</a></li>
                                    <li>   <a href="#kurti">Kurti</a></li>
                                    <li>   <a href="#blouse">Blouse</a></li>
                                    <li> <a href="#shirt">Shirt</a></li>
                                    <li>   <a href="#kurta">Men Kurta</a></li>
                                    <li>   <a href="#suit">Men Suit</a></li>
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
       

        <section>
            <div class="collapse navbar-collapse zero_mp" id="bs-example-navbar-collapse-1">
                                
                            </div>
            <style>
body {font-family: Arial, Helvetica, sans-serif;}
/* The Modal (background) */
.modal {
    display: none; /* Hidden by default */
    position: fixed; /* Stay in place */
    z-index: 1; /* Sit on top */
    padding-top: 100px; /* Location of the box */
    left: 0;
    top: 0;
    width: 100%; /* Full width */
    height: 100%; /* Full height */
    overflow: auto; /* Enable scroll if needed */
    background-color: rgb(0,0,0); /* Fallback color */
    background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
}
/* Modal Content */
.modal-content {
    background-color: #fefefe;
    margin: auto;
    padding: 20px;
    border: 1px solid #888;
    width: 80%;
}
/* The Close Button */
.close {
    color: #aaaaaa;
    float: right;
    font-size: 28px;
    font-weight: bold;
}
.close:hover,
.close:focus {
    color: #000;
    text-decoration: none;
    cursor: pointer;
}
</style>
<style>
* {box-sizing: border-box;}
.container1 {
  position: relative;
  width: 100%;
  max-width: 100%;
}
.image {
  display: block;
  width: 100%;
  height: auto;
}
.overlay {
  position: absolute; 
  bottom: 0; 
  background: rgb(0, 0, 0);
  background: rgba(0, 0, 0, 0.5); /* Black see-through */
  color: #f1f1f1; 
  width: 100%;
  transition: .5s ease;
  opacity:0;
  color: red;
  font-size: 20px;
  padding: 20px;
  text-align: center;
}
.container1:hover .overlay {
  opacity: 1;
}
</style>
            <div>
                <table>
                    <tr><td><div class="container1">
                                <img src="img/b1.jpg"  class="image" >
                                <div class="overlay">Item no. : B101
                                    <form action="order1.jsp" method="POST">
                                        <input type="checkbox" name="model" value="B101" checked>
                                        <select name="size">
                                            <option value="small">small</option>
                                            <option value="medium">medium</option>
                                            <option value="large">large</option>
                                            <option value="free">Free</option>
                                            </select>
                                        <input type="submit" value="Proceed"></form></div></div>
                        </td><td><div class="container1">
                                <img src="img/b2.jpg"  class="image">
                                <div class="overlay">Item no. : B102
                                    <form action="order1.jsp" method="POST">
                                        <input type="checkbox" name="model" value="B102" checked>
                                         <select name="size">
                                            <option value="small">small</option>
                                            <option value="medium">medium</option>
                                            <option value="large">large</option>
                                            <option value="free">Free</option>
                                            </select>
                                        <input type="submit" value="Proceed"></form></div></div>
                        </td><td><div class="container1">
                                <img src="img/b3.jpg"  class="image">
                                <div class="overlay">Item no. : B103
                                    <form action="order1.jsp" method="POST">
                                        <input type="checkbox" name="model" value="B103" checked>
                                         <select name="size">
                                            <option value="small">small</option>
                                            <option value="medium">medium</option>
                                            <option value="large">large</option>
                                            <option value="free">Free</option>
                                            </select>
                                        <input type="submit" value="Proceed"></form></div></div>
                        </td><td><div class="container1">
                                <img src="img/b4.jpg"  class="image">
                                <div class="overlay">Item no. : B104
                                    <form action="order1.jsp" method="POST">
                                        <input type="checkbox" name="model" value="B104" checked>
                                         <select name="size">
                                            <option value="small">small</option>
                                            <option value="medium">medium</option>
                                            <option value="large">large</option>
                                            <option value="free">Free</option>
                                            </select>
                                        <input type="submit" value="Proceed"></form></div></div></td></tr>
                    <tr><td><div class="container1">
                                <img src="img/ms1.jpg"  class="image">
                                <div class="overlay">Item no. : MS101
                                     <form action="order1.jsp" method="POST">
                                        <input type="checkbox" name="model" value="MS101" checked>
                                         <select name="size">
                                            <option value="small">small</option>
                                            <option value="medium">medium</option>
                                            <option value="large">large</option>
                                            <option value="free">Free</option>
                                            </select>
                                        <input type="submit" value="Proceed"></form>
                                </div></div></td>
                        <td><div class="container1">
                                <img src="img/ms2.jpg"  class="image">
                                <div class="overlay">Item no. : MS102
                                 <form action="order1.jsp" method="POST">
                                        <input type="checkbox" name="model" value="MS102" checked>
                                         <select name="size">
                                            <option value="small">small</option>
                                            <option value="medium">medium</option>
                                            <option value="large">large</option>
                                            <option value="free">Free</option>
                                            </select>
                                        <input type="submit" value="Proceed"></form></div></div></td>
                        <td><div class="container1">
                             <img src="img/ms3.jpg"  class="image">
                                   <div class="overlay">Item no. : MS103
                                       <form action="order1.jsp" method="POST">
                                        <input type="checkbox" name="model" value="MS103" checked>
                                         <select name="size">
                                            <option value="small">small</option>
                                            <option value="medium">medium</option>
                                            <option value="large">large</option>
                                            <option value="free">Free</option>
                                            </select>
                                        <input type="submit" value="Proceed"></form></div></div></td>
                        <td><div class="container1">
                              <img src="img/ms4.jpg"  class="image">
                                         <div class="overlay">Item no. : MS104
                                                      <form action="order1.jsp" method="POST">
                                        <input type="checkbox" name="model" value="MS104" checked>
                                         <select name="size">
                                            <option value="small">small</option>
                                            <option value="medium">medium</option>
                                            <option value="large">large</option>
                                            <option value="free">Free</option>
                                            </select>
                                        <input type="submit" value="Proceed"></form></div></div></td></tr>
                    <tr>
                        <td><div class="container1">
                           <img src="img/c1.jpg"  class="image">
                                <div class="overlay">Item no. : C101
                                          <form action="order1.jsp" method="POST">
                                        <input type="checkbox" name="model" value="C101" checked>
                                         <select name="size">
                                            <option value="small">small</option>
                                            <option value="medium">medium</option>
                                            <option value="large">large</option>
                                            <option value="free">Free</option>
                                            </select>
                                        <input type="submit" value="Proceed"></form></div></div></td>
                          <td><div class="container1">
                             <img src="img/c2.jpg"  class="image">
                                   <div class="overlay">Item no. : C102
                                            <form action="order1.jsp" method="POST">
                                        <input type="checkbox" name="model" value="C102" checked>
                                         <select name="size">
                                            <option value="small">small</option>
                                            <option value="medium">medium</option>
                                            <option value="large">large</option>
                                            <option value="free">Free</option>
                                            </select>
                                        <input type="submit" value="Proceed"></form>
                                             </div></div></td>
                        <td><div class="container1">
                            <img src="img/c3.jpg"  class="image">
                           <div class="overlay">Item no. : C103
                                            <form action="order1.jsp" method="POST">
                                        <input type="checkbox" name="model" value="C103" checked>
                                         <select name="size">
                                            <option value="small">small</option>
                                            <option value="medium">medium</option>
                                            <option value="large">large</option>
                                            <option value="free">Free</option>
                                            </select>
                                        <input type="submit" value="Proceed"></form></div></div></td>
                        <td><div class="container1">
                                  <img src="img/c4.jpg"  class="image">
                                      <div class="overlay">Item no. : C104
                                                      <form action="order1.jsp" method="POST">
                                        <input type="checkbox" name="model" value="C104" checked>
                                         <select name="size">
                                            <option value="small">small</option>
                                            <option value="medium">medium</option>
                                            <option value="large">large</option>
                                            <option value="free">Free</option>
                                            </select>
                                        <input type="submit" value="Proceed"></form></div></div></td></tr>
                    <tr>
                        <td><div class="container1">
                            <img src="img/m1.jpg"  class="image">
                                     <div class="overlay">Item no. : M101
                                           <form action="order1.jsp" method="POST">
                                        <input type="checkbox" name="model" value="M101" checked>
                                         <select name="size">
                                            <option value="small">small</option>
                                            <option value="medium">medium</option>
                                            <option value="large">large</option>
                                            <option value="free">Free</option>
                                            </select>
                                        <input type="submit" value="Proceed"></form></div></div></td>
                        <td><div class="container1">
                         <img src="img/m2.jpg"  class="image">
                                   <div class="overlay">Item no. : M102
                                                     <form action="order1.jsp" method="POST">
                                        <input type="checkbox" name="model" value="M102" checked>
                                         <select name="size">
                                            <option value="small">small</option>
                                            <option value="medium">medium</option>
                                            <option value="large">large</option>
                                            <option value="free">Free</option>
                                            </select>
                                        <input type="submit" value="Proceed"></form></div></div></td>
                        <td><div class="container1">
                             <img src="img/m3.jpg"  class="image">
                                   <div class="overlay">Item no. : M103
                                                          <form action="order1.jsp" method="POST">
                                        <input type="checkbox" name="model" value="M103" checked>
                                         <select name="size">
                                            <option value="small">small</option>
                                            <option value="medium">medium</option>
                                            <option value="large">large</option>
                                            <option value="free">Free</option>
                                            </select>
                                        <input type="submit" value="Proceed"></form></div></div></td>
                        <td><div class="container1">
                            <img src="img/m4.jpg"  class="image">
                                   <div class="overlay">Item no. : M104
                                                             <form action="order1.jsp" method="POST">
                                        <input type="checkbox" name="model" value="M104" checked>
                                         <select name="size">
                                            <option value="small">small</option>
                                            <option value="medium">medium</option>
                                            <option value="large">large</option>
                                            <option value="free">Free</option>
                                            </select>
                                        <input type="submit" value="Proceed"></form></div></div></td></tr>
                    <tr>
                        <td><div class="container1">
                            <img src="img/l1.jpg"  class="image">
                                 <div class="overlay">Item no. : L101
                                               <form action="order1.jsp" method="POST">
                                        <input type="checkbox" name="model" value="L101" checked>
                                         <select name="size">
                                            <option value="small">small</option>
                                            <option value="medium">medium</option>
                                            <option value="large">large</option>
                                            <option value="free">Free</option>
                                            </select>
                                        <input type="submit" value="Proceed"></form></div></div></td>
                        <td><div class="container1">
                          <img src="img/l2.png"  class="image">
                               <div class="overlay">Item no. : L102
                                           <form action="order1.jsp" method="POST">
                                        <input type="checkbox" name="model" value="L102" checked>
                                         <select name="size">
                                            <option value="small">small</option>
                                            <option value="medium">medium</option>
                                            <option value="large">large</option>
                                            <option value="free">Free</option>
                                            </select>
                                        <input type="submit" value="Proceed"></form></div></div></td>
                        <td><div class="container1">
                            <img src="img/l11.jpg"  class="image">
                                   <div class="overlay">Item no. : L111
                                              <form action="order1.jsp" method="POST">
                                        <input type="checkbox" name="model" value="L111" checked>
                                         <select name="size">
                                            <option value="small">small</option>
                                            <option value="medium">medium</option>
                                            <option value="large">large</option>
                                            <option value="free">Free</option>
                                            </select>
                                        <input type="submit" value="Proceed"></form></div></div></td>
                        <td><div class="container1">
                              <img src="img/l4.jpg"  class="image">
                                <div class="overlay">Item no. : L104
                                             <form action="order1.jsp" method="POST">
                                        <input type="checkbox" name="model" value="L104" checked>
                                         <select name="size">
                                            <option value="small">small</option>
                                            <option value="medium">medium</option>
                                            <option value="large">large</option>
                                            <option value="free">Free</option>
                                            </select>
                                        <input type="submit" value="Proceed"></form></div></div></td></tr>
                    <tr>
                        <td><div class="container1">
                             <img src="img/mk5.jpg"  class="image">
                                 <div class="overlay">Item no. : MK101
                                                           <form action="order1.jsp" method="POST">
                                        <input type="checkbox" name="model" value="MK101" checked>
                                         <select name="size">
                                            <option value="small">small</option>
                                            <option value="medium">medium</option>
                                            <option value="large">large</option>
                                            <option value="free">Free</option>
                                            </select>
                                        <input type="submit" value="Proceed"></form></div></div></td>
                        <td><div class="container1">
                           <img src="img/mk2.jpg"  class="image">
                                 <div class="overlay">Item no. : MK102
                                               <form action="order1.jsp" method="POST">
                                        <input type="checkbox" name="model" value="MK102" checked>
                                         <select name="size">
                                            <option value="small">small</option>
                                            <option value="medium">medium</option>
                                            <option value="large">large</option>
                                            <option value="free">Free</option>
                                            </select>
                                        <input type="submit" value="Proceed"></form></div></div></td>
                        <td><div class="container1">
                            <img src="img/mk3.jpg"  class="image">
                                <div class="overlay">Item no. : MK103
                                              <form action="order1.jsp" method="POST">
                                        <input type="checkbox" name="model" value="MK103" checked>
                                         <select name="size">
                                            <option value="small">small</option>
                                            <option value="medium">medium</option>
                                            <option value="large">large</option>
                                            <option value="free">Free</option>
                                            </select>
                                        <input type="submit" value="Proceed"></form></div></div></td>
                        <td><div class="container1">
                           <img src="img/mk7.jpg"  class="image">
                                   <div class="overlay">Item no. : MK107
                                               <form action="order1.jsp" method="POST">
                                        <input type="checkbox" name="model" value="MK107" checked>
                                         <select name="size">
                                            <option value="small">small</option>
                                            <option value="medium">medium</option>
                                            <option value="large">large</option>
                                            <option value="free">Free</option>
                                            </select>
                                        <input type="submit" value="Proceed"></form></div></div></td></tr>
                    
                </table>
            </div>
        </section>
        <section id="lehenga">
            <div class="container1">
                Designer Lehengas:
                <table>
                    <tr>
<td><div class="container1">
<img src="img/l1.jpg"  class="image">
                                      <div class="overlay">Item no. : L101

                                               <form action="order1.jsp" method="POST">
                                        <input type="checkbox" name="model" value="L101" checked>
                                         <select name="size">
                                            <option value="small">small</option>
                                            <option value="medium">medium</option>
                                            <option value="large">large</option>
                                            <option value="free">Free</option>
                                            </select>
                                        <input type="submit" value="Proceed"></form></div></div> </td>
<td><div class="container1">
   <img src="img/l2.png"  class="image">
          <div class="overlay">Item no. : L102

                                               <form action="order1.jsp" method="POST">
                                        <input type="checkbox" name="model" value="L102" checked>
                                         <select name="size">
                                            <option value="small">small</option>
                                            <option value="medium">medium</option>
                                            <option value="large">large</option>
                                            <option value="free">Free</option>
                                            </select>
                                        <input type="submit" value="Proceed"></form></div></div>
</td>
<td><div class="container1">
<img src="img/l11.jpg"  class="image">
        <div class="overlay">Item no. : L111

                                               <form action="order1.jsp" method="POST">
                                        <input type="checkbox" name="model" value="L111" checked>
                                         <select name="size">
                                            <option value="small">small</option>
                                            <option value="medium">medium</option>
                                            <option value="large">large</option>
                                            <option value="free">Free</option>
                                            </select>
                                        <input type="submit" value="Proceed"></form></div></div>
             </td>
<td><div class="container1">
    <img src="img/l4.jpg"  class="image">
          <div class="overlay">Item no. : L104

                                               <form action="order1.jsp" method="POST">
                                        <input type="checkbox" name="model" value="L104" checked>
                                         <select name="size">
                                            <option value="small">small</option>
                                            <option value="medium">medium</option>
                                            <option value="large">large</option>
                                            <option value="free">Free</option>
                                            </select>
                                        <input type="submit" value="Proceed"></form></div></div></td></tr>
                    <tr>
 <td><div class="container1">
<img src="img/l15.jpg"  class="image">
<div class="overlay">Item no. : L105

                                               <form action="order1.jsp" method="POST">
                                        <input type="checkbox" name="model" value="L105" checked>
                                         <select name="size">
                                            <option value="small">small</option>
                                            <option value="medium">medium</option>
                                            <option value="large">large</option>
                                            <option value="free">Free</option>
                                            </select>
                                        <input type="submit" value="Proceed"></form></div></div></td>
<td><div class="container1">
<img src="img/l8.jpg"  class="image">
<div class="overlay">Item no. : L108

                                               <form action="order1.jsp" method="POST">
                                        <input type="checkbox" name="model" value="L108" checked>
                                         <select name="size">
                                            <option value="small">small</option>
                                            <option value="medium">medium</option>
                                            <option value="large">large</option>
                                            <option value="free">Free</option>
                                            </select>
                                        <input type="submit" value="Proceed"></form></div></div>
</td>
<td><div class="container1">
<img src="img/l16.jpg"  class="image">
<div class="overlay">Item no. : L106

                                               <form action="order1.jsp" method="POST">
                                        <input type="checkbox" name="model" value="L106" checked>
                                         <select name="size">
                                            <option value="small">small</option>
                                            <option value="medium">medium</option>
                                            <option value="large">large</option>
                                            <option value="free">Free</option>
                                            </select>
                                        <input type="submit" value="Proceed"></form></div></div>
</td>
<td><div class="container1">
<img src="img/l17.jpg"  class="image">
<div class="overlay">Item no. : L107

                                               <form action="order1.jsp" method="POST">
                                        <input type="checkbox" name="model" value="L107" checked>
                                         <select name="size">
                                            <option value="small">small</option>
                                            <option value="medium">medium</option>
                                            <option value="large">large</option>
                                            <option value="free">Free</option>
                                            </select>
                                        <input type="submit" value="Proceed"></form></div></div>
 </td></tr>
 <tr>
<td><div class="container1">
<img src="img/l18.jpg"  class="image">
<div class="overlay">Item no. : L108

                                               <form action="order1.jsp" method="POST">
                                        <input type="checkbox" name="model" value="L108" checked>
                                         <select name="size">
                                            <option value="small">small</option>
                                            <option value="medium">medium</option>
                                            <option value="large">large</option>
                                            <option value="free">Free</option>
                                            </select>
                                        <input type="submit" value="Proceed"></form></div></div>
</td>
<td><div class="container1">
<img src="img/l20.jpg"  class="image">
<div class="overlay">Item no. : L120

                                               <form action="order1.jsp" method="POST">
                                        <input type="checkbox" name="model" value="L120" checked>
                                         <select name="size">
                                            <option value="small">small</option>
                                            <option value="medium">medium</option>
                                            <option value="large">large</option>
                                            <option value="free">Free</option>
                                            </select>
                                        <input type="submit" value="Proceed"></form></div></div>
</td>
<td><div class="container1">
<img src="img/l8.jpg"  class="image">
<div class="overlay">Item no. : L008

                                               <form action="order1.jsp" method="POST">
                                        <input type="checkbox" name="model" value="L008" checked>
                                         <select name="size">
                                            <option value="small">small</option>
                                            <option value="medium">medium</option>
                                            <option value="large">large</option>
                                            <option value="free">Free</option>
                                            </select>
                                        <input type="submit" value="Proceed"></form></div></div></td>
<td><div class="container1">
<img src="img/l7.jpeg"  class="image">
<div class="overlay">Item no. : L007

                                               <form action="order1.jsp" method="POST">
                                        <input type="checkbox" name="model" value="L007" checked>
                                         <select name="size">
                                            <option value="small">small</option>
                                            <option value="medium">medium</option>
                                            <option value="large">large</option>
                                            <option value="free">Free</option>
                                            </select>
                                        <input type="submit" value="Proceed"></form></div></div>
</td></tr>
                </table>
            </div>
        </section>
        <section id="kurta">
            <div class="container">
                Men's Kurta Designs:
                <table>
                    <tr>
          <td><div class="container1">
            <img src="img/mk2.jpg">
    <div class="overlay">Item no. : MK002

                                               <form action="order1.jsp" method="POST">
                                        <input type="checkbox" name="model" value="MK002" checked>
                                         <select name="size">
                                            <option value="small">small</option>
                                            <option value="medium">medium</option>
                                            <option value="large">large</option>
                                            <option value="free">Free</option>
                                            </select>
                                        <input type="submit" value="Proceed"></form></div></div>
     </td>
          <td><div class="container1">
          <img src="img/mk3.jpg">
       
    <div class="overlay">Item no. : MK003

                                               <form action="order1.jsp" method="POST">
                                        <input type="checkbox" name="model" value="MK003" checked>
                                         <select name="size">
                                            <option value="small">small</option>
                                            <option value="medium">medium</option>
                                            <option value="large">large</option>
                                            <option value="free">Free</option>
                                            </select>
                                        <input type="submit" value="Proceed"></form></div></div>
</td>
<td><div class="container1">
<img src="img/mk11.jpg">
<div class="overlay">Item no. : MK101

                                               <form action="order1.jsp" method="POST">
                                        <input type="checkbox" name="model" value="MK101" checked>
                                         <select name="size">
                                            <option value="small">small</option>
                                            <option value="medium">medium</option>
                                            <option value="large">large</option>
                                            <option value="free">Free</option>
                                            </select>
                                        <input type="submit" value="Proceed"></form></div></div>
</td>
<td><div class="container1">
<img src="img/mk7.jpg">
<div class="overlay">Item no. : MK007

                                               <form action="order1.jsp" method="POST">
                                        <input type="checkbox" name="model" value="MK007" checked>
                                         <select name="size">
                                            <option value="small">small</option>
                                            <option value="medium">medium</option>
                                            <option value="large">large</option>
                                            <option value="free">Free</option>
                                            </select>
                                        <input type="submit" value="Proceed"></form></div></div>
</td></tr>
                    <tr>
<td><div class="container1">
<img src="img/mk6.jpeg">
<div class="overlay">Item no. : MK006

                                               <form action="order1.jsp" method="POST">
                                        <input type="checkbox" name="model" value="MK006" checked>
                                         <select name="size">
                                            <option value="small">small</option>
                                            <option value="medium">medium</option>
                                            <option value="large">large</option>
                                            <option value="free">Free</option>
                                            </select>
                                        <input type="submit" value="Proceed"></form></div></div>
</td>
<td><div class="container1">
<img src="img/mk8.jpg">
<div class="overlay">Item no. : MK008

                                               <form action="order1.jsp" method="POST">
                                        <input type="checkbox" name="model" value="MK008" checked>
                                         <select name="size">
                                            <option value="small">small</option>
                                            <option value="medium">medium</option>
                                            <option value="large">large</option>
                                            <option value="free">Free</option>
                                            </select>
                                        <input type="submit" value="Proceed"></form></div></div>
</td>
<td><div class="container1">
<img src="img/mk9.jpg">
<div class="overlay">Item no. : MK009

                                               <form action="order1.jsp" method="POST">
                                        <input type="checkbox" name="model" value="MK009" checked>
                                         <select name="size">
                                            <option value="small">small</option>
                                            <option value="medium">medium</option>
                                            <option value="large">large</option>
                                            <option value="free">Free</option>
                                            </select>
                                        <input type="submit" value="Proceed"></form></div></div>
</td>
<td><div class="container1">
<img src="img/mk10.jpg">
<div class="overlay">Item no. : MK110

                                               <form action="order1.jsp" method="POST">
                                        <input type="checkbox" name="model" value="MK110" checked>
                                         <select name="size">
                                            <option value="small">small</option>
                                            <option value="medium">medium</option>
                                            <option value="large">large</option>
                                            <option value="free">Free</option>
                                            </select>
                                        <input type="submit" value="Proceed"></form></div></div>
</td></tr>
                   <!-- <tr><td><div class="container1">
<img src="img/mk11.jpg">
<div class="overlay">Item no. : MK111

                                               <form action="order1.jsp" method="POST">
                                        <input type="checkbox" name="model" value="MK111" checked>
                                         <select name="size">
                                            <option value="small">small</option>
                                            <option value="medium">medium</option>
                                            <option value="large">large</option>
                                            <option value="free">Free</option>
                                            </select>
                                        <input type="submit" value="Proceed"></form></div></div>
</td>
<td><div class="container1">
<img src="img/wedding wear.jpg">
<div class="overlay">Item no. : MK306

                                               <form action="order1.jsp" method="POST">
                                        <input type="checkbox" name="model" value="MK306" checked>
                                         <select name="size">
                                            <option value="small">small</option>
                                            <option value="medium">medium</option>
                                            <option value="large">large</option>
                                            <option value="free">Free</option>
                                            </select>
                                        <input type="submit" value="Proceed"></form></div></div>
</td>
<td><div class="container1">
<img src="img/mk1.jpg">
<div class="overlay">Item no. : MK001

                                               <form action="order1.jsp" method="POST">
                                        <input type="checkbox" name="model" value="MK001" checked>
                                         <select name="size">
                                            <option value="small">small</option>
                                            <option value="medium">medium</option>
                                            <option value="large">large</option>
                                            <option value="free">Free</option>
                                            </select>
                                        <input type="submit" value="Proceed"></form></div></div>
</td>
<td><div class="container1">
<img src="img/mk4.jpg">
<div class="overlay">Item no. : MK004

                                               <form action="order1.jsp" method="POST">
                                        <input type="checkbox" name="model" value="MK004" checked>
                                         <select name="size">
                                            <option value="small">small</option>
                                            <option value="medium">medium</option>
                                            <option value="large">large</option>
                                            <option value="free">Free</option>
                                            </select>
                                        <input type="submit" value="Proceed"></form></div></div>
</td>
</tr>-->
                </table>
            </div>
        </section>
         <section id="kurti">
            <div class="container">
                Kurti Designs:
                <table>
                    <tr><td><img src="img/c1.jpg"></td>
<td><div class="container1">
<img src="img/c17.jpg">
<div class="overlay">Item no. : C107

                                               <form action="order1.jsp" method="POST">
                                        <input type="checkbox" name="model" value="C107" checked>
                                         <select name="size">
                                            <option value="small">small</option>
                                            <option value="medium">medium</option>
                                            <option value="large">large</option>
                                            <option value="free">Free</option>
                                            </select>
                                        <input type="submit" value="Proceed"></form></div></div>
</td>
<td><div class="container1">
<img src="img/c3.jpg">
<div class="overlay">Item no. : C003

                                               <form action="order1.jsp" method="POST">
                                        <input type="checkbox" name="model" value="C003" checked>
                                         <select name="size">
                                            <option value="small">small</option>
                                            <option value="medium">medium</option>
                                            <option value="large">large</option>
                                            <option value="free">Free</option>
                                            </select>
                                        <input type="submit" value="Proceed"></form></div></div>
</td>
<td><div class="container1">
<img src="img/c4.jpg">
<div class="overlay">Item no. : C004

                                               <form action="order1.jsp" method="POST">
                                        <input type="checkbox" name="model" value="C004" checked>
                                         <select name="size">
                                            <option value="small">small</option>
                                            <option value="medium">medium</option>
                                            <option value="large">large</option>
                                            <option value="free">Free</option>
                                            </select>
                                        <input type="submit" value="Proceed"></form></div></div>
</td></tr>
                    <tr>
<td><div class="container1">
<img src="img/c5.jpg">
<div class="overlay">Item no. : C005

                                               <form action="order1.jsp" method="POST">
                                        <input type="checkbox" name="model" value="C005" checked>
                                         <select name="size">
                                            <option value="small">small</option>
                                            <option value="medium">medium</option>
                                            <option value="large">large</option>
                                            <option value="free">Free</option>
                                            </select>
                                        <input type="submit" value="Proceed"></form></div></div>
</td>
<td><div class="container1">
<img src="img/c6.jpg">
<div class="overlay">Item no. : C006

                                               <form action="order1.jsp" method="POST">
                                        <input type="checkbox" name="model" value="C006" checked>
                                         <select name="size">
                                            <option value="small">small</option>
                                            <option value="medium">medium</option>
                                            <option value="large">large</option>
                                            <option value="free">Free</option>
                                            </select>
                                        <input type="submit" value="Proceed"></form></div></div>
</td>
<td><div class="container1">
<img src="img/c7.jpg">
<div class="overlay">Item no. : C007

                                               <form action="order1.jsp" method="POST">
                                        <input type="checkbox" name="model" value="C007" checked>
                                         <select name="size">
                                            <option value="small">small</option>
                                            <option value="medium">medium</option>
                                            <option value="large">large</option>
                                            <option value="free">Free</option>
                                            </select>
                                        <input type="submit" value="Proceed"></form></div></div>
</td>
<td><div class="container1">
<img src="img/c8.jpg">
<div class="overlay">Item no. : C008

                                               <form action="order1.jsp" method="POST">
                                        <input type="checkbox" name="model" value="C008" checked>
                                         <select name="size">
                                            <option value="small">small</option>
                                            <option value="medium">medium</option>
                                            <option value="large">large</option>
                                            <option value="free">Free</option>
                                            </select>
                                        <input type="submit" value="Proceed"></form></div></div>
</td>
</tr>
                    <tr>
                     <td><div class="container1">
                     <img src="img/c9.jpg">
                   <div class="overlay">Item no. : C009

                                               <form action="order1.jsp" method="POST">
                                        <input type="checkbox" name="model" value="C009" checked>
                                         <select name="size">
                                            <option value="small">small</option>
                                            <option value="medium">medium</option>
                                            <option value="large">large</option>
                                            <option value="free">Free</option>
                                            </select>
                                        <input type="submit" value="Proceed"></form></div></div>
</td>
<td><div class="container1">
<img src="img/c11.jpg">
<div class="overlay">Item no. : C101

                                               <form action="order1.jsp" method="POST">
                                        <input type="checkbox" name="model" value="C101" checked>
                                         <select name="size">
                                            <option value="small">small</option>
                                            <option value="medium">medium</option>
                                            <option value="large">large</option>
                                            <option value="free">Free</option>
                                            </select>
                                        <input type="submit" value="Proceed"></form></div></div>
</td>
<td><div class="container1">
<img src="img/c2.jpg">
<div class="overlay">Item no. : C002

                                               <form action="order1.jsp" method="POST">
                                        <input type="checkbox" name="model" value="C002" checked>
                                         <select name="size">
                                            <option value="small">small</option>
                                            <option value="medium">medium</option>
                                            <option value="large">large</option>
                                            <option value="free">Free</option>
                                            </select>
                                        <input type="submit" value="Proceed"></form></div></div>
</td>
<td><div class="container1">
<img src="img/c18.jpg">
<div class="overlay">Item no. : C108

                                               <form action="order1.jsp" method="POST">
                                        <input type="checkbox" name="model" value="C108" checked>
                                         <select name="size">
                                            <option value="small">small</option>
                                            <option value="medium">medium</option>
                                            <option value="large">large</option>
                                            <option value="free">Free</option>
                                            </select>
                                        <input type="submit" value="Proceed"></form></div></div>
</td>
</tr>
                </table>
            </div>
        </section>
        
        <section id="shirt">
            <div class="container">
                Men's Shirtings:
                <table>
                    <tr>
<td><div class="container1">
<img src="img/m1.jpg">
<div class="overlay">Item no. : M001

                                               <form action="order1.jsp" method="POST">
                                        <input type="checkbox" name="model" value="M001" checked>
                                         <select name="size">
                                            <option value="small">small</option>
                                            <option value="medium">medium</option>
                                            <option value="large">large</option>
                                            <option value="free">Free</option>
                                            </select>
                                        <input type="submit" value="Proceed"></form></div></div>
</td>
<td><div class="container1">
<img src="img/m2.jpg">
<div class="overlay">Item no. : M002

                                               <form action="order1.jsp" method="POST">
                                        <input type="checkbox" name="model" value="M002" checked>
                                         <select name="size">
                                            <option value="small">small</option>
                                            <option value="medium">medium</option>
                                            <option value="large">large</option>
                                            <option value="free">Free</option>
                                            </select>
                                        <input type="submit" value="Proceed"></form></div></div>
</td>
<td><div class="container1">
<img src="img/m3.jpg">
<div class="overlay">Item no. : M003

                                               <form action="order1.jsp" method="POST">
                                        <input type="checkbox" name="model" value="M003" checked>
                                         <select name="size">
                                            <option value="small">small</option>
                                            <option value="medium">medium</option>
                                            <option value="large">large</option>
                                            <option value="free">Free</option>
                                            </select>
                                        <input type="submit" value="Proceed"></form></div></div>
</td>
<td><div class="container1">
<img src="img/m4.jpg">
<div class="overlay">Item no. : M004

                                               <form action="order1.jsp" method="POST">
                                        <input type="checkbox" name="model" value="M004" checked>
                                         <select name="size">
                                            <option value="small">small</option>
                                            <option value="medium">medium</option>
                                            <option value="large">large</option>
                                            <option value="free">Free</option>
                                            </select>
                                        <input type="submit" value="Proceed"></form></div></div>

</td></tr>
                    <tr>
<td><div class="container1">
<img src="img/m5.jpeg">
<div class="overlay">Item no. : M005

                                               <form action="order1.jsp" method="POST">
                                        <input type="checkbox" name="model" value="M005" checked>
                                         <select name="size">
                                            <option value="small">small</option>
                                            <option value="medium">medium</option>
                                            <option value="large">large</option>
                                            <option value="free">Free</option>
                                            </select>
                                        <input type="submit" value="Proceed"></form></div></div>

</td>
<td><div class="container1">
<img src="img/m6.jpg">
<div class="overlay">Item no. : M006

                                               <form action="order1.jsp" method="POST">
                                        <input type="checkbox" name="model" value="M006" checked>
                                         <select name="size">
                                            <option value="small">small</option>
                                            <option value="medium">medium</option>
                                            <option value="large">large</option>
                                            <option value="free">Free</option>
                                            </select>
                                        <input type="submit" value="Proceed"></form></div></div>
</td>
<td><div class="container1">
<img src="img/m7.jpg">
<div class="overlay">Item no. : M007

                                               <form action="order1.jsp" method="POST">
                                        <input type="checkbox" name="model" value="M007" checked>
                                         <select name="size">
                                            <option value="small">small</option>
                                            <option value="medium">medium</option>
                                            <option value="large">large</option>
                                            <option value="free">Free</option>
                                            </select>
                                        <input type="submit" value="Proceed"></form></div></div>
</td>
<td><div class="container1">
<img src="img/m8.jpg">
<div class="overlay">Item no. : M008

                                               <form action="order1.jsp" method="POST">
                                        <input type="checkbox" name="model" value="M008" checked>
                                         <select name="size">
                                            <option value="small">small</option>
                                            <option value="medium">medium</option>
                                            <option value="large">large</option>
                                            <option value="free">Free</option>
                                            </select>
                                        <input type="submit" value="Proceed"></form></div></div>
</td></tr>
                    <tr><td><div class="container1">
<img src="img/m9.jpg">
<div class="overlay">Item no. : M009

                                               <form action="order1.jsp" method="POST">
                                        <input type="checkbox" name="model" value="M009" checked>
                                         <select name="size">
                                            <option value="small">small</option>
                                            <option value="medium">medium</option>
                                            <option value="large">large</option>
                                            <option value="free">Free</option>
                                            </select>
                                        <input type="submit" value="Proceed"></form></div></div>
</td>
<td><div class="container1">
<img src="img/m10.jpg">
<div class="overlay">Item no. : M100

                                               <form action="order1.jsp" method="POST">
                                        <input type="checkbox" name="model" value="M100" checked>
                                         <select name="size">
                                            <option value="small">small</option>
                                            <option value="medium">medium</option>
                                            <option value="large">large</option>
                                            <option value="free">Free</option>
                                            </select>
                                        <input type="submit" value="Proceed"></form></div></div>
</td>
<td><div class="container1">
<img src="img/summer_suit_03.jpg">
<div class="overlay">Item no. : I003

                                               <form action="order1.jsp" method="POST">
                                        <input type="checkbox" name="model" value="I003" checked>
                                         <select name="size">
                                            <option value="small">small</option>
                                            <option value="medium">medium</option>
                                            <option value="large">large</option>
                                            <option value="free">Free</option>
                                            </select>
                                        <input type="submit" value="Proceed"></form></div></div>
</td>
<td><div class="container1">
<img src="img/imgmen1.jpg">
<div class="overlay">Item no. : I001

                                               <form action="order1.jsp" method="POST">
                                        <input type="checkbox" name="model" value="I001" checked>
                                         <select name="size">
                                            <option value="small">small</option>
                                            <option value="medium">medium</option>
                                            <option value="large">large</option>
                                            <option value="free">Free</option>
                                            </select>
                                        <input type="submit" value="Proceed"></form></div></div>
</td></tr>
                </table>
            </div>
        </section>
        <section id="blouse">
            <div class="container">
                Women Saree and Lahenga Blouse:
                <table>
                    <tr>
<td><div class="container1">
<img src="img/b1.jpg">
<div class="overlay">Item no. : B001

                                               <form action="order1.jsp" method="POST">
                                        <input type="checkbox" name="model" value="B001" checked>
                                         <select name="size">
                                            <option value="small">small</option>
                                            <option value="medium">medium</option>
                                            <option value="large">large</option>
                                            <option value="free">Free</option>
                                            </select>
                                        <input type="submit" value="Proceed"></form></div></div>
</td>
<td><div class="container1">
<img src="img/b2.jpg">
<div class="overlay">Item no. : B002

                                               <form action="order1.jsp" method="POST">
                                        <input type="checkbox" name="model" value="B002" checked>
                                         <select name="size">
                                            <option value="small">small</option>
                                            <option value="medium">medium</option>
                                            <option value="large">large</option>
                                            <option value="free">Free</option>
                                            </select>
                                        <input type="submit" value="Proceed"></form></div></div>
</td>
<td><div class="container1">
<img src="img/b3.jpg">
<div class="overlay">Item no. : B003

                                               <form action="order1.jsp" method="POST">
                                        <input type="checkbox" name="model" value="B003" checked>
                                         <select name="size">
                                            <option value="small">small</option>
                                            <option value="medium">medium</option>
                                            <option value="large">large</option>
                                            <option value="free">Free</option>
                                            </select>
                                        <input type="submit" value="Proceed"></form></div></div>
</td>
<td><div class="container1">
<img src="img/b4.jpg">
<div class="overlay">Item no. : B004

                                               <form action="order1.jsp" method="POST">
                                        <input type="checkbox" name="model" value="B004" checked>
                                         <select name="size">
                                            <option value="small">small</option>
                                            <option value="medium">medium</option>
                                            <option value="large">large</option>
                                            <option value="free">Free</option>
                                            </select>
                                        <input type="submit" value="Proceed"></form></div></div>
</td>
</tr>
                    <tr>
<td><div class="container1">
<img src="img/b5.jpg">
<div class="overlay">Item no. : B005

                                               <form action="order1.jsp" method="POST">
                                        <input type="checkbox" name="model" value="B005" checked>
                                         <select name="size">
                                            <option value="small">small</option>
                                            <option value="medium">medium</option>
                                            <option value="large">large</option>
                                            <option value="free">Free</option>
                                            </select>
                                        <input type="submit" value="Proceed"></form></div></div>
</td>
<td><div class="container1">
<img src="img/b6.jpg">
<div class="overlay">Item no. : B006

                                               <form action="order1.jsp" method="POST">
                                        <input type="checkbox" name="model" value="B006" checked>
                                         <select name="size">
                                            <option value="small">small</option>
                                            <option value="medium">medium</option>
                                            <option value="large">large</option>
                                            <option value="free">Free</option>
                                            </select>
                                        <input type="submit" value="Proceed"></form></div></div>
</td>
<td><div class="container1">
<img src="img/b7.jpg">
<div class="overlay">Item no. : B007

                                               <form action="order1.jsp" method="POST">
                                        <input type="checkbox" name="model" value="B007" checked>
                                         <select name="size">
                                            <option value="small">small</option>
                                            <option value="medium">medium</option>
                                            <option value="large">large</option>
                                            <option value="free">Free</option>
                                            </select>
                                        <input type="submit" value="Proceed"></form></div></div>
</td>
<td><div class="container1">
<img src="img/b8.jpg">
<div class="overlay">Item no. : B008

                                               <form action="order1.jsp" method="POST">
                                        <input type="checkbox" name="model" value="B008" checked>
                                         <select name="size">
                                            <option value="small">small</option>
                                            <option value="medium">medium</option>
                                            <option value="large">large</option>
                                            <option value="free">Free</option>
                                            </select>
                                        <input type="submit" value="Proceed"></form></div></div>
</td>
</tr>
                    <tr>
<td><div class="container1">
<img src="img/b9.jpg">
<div class="overlay">Item no. : B009

                                               <form action="order1.jsp" method="POST">
                                        <input type="checkbox" name="model" value="B009" checked>
                                         <select name="size">
                                            <option value="small">small</option>
                                            <option value="medium">medium</option>
                                            <option value="large">large</option>
                                            <option value="free">Free</option>
                                            </select>
                                        <input type="submit" value="Proceed"></form></div></div>
</td>
<td><div class="container1">
<img src="img/b10.jpg">
<div class="overlay">Item no. : B110

                                               <form action="order1.jsp" method="POST">
                                        <input type="checkbox" name="model" value="B110" checked>
                                         <select name="size">
                                            <option value="small">small</option>
                                            <option value="medium">medium</option>
                                            <option value="large">large</option>
                                            <option value="free">Free</option>
                                            </select>
                                        <input type="submit" value="Proceed"></form></div></div>
</td>
<td><div class="container1">
<img src="img/b11.jpg">
<div class="overlay">Item no. : B111

                                               <form action="order1.jsp" method="POST">
                                        <input type="checkbox" name="model" value="B111" checked>
                                         <select name="size">
                                            <option value="small">small</option>
                                            <option value="medium">medium</option>
                                            <option value="large">large</option>
                                            <option value="free">Free</option>
                                            </select>
                                        <input type="submit" value="Proceed"></form></div></div>
</td>
<td><div class="container1">
<img src="img/b12.jpg">
<div class="overlay">Item no. : B112

                                               <form action="order1.jsp" method="POST">
                                        <input type="checkbox" name="model" value="B112" checked>
                                         <select name="size">
                                            <option value="small">small</option>
                                            <option value="medium">medium</option>
                                            <option value="large">large</option>
                                            <option value="free">Free</option>
                                            </select>
                                        <input type="submit" value="Proceed"></form></div></div>
</td></tr>
                    <tr>
<td><div class="container1">
<img src="img/b13.jpg">
<div class="overlay">Item no. : B113

                                               <form action="order1.jsp" method="POST">
                                        <input type="checkbox" name="model" value="B113" checked>
                                         <select name="size">
                                            <option value="small">small</option>
                                            <option value="medium">medium</option>
                                            <option value="large">large</option>
                                            <option value="free">Free</option>
                                            </select>
                                        <input type="submit" value="Proceed"></form></div></div>
</td>
<td><div class="container1">
<img src="img/b14.jpg">
<div class="overlay">Item no. : B114

                                               <form action="order1.jsp" method="POST">
                                        <input type="checkbox" name="model" value="B114" checked>
                                         <select name="size">
                                            <option value="small">small</option>
                                            <option value="medium">medium</option>
                                            <option value="large">large</option>
                                            <option value="free">Free</option>
                                            </select>
                                        <input type="submit" value="Proceed"></form></div></div>
</td>
<td><div class="container1">
<img src="img/b15.jpg">
<div class="overlay">Item no. : B115

                                               <form action="order1.jsp" method="POST">
                                        <input type="checkbox" name="model" value="B115" checked>
                                         <select name="size">
                                            <option value="small">small</option>
                                            <option value="medium">medium</option>
                                            <option value="large">large</option>
                                            <option value="free">Free</option>
                                            </select>
                                        <input type="submit" value="Proceed"></form></div></div>
</td>
<td><div class="container1">
<img src="img/b16.jpg">
<div class="overlay">Item no. : B116

                                               <form action="order1.jsp" method="POST">
                                        <input type="checkbox" name="model" value="B116" checked>
                                         <select name="size">
                                            <option value="small">small</option>
                                            <option value="medium">medium</option>
                                            <option value="large">large</option>
                                            <option value="free">Free</option>
                                            </select>
                                        <input type="submit" value="Proceed"></form></div></div>
</td></tr>
                </table>
            </div>
        </section>
        <section id="suit">
            <div class="container">
                Men's Suittings:
                <table>
                    <tr>
<td><div class="container1">
<img src="img/ms1.jpg">
<div class="overlay">Item no. : MS001

                                               <form action="order1.jsp" method="POST">
                                        <input type="checkbox" name="model" value="MS001" checked>
                                         <select name="size">
                                            <option value="small">small</option>
                                            <option value="medium">medium</option>
                                            <option value="large">large</option>
                                            <option value="free">Free</option>
                                            </select>
                                        <input type="submit" value="Proceed"></form></div></div>
</td>
<td><div class="container1">
<img src="img/ms2.jpg">
<div class="overlay">Item no. : MS002

                                               <form action="order1.jsp" method="POST">
                                        <input type="checkbox" name="model" value="MS002" checked>
                                         <select name="size">
                                            <option value="small">small</option>
                                            <option value="medium">medium</option>
                                            <option value="large">large</option>
                                            <option value="free">Free</option>
                                            </select>
                                        <input type="submit" value="Proceed"></form></div></div>
</td>
<td><div class="container1">
<img src="img/ms3.jpg">
<div class="overlay">Item no. : MS003

                                               <form action="order1.jsp" method="POST">
                                        <input type="checkbox" name="model" value="MS003" checked>
                                         <select name="size">
                                            <option value="small">small</option>
                                            <option value="medium">medium</option>
                                            <option value="large">large</option>
                                            <option value="free">Free</option>
                                            </select>
                                        <input type="submit" value="Proceed"></form></div></div>
</td>
<td><div class="container1">
<img src="img/ms5.jpg">
<div class="overlay">Item no. : MS005

                                               <form action="order1.jsp" method="POST">
                                        <input type="checkbox" name="model" value="MS005" checked>
                                         <select name="size">
                                            <option value="small">small</option>
                                            <option value="medium">medium</option>
                                            <option value="large">large</option>
                                            <option value="free">Free</option>
                                            </select>
                                        <input type="submit" value="Proceed"></form></div></div>
</td></tr>
                    <tr>
<td><div class="container1">
<img src="img/ms4.jpg">
<div class="overlay">Item no. : MS004

                                               <form action="order1.jsp" method="POST">
                                        <input type="checkbox" name="model" value="MS004" checked>
                                         <select name="size">
                                            <option value="small">small</option>
                                            <option value="medium">medium</option>
                                            <option value="large">large</option>
                                            <option value="free">Free</option>
                                            </select>
                                        <input type="submit" value="Proceed"></form></div></div>
</td>
<td><div class="container1">
<img src="img/ms6.jpg">
<div class="overlay">Item no. : MS006

                                               <form action="order1.jsp" method="POST">
                                        <input type="checkbox" name="model" value="MS006" checked>
                                         <select name="size">
                                            <option value="small">small</option>
                                            <option value="medium">medium</option>
                                            <option value="large">large</option>
                                            <option value="free">Free</option>
                                            </select>
                                        <input type="submit" value="Proceed"></form></div></div>
</td>
<td><div class="container1">
<img src="img/ms7.jpg">
<div class="overlay">Item no. : MS007

                                               <form action="order1.jsp" method="POST">
                                        <input type="checkbox" name="model" value="MS007" checked>
                                         <select name="size">
                                            <option value="small">small</option>
                                            <option value="medium">medium</option>
                                            <option value="large">large</option>
                                            <option value="free">Free</option>
                                            </select>
                                        <input type="submit" value="Proceed"></form></div></div>
</td>
<td><div class="container1">
<img src="img/ms8.jpg">
<div class="overlay">Item no. : MS008

                                               <form action="order1.jsp" method="POST">
                                        <input type="checkbox" name="model" value="MS008" checked>
                                         <select name="size">
                                            <option value="small">small</option>
                                            <option value="medium">medium</option>
                                            <option value="large">large</option>
                                            <option value="free">Free</option>
                                            </select>
                                        <input type="submit" value="Proceed"></form></div></div>
</td></tr>
                    <tr>
<td><div class="container1">
<img src="img/office-wear-mens-suiting-designs-2014-2015.jpg">
<div class="overlay">Item no. : MS301

                                               <form action="order1.jsp" method="POST">
                                        <input type="checkbox" name="model" value="MS301" checked>
                                         <select name="size">
                                            <option value="small">small</option>
                                            <option value="medium">medium</option>
                                            <option value="large">large</option>
                                            <option value="free">Free</option>
                                            </select>
                                        <input type="submit" value="Proceed"></form></div></div>
</td>
<td><div class="container1">
<img src="img/ms10.jpg">
<div class="overlay">Item no. : MS110

                                               <form action="order1.jsp" method="POST">
                                        <input type="checkbox" name="model" value="MS110" checked>
                                         <select name="size">
                                            <option value="small">small</option>
                                            <option value="medium">medium</option>
                                            <option value="large">large</option>
                                            <option value="free">Free</option>
                                            </select>
                                        <input type="submit" value="Proceed"></form></div></div>
</td>
<td><div class="container1">
<img src="img/ms11.jpg">
<div class="overlay">Item no. : MS111

                                               <form action="order1.jsp" method="POST">
                                        <input type="checkbox" name="model" value="MS111" checked>
                                         <select name="size">
                                            <option value="small">small</option>
                                            <option value="medium">medium</option>
                                            <option value="large">large</option>
                                            <option value="free">Free</option>
                                            </select>
                                        <input type="submit" value="Proceed"></form></div></div>
</td>
<td><div class="container1">
<img src="img/three-piece-suit-2011.jpg">
<div class="overlay">Item no. : MS302

                                               <form action="order1.jsp" method="POST">
                                        <input type="checkbox" name="model" value="MS302" checked>
                                         <select name="size">
                                            <option value="small">small</option>
                                            <option value="medium">medium</option>
                                            <option value="large">large</option>
                                            <option value="free">Free</option>
                                            </select>
                                        <input type="submit" value="Proceed"></form></div></div>
</td></tr>
                </table>
            </div>
        </section>
        <div id="myModal" class="modal">

  <!-- Modal content -->
  <div class="modal-content">
    <span class="close">&times;</span>
    <p><form action="order1.jsp" method="POST"><input type="radio" name="size" value="small">Small              <input type="radio" name="size" value="large">Large <input type="submit" value="Proceed"></form></p>
  </div>

</div>

<script>
// Get the modal
var modal = document.getElementById('myModal');
// Get the button that opens the modal
var btn = document.getElementById("myBtn");
// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];
// When the user clicks the button, open the modal 
btn.onclick = function() {
    modal.style.display = "block";
}
// When the user clicks on <span> (x), close the modal
span.onclick = function() {
    modal.style.display = "none";
}
// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
</script>

       


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