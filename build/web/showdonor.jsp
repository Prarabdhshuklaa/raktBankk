<html>

    <head>
        <link href="newcss.css" rel="stylesheet">
        <title>RaktBank</title>
    </head>
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
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection(
                        "jdbc:mysql://localhost:3306/test1", "root", "root1");
                PreparedStatement st = con.prepareStatement(
                        "select * from donordata");
                ResultSet rs = st.executeQuery();
                ArrayList list1 = new ArrayList();
                ArrayList list2 = new ArrayList();
                ArrayList list3 = new ArrayList();
                ArrayList list4 = new ArrayList();
                ArrayList list5 = new ArrayList();
                ArrayList list6 = new ArrayList();
                ArrayList list7 = new ArrayList();
                
                while (rs.next()) {
                    list1.add(rs.getString(1));
                    list2.add(rs.getString(2));
                    list3.add(rs.getString(3));
                    list4.add(rs.getString(4));
                    list5.add(rs.getString(5));
                    list6.add(rs.getString(6));
                    list7.add(rs.getString(7));
                   
                }

            %>
            <div style="background-size: 100%;
                 background-repeat:no-repeat;width: 100%;height:700px;">
                <table cellspacing="5" cellpadding="5" align="center">
                    <tr bgcolor="white">
                        <td>USERID</td>
                        <td>FULLNAME</td>
                        <td>MAILID</td>
                        <td>PHONENO</td>
                        <td>BLOODGRP</td>
                        <td>ADDRESS</td>
                        <td>CITY</td>
                        
                    </tr>
                    <%                        
                       for(int i=0;i<list1.size();i++) 
                       {
                    %>
                    <tr align="center" style="color:white">
                        <td><%=list1.get(i)%> </td>
                        <td><%=list2.get(i)%> </td>
                        <td><%=list3.get(i)%> </td>
                        <td><%=list4.get(i)%> </td>
                        <td><%=list5.get(i)%> </td>
                        <td><%=list6.get(i)%> </td>
                        <td><%=list7.get(i)%> </td>
                        
                    </tr>
                    <%}
                    %>
                </table>
                    <h1>RECORD DELETION FORM</h1>
                    <form action="deleterecord.jsp">
                        <input type="text" class="texttheme" placeholder="type id here" name="fullname">    
                        <input type="submit" value="DELETE">
                    </form>
            </div>
             </body>
            </html>