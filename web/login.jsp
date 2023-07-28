<%@page import="java.sql.DriverManager,java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%
    String btn=request.getParameter("btn");
    int RESULT=0;
    int VALIDATION=0;
    if (btn!=null&& btn.equals("SIGNIN")) 
    {
        String userid=request.getParameter("uid");
        String password=request.getParameter("pwd");
        if(userid.equals("")&& password.equals("")) 
        {
            VALIDATION=3;
        } else if(password.equals("")) 
        {
            VALIDATION=2;
        } else if(userid.equals("")) 
        {
            VALIDATION=1;
        } 
        else 
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection(
            "jdbc:mysql://localhost:3306/test1","root","root1");
            PreparedStatement st=con.prepareStatement(
            "select*from signupcode where userid=? and password=?");
            st.setString(1,userid);
            st.setString(2,password);
            ResultSet rs = st.executeQuery();
            if(rs.next()) 
            {
                Cookie ck=new Cookie("packers", userid);
                ck.setMaxAge(200000);//time in second
                response.addCookie(ck);//in cookies folder
                session.setAttribute("CALL",userid);//name,value
                response.sendRedirect("loginafter.jsp");
            } 
            else
            {
                RESULT=1;
            }
        }
    }
%>
<html>

    <head>
        <link href="newcss.css" rel="stylesheet">
        <title>RaktBank</title>
    </head>
    <table width="90%">
        <tr align="center">
            <td><img src="images\Raktbank_logo.png" width="100px" height="120px"></td>
            <td class="titletheme" >RAKT BANK</td>
        </tr>
    </table>
    <table WIDTH="100%" style="background-color:red;height:50px;color:white">
        <tr align="center" bgcolor="red">
            <td class="tdtheme"><a href="home.jsp"class="link">HOME</a></td>
            <td class="tdtheme"><a href="aboutus.jsp"class="link">ABOUTUS</a></td>
            <td class="tdtheme"><a href="Password.jsp"class="link">SETTING</a></td>
            <td class="tdtheme"><a href="home.jsp"class="link">DONATE</a></td>
            <td class="tdtheme"><a href="contact.jsp"class="link">CONTACT</a></td>

        </tr>
    </table>

    <div style="background-image:url('images/final.gif');background-size:100%; background-repeat:no-repeat;width:100%;height:700px;margin-top:-5px">

        <form action="">
            <table align="center" style="background-color:rgba(255,255,255,0.7)" width="40%"
                   height="250px" cellspacing="2" cellpadding="8">
                <tr>
                    <td colspan="2" style="font-size:20px;font-family:berline sans fb;
                        background-color:rgba(200,50,60,0.5)">USER SIGN IN</td>
                </tr>
                <%
                    if(btn!=null&&RESULT==1) 
                    {
                %>
                <tr bgcolor="red">
                    <td colspan="2">invalid id/password</td>
                </tr>
                <%}%>
                <%
                    if(btn!=null&&VALIDATION==1) 
                    {
                %>
                <tr bgcolor="red">
                    <td colspan="2">id is required</td>
                </tr>
                <%}%>
                <%
                    if(btn!=null&&VALIDATION==2) 
                    {
                %>
                <tr bgcolor="red">
                    <td colspan="2">id is required</td>
                </tr>
                <%}%>
                <%
                    if(btn!=null&&VALIDATION==2) 
                    {
                %>
                <tr bgcolor="red">
                    <td colspan="2">password is required</td>
                </tr>
                <%}%>
                <%
                    if(btn!=null&&VALIDATION==3) 
                    {
                %>
                <tr bgcolor="red">
                    <td colspan="2">both the fields are required</td>
                </tr>
                <%}%>
                <tr align="center"> 
                    <td colspan="2"><img src="images/user.png" height="200px" width="200px"></td>
                </tr>  
                <td>USER ID</td>
                <td><input type="text" name="uid" placeholder="Enter User Id Here" class="texttheme"></td>
                </tr>
                <tr>
                    <td>PASSWORD <td>
                        <input type="password" name="pwd" placeholder="Enter Password Here" class="texttheme">
                </tr>
                <tr align="center">
                    <td colspan="2">
                        <input type="submit" value="SIGNIN" name="btn" class="btntheme">
                        <input type="reset" value="CLEAR" class="btntheme">
                    </td>
                </tr>
            </table>
        </form>    
    </div>
     </body>
</html>
