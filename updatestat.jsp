<%-- 
    Document   : updatestat
    Created on : Nov 14, 2018, 4:15:04 AM
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
             
             String np=request.getParameter("orderid");
             
             Class.forName("com.mysql.jdbc.Driver");
           // out.println("record inserted successfully 2");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/tailor","root","");
                 
            String q="update orders set order_status=? where order_id=?";
            PreparedStatement ps=con.prepareStatement(q);
            ps.setBoolean(1,true);
           ps.setString(2,np);
           
              
           
            int i=ps.executeUpdate();
                                     if(i>0)
                                     {
                                         response.sendRedirect(request.getContextPath() + "/admin.jsp");
                                     }
                                     else{
                                       out.println("record not updated");
                                     }

                            
                      
                                         
                                                          %>

                                                          <a href="admin.jsp"><span>Retry</span></a>
        
    </body>
</html>
