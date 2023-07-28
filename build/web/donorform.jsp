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
            <td class="tdtheme"><a href="contact.jsp"class="link">CONTACT</a></td>
            <td class="tdtheme"><a href="home.jsp"class="link">SIGN OUT</a></td>

        </tr>
    </table>
    <tr align="center">
    <div style="background-image:url('images/12312.jpeg');background-size:100%; background-repeat:no-repeat;width:100%;height:700px;margin-top:-5px">
        <form action="donordata.jsp">
            <table align="center" style="background-color: rgba(255,255,255,0.7)" width="60%"
                   height="350px" cellspacing="2" cellpadding="10">
                <tr>
                    <td colspan="2" style="font-size: 20px;font-family: berline sans fb;background-color: rgba(200,50,60,0.5)">Donate Blood</td>
                </tr>

                <tr>
                    <td>USER ID</td>
                    <td><input type="text" name="uid" class="texttheme"placeholder="Enter User Id"></td>
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
                    <td>BLOOD GROUP</td>
                    <td><input type="select" name="bgrp" class="texttheme"placeholder="Enter Blood Group"></td>
                </tr>
                <tr>
                    <td>ADDRESS</td>
                    <td><input type="textarea" name="add" class="texttheme"placeholder="Enter Your Address"></td>
                </tr>
                <tr>
                    <td>CITY</td>
                    <td><input type="select" name="city" class="texttheme"placeholder="Enter Your City"></td>
                </tr>
                <tr>
                    <td>ANY PREVIOUS DISEASE</td>
                    <td> <input type="radio" id="html" name="yes" value="YyES">
                          <label >YES</label><br>
                          <input type="radio" id="css" name="yes" value="NnO">
                          <label > NO</label><br></td>
                </tr>
                <tr>
                    <td>ADD MEDICAL REPORTS</td>
                    <td>  <label for="myfile">SELECT A FILE:</label>
                        <input type="file" id="myfile" name="myfile"><br><br></td>
                </tr>

                <tr align="center">
                    <td colspan="2"><input type="submit" value="REGISTER" name="submitbtn">
                        <input type="reset" value="CLEAR" name="resetbtn">
                    </td>
                </tr>
            </table>
        </form>
    </div>
     </body>
</html>
