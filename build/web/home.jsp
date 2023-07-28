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
                <td class="tdtheme"><a href="map.jsp"class="link">MAP</a></td>
                <td class="tdtheme"><a href="donorform.jsp"class="link">DONATE</a></td>
                <td class="tdtheme"><a href="contact.jsp"class="link">CONTACT</a></td>

            </tr>
        </table>

        <div style="background-image:url('images/final.gif');background-size:100%; background-repeat:no-repeat;width:100%;height:700px;margin-top:-5px">
            <form action="signupcode.jsp">
                <table align="right" style="background-color: rgba(255,255,255,0.7)" width="40%"
                       height="350px" cellspacing="10" cellpadding="10">
                    <tr>
                        <td colspan="2" style="font-size: 20px;font-family: berline sans fb;background-color: rgba(200,50,60,0.5)">REGISTER HERE</td>
                    </tr>
                    <tr>
                        <td>USER ID</td>
                        <td><input type="text" name="uid" class="texttheme"placeholder="Enter ID"></td>
                    </tr>
                    <tr>
                        <td>FULL NAME</td>
                        <td><input type="text" name="fnm" class="texttheme"placeholder="Enter Name"></td>
                    </tr>
                    <tr>
                        <td>MAIL ID</td>
                        <td><input type="text" name="mid" class="texttheme"placeholder="Enter Email"></td>
                    </tr>
                    <tr>
                    <tr>
                        <td>PHONE NUMBER</td>
                        <td><input type="text" name="phno" class="texttheme"placeholder="Enter Phone Number"></td>
                    </tr>
                    <tr>
                        <td>PASSWORD</td>
                        <td><input type="password" name="pwd" class="texttheme"placeholder="Enter Password"></td>
                    </tr>
                    <tr>
                        <td>CONFIRM PASSWORD</td>
                        <td><input type="password" name="cnfpwd" class="texttheme"placeholder="Confirm Password"></td>
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
