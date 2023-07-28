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
        </tr>
    </table>

    <table WIDTH="100%" style="background-color:black;height:50px;color:white">
        <tr align="center" bgcolor="red">
            <td class="tdtheme"><a href="home.jsp" class="link">HOME</a></td>
            <td class="tdtheme"><a href="home.jsp" class="link">ABOUTUS</a></td>
            <td class="tdtheme"><a href="home.jsp" class="link">SETTING</a></td>
            <td class="tdtheme"><a href="home.jsp" class="link">DONATE</a></td>
            <td class="tdtheme"><a href="contact.jsp" class="link">CONTACT</a></td>
            <td class="tdtheme"><a href="home.jsp" class="link">SIGN OUT</a></td>

        </tr>
    </table>
    <tr align="center">
    <div style="background-image:url('images/12312.jpeg');background-size:100%; background-repeat:no-repeat;width:100%;height:700px;margin-top:-5px">
        <form action="pswdchange.jsp">
        <table align="center" style="background-color: rgba(255,255,255,0.7)" width="50%"
                       height="350px" cellspacing="10" cellpadding="10">
                    <tr>
                        <td colspan="2" style="font-size: 20px;font-family: berline sans fb;background-color: rgba(200,50,60,0.5)" >Password Change</td>
                    </tr>
                    <tr>
                        <td>USER ID</td>
                        <td><input type="text" name="uid" class="texttheme"placeholder="Enter User Id"></td>
                    </tr>
                    <tr>
                        <td>OLD PASSWORD</td>
                        <td><input type="text" name="oldpwd" class="texttheme"placeholder="Enter Old Password"></td>
                    </tr>
                    <tr>
                        <td>NEW PASSWORD</td>
                        <td><input type="text" name="newpwd" class="texttheme"placeholder="Enter New Password"></td>
                    </tr>
                    <tr>
                    <tr>
                        <td>CONFIRM PASSWORD</td>
                        <td><input type="text" name="cnewpwd" class="texttheme"placeholder="Confirm Password"></td>
                    </tr>
                    
                    <tr align="center">
                        <td colspan="2">
                            <input type="submit" value="SIGNIN" class="btntheme">
                            <input type="reset" value="CLEAR"class="btntheme">
                        </td>
                    </tr>
                </table>
            </form>
    </div>
     </body>
</html>
