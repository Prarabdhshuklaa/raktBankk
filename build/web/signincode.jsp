<%--<%@page import="java.sql.DriverManager,java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>


<%
    String userid = request.getParameter("uid");
    String password = request.getParameter("pwd");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test1", "root","root1");
    PreparedStatement st = con.prepareStatement("select * from signupcode where userid=? and password=?");
    st.setString(1, userid);
    st.setString(2, password);
    ResultSet rs = st.executeQuery();
    if (rs.next()) 
    {
      Cookie ck=new Cookie("packers",userid);
        ck.setMaxAge(200000);
        response.addCookie(ck);
        
        session.setAttribute("CALL",userid);
        response.sendRedirect("loginafter.jsp");
    } 
    else 
    {
        out.println("invalid id/password");
    }
%>--%>

