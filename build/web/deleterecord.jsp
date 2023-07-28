<%@page import="java.sql.DriverManager,java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%
    String userid=request.getParameter("fullname");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection(
    "jdbc:mysql://localhost:3306/test1", "root", "root1");
    PreparedStatement st = con.prepareStatement(
    "delete from donordata where userid=?");
    st.setString(1,userid);
    st.executeUpdate();
    response.sendRedirect("showdonor.jsp");

%>