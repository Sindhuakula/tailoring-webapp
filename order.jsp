<%-- 
    Document   : order
    Created on : Oct 4, 2018, 3:41:49 PM
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
              
             String a=request.getParameter("regno");
             String b=request.getParameter("chest");
             String c=request.getParameter("hand");
             String d=request.getParameter("neck");
             String e=request.getParameter("shlen");
             String f=request.getParameter("belly");
             String g=request.getParameter("knee");
             String h=request.getParameter("foot");
             String j=request.getParameter("hlen");
             
             Class.forName("com.mysql.jdbc.Driver");
           // out.println("record inserted successfully 2");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/tailor","root","");
                String qs="select reg_id,address from login where reg_id=?";
            PreparedStatement pss=con.prepareStatement(qs);
             pss.setString(1,a);
             ResultSet r=pss.executeQuery();
             if(r.next())
             {
                 String place=r.getString(2);
                                                
                            
                 String q="call inserter(?,?,?,?,?,?,?,?,?,?)";
             PreparedStatement ps=con.prepareStatement(q);
                           ps.setString(1,a);
                            ps.setString(2,place);
                            ps.setString(3,b);
                            ps.setString(4,c);
                            ps.setString(5,d);
                            ps.setString(6,e);
                            ps.setString(7,f);
                            ps.setString(8,g);
                            ps.setString(9,h);
                            ps.setString(10,j);
                            
                            
                                     int i=ps.executeUpdate();
                                     if(i>0)
                                     {
                                         response.sendRedirect(request.getContextPath() + "/admin.jsp");
                                     }
                                     else{
                                       out.println("record not updated");
                                     }
             }
             else
             {
                  response.sendRedirect(request.getContextPath() + "/neworder.jsp");
             }
                                         
                                                          %>

                                                          <a href="status.jsp"><span>Retry</span></a>
        
    </body>
</html>
