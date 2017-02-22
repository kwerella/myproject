<%-- 
    Document   : register
    Created on : Feb 6, 2017, 7:47:09 PM
    Author     : ABC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>

<!DOCTYPE html>
<%! Connection con;PreparedStatement ps;ResultSet rs;Statement st;%>
<%!
  public void jspInit()
 {


                try{
                   
                
                Class.forName("org.apache.derby.jdbc.ClientDriver");
                con= DriverManager.getConnection("jdbc:derby://localhost:1527/sample [app on APP]","app","app");
                st=con.createStatement();
                 ps=con.prepareStatement("insert into register values(?,?,?,?,?)");
              
                
                   
                }
                catch(ClassNotFoundException e)
                        {
                            e.printStackTrace();
                        }
                catch(SQLException e)
                {
                    e.printStackTrace();
                }
                
                 }
 %> 
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register</title>
    </head>
    <body>
        
        <% 
            
        String n=request.getParameter("UserId");
        String c=request.getParameter("Password");
        String cn=request.getParameter("Name");
        String l=request.getParameter("Address");
        String p=request.getParameter("Country");
       
        
        ps.setString(1,n);
        ps.setString(2,c);
        ps.setString(3,cn);
        ps.setString(4,l);
        ps.setString(5,p);
        
        ps.executeUpdate();
          rs=st.executeQuery("select * from register");
            %>
           
         
</html>
</body>
        <%!
              
    public void jspDestroy()
{
   try
{
    con.close();
}
catch(SQLException e)
{
 e.printStackTrace();
}
}
%>