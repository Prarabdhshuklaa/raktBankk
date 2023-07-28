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
    <table WIDTH="100%" style="background-color:black;height:50px;color:white">
        <tr align="center" bgcolor="red">
            <td class="tdtheme"><a href="home.jsp"class="link">HOME</a></td>
            <td class="tdtheme"><a href="aboutus.jsp"class="link">ABOUTUS</a></td>
            <td class="tdtheme"><a href="map.jsp"class="link">MAP</a></td>
            <td class="tdtheme"><a href="donorform.jsp"class="link">DONATE</a></td>
            <td class="tdtheme"><a href="contact.jsp"class="link">CONTACT</a></td>
        </tr>
    </table>
    <div style="background-image:url('images/final.gif');background-size:100%; background-repeat:no-repeat;width:100%;height:700px;margin-top:-5px"><div>
            <%@page import="java.sql.DriverManager,java.sql.Connection"%>
            <%@page import="java.sql.PreparedStatement"%>
            <%@page import="java.sql.ResultSet,java.util.ArrayList"%>
            <%
                String id = (String) session.getAttribute("CALL");
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection(
                        "jdbc:mysql://localhost:3306/test1","root","root1");
                PreparedStatement st = con.prepareStatement(
                        "select* from signupcode where userid=?");
                st.setString(1,id);
                ResultSet rs = st.executeQuery();
                String fullname ="";
                String mailid ="";
                String phoneno ="";
                if (rs.next()) {
                    fullname=rs.getString(2);
                    mailid=rs.getString(3);
                    phoneno=rs.getString(4);
                }
            %>
            <div style="background-size: 100%;
                 background-repeat:no-repeat;width:100%;height:700px;">
                <table widh="40%" cellspacing="5" cellpadding="5" align="center">
                    <tr align="center">
                        <td colspan="2">Welcome<%=session.getAttribute("CALL")%>!!!!Your Profile is...</td>
                    </tr>
                    <tr>
                    <td>USERID</td>
                    <td><%=id%></td>
                    </tr>
                    <td>FULLNAME</td>
                    <td><%=fullname%></td>
                    </tr>
                    <td>MAILID</td>
                    <td><%=mailid%></td>
                    </tr>
                    <td>PHONENO</td>
                    <td><%=phoneno%></td>
                </table>
                    <%
                        String deletebutton=request.getParameter("delbtn");
                        if(deletebutton!=null&& deletebutton.equalsIgnoreCase("DELETEPROFILE")) 
                        {
                            PreparedStatement st1=con.prepareStatement("delete from signupcode where userid=?");
                            st1.setString(1,id);
                            st1.executeUpdate();
                            session.invalidate();
                            response.sendRedirect("home.jsp");
                        }
                    %>
                    <form action="">
                        <input type="submit" value="DELETEPROFILE" name="delbtn">    
                    </form>
            </div>
             </body>
            </html>