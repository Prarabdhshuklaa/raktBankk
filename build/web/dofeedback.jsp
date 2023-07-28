<%@page import="java.sql.DriverManager,java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.*"%>

<%
    
    String feedback = request.getParameter("text");
    String User = request.getParameter("fnm");
   
    Class.forName("com.mysql.jdbc.Driver");
        
           Connection con=DriverManager.getConnection(
           "jdbc:mysql://localhost:3306/test1","root","root1");
    PreparedStatement st=con.prepareStatement(
            "insert into dofeedback values('"+User+"','"+feedback+"')");
    st.executeUpdate();
    con.close();
    response.sendRedirect("thankyoufeedback.jsp");
%>