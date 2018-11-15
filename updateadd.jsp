<%-- 
    Document   : updateadd
    Created on : Oct 4, 2018, 5:11:25 PM
    Author     : User
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.util.*"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
    </head>
    <body>
         <%
             String name=(String)session.getAttribute("user"); 
             String a=request.getParameter("addr");
             Class.forName("com.mysql.jdbc.Driver");
           // out.println("record inserted successfully 2");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/tailor","root","");
                                                     
                            
                       String q="update login set address=? where reg_id=?";
             PreparedStatement ps=con.prepareStatement(q);
                                         ps.setString(1,a);
                                          ps.setString(2,name);
                                     int i=ps.executeUpdate();
                                     if(i>0)
                                     {
                                         response.sendRedirect(request.getContextPath() + "/profile.jsp");
                                     }
                                     else{
                                       out.println("record not updated");
                                     }
                                         
                                                          %>

                                                          <a href="profile.jsp"><span>Retry</span></a>
        
    </body>
</html>
