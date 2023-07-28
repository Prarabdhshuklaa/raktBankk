<%@page import="java.sql.DriverManager,java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>

<%
    String userid = request.getParameter("uid");
    String fullname = request.getParameter("fnm");
    String mailid = request.getParameter("mid");
    String phonenumber= request.getParameter("phno");
    String password = request.getParameter("pwd");
    String confirmpassword = request.getParameter("cnfpwd");
    


    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection(
            "jdbc:mysql://localhost:3306/test1", "root", "root1");
    PreparedStatement st=con.prepareStatement(
            "insert into signupcode value(?,?,?,?,?,?)");
    st.setString(1,userid);
    st.setString(2,fullname);
    st.setString(3,mailid);
    st.setString(4,phonenumber);
    st.setString(5,password);
    st.setString(6,confirmpassword);
    st.executeUpdate();
    con.close();
    response.sendRedirect("login.jsp");
%>
