<%@page import="java.sql.DriverManager,java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.*"%>

<%
String s1 = request.getParameter("uid");
String s2 = request.getParameter("pwd");
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection(  "jdbc:mysql://localhost:3306/test1","root","root1");
Statement st =con.createStatement();
ResultSet rs = st.executeQuery("select * from admin where userid='"+s1+"' and password='"+s2+"';");
if(rs.next()){
response.sendRedirect("adminpage.jsp");
    }
    else{
    out.println("Invalid");
    }
    con.close();
%>
    
   
