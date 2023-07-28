<%@page import="java.sql.DriverManager,java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.*"%>
<%
    String userid = request.getParameter("uid");
    String fullname = request.getParameter("fnm");
    String mailid = request.getParameter("mid");
    String phoneno = request.getParameter("phno");
    String bloodgrp = request.getParameter("bgrp");
    String address = request.getParameter("add");
    String city = request.getParameter("city");
    

    Class.forName("com.mysql.jdbc.Driver");

    Connection con = DriverManager.getConnection(
    "jdbc:mysql://localhost:3306/test1","root","root1");
    PreparedStatement st=con.prepareStatement(
    "insert into donordata value(?,?,?,?,?,?,?)");

    st.setString(1,userid);
    st.setString(2,fullname);
    st.setString(3,mailid);
    st.setString(4,phoneno);
    st.setString(5,bloodgrp);
    st.setString(6,address);
    st.setString(7,city);
    st.executeUpdate();
    con.close();
    response.sendRedirect("thankyou.jsp");
%>