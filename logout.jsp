<%-- 
    Document   : logout
    Created on : Oct 18, 2018, 9:25:14 AM
    Author     : User
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.util.*"%>
<%@page import="java.sql.Connection"%>

<%
    
        HttpSession newsession = request.getSession(false);
        if (newsession != null) 
             newsession.invalidate();

        response.sendRedirect(request.getContextPath() + "/index.html");



%>