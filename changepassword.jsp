<%-- 
    Document   : changepassword
    Created on : Nov 14, 2018, 3:47:43 AM
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
             String np=request.getParameter("npasswd");
             String op=request.getParameter("opasswd");
             Class.forName("com.mysql.jdbc.Driver");
           // out.println("record inserted successfully 2");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/tailor","root","");
                 
            String q="call logincheck (?,?,?)";
            PreparedStatement ps=con.prepareStatement(q);
            ps.setString(1,name);
           ps.setString(2,null);
           ps.setString(3,op);
              
           
            ResultSet r=ps.executeQuery();
                                  
              if(r.next())
              {
                  
                   
                     String q1="update login set passd=? where reg_id=?";
             PreparedStatement ps1=con.prepareStatement(q1);
                                         ps1.setString(1,np);
                                          ps1.setString(2,name);
                                     int i=ps1.executeUpdate();
                                     if(i>0)
                                     {
                                         response.sendRedirect(request.getContextPath() + "/profile.jsp");
                                     }
                                     else{
                                       out.println("record not updated");
                                     }
             }
              else
              {
                  out.println("Not changed");
              }

                            
                      
                                         
                                                          %>

                                                          <a href="profile.jsp"><span>Retry</span></a>
        
    </body>
</html>
