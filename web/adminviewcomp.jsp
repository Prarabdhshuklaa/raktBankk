<html>
    
    <head>
        <link href="newcss.css" rel="stylesheet">
        <title>RaktBank</title>
    </head>
    <!--<body  style="background-color:rgba(150,50,50,0.5)">-->
        <table width="90%">
            <tr align="center">
                <td><img src="images\Raktbank_logo.png" width="100px" height="120px"></td>
                <td class="titletheme" >RAKT BANK</td>
                <td><a href="login.jsp">SIGNIN</a></td>
            </tr>
        </table>

        <table WIDTH="100%" style="background-color:black;height:50px;color:white">
            <tr align="center" bgcolor="red">
                <td class="tdtheme"><a href="home.jsp"class="link">HOME</a></td>
                <td class="tdtheme"><a href="aboutus.jsp"class="link">ABOUTUS</a></td>
                <td class="tdtheme"><a href="home.jsp"class="link">MAP</a></td>
                <td class="tdtheme"><a href="home.jsp"class="link">DONATE</a></td>
                <td class="tdtheme"><a href="help.jsp"class="link">GET HELP</a></td>

            </tr>
        </table>

        <div style="background-image:url('images/final.gif');background-size:100%; background-repeat:no-repeat;width:100%;height:700px;margin-top:-5px">
            <%@page import="java.sql.*"%>
            <div>
            <%
    Class.forName("com.mysql.jdbc.Driver");
     Connection con = DriverManager.getConnection(
            "jdbc:mysql://localhost:3306/test1","root","root1");
    PreparedStatement st = con.prepareStatement(
            "select * from docomp");
    ResultSet rs = st.executeQuery();%>
                <center><table >
                  
                        <tr>
                            <th>USER NAME</th>
                            <th>COMPLAIN</th>
                             
                        </tr>
                <%
    while(rs.next()){
                %>
                   <tr>
                   <td ><%=rs.getString(1)%> </td>
                     <td><%=rs.getString(2)%> </td>
                       
                   </tr>
  
            <%
                }
    con.close();
            %>
        </div>
         </body>
</html>
