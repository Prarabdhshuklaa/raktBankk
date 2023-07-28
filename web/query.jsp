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
            <div style="background-image:url('images/final.gif');background-size:100%; background-repeat:no-repeat;width:100%;height:700px;margin-top:-5px">
        <form action="doquery.jsp"> 
        <dialog open style="margin-top: 80px"> Raise a query</dialog>
         <tr>
                        <td>USER NAME </td>
                        <td><input  style="margin-top: 10px"  type="text" name="fnm" class="texttheme"placeholder="Enter Name"></td>
                    </tr>
                    <br>
        <textarea    style="margin-top: 40px" 50px; rows="5" cols="60" name="text" placeholder="Enter text" class="comp"></textarea> <br><br>
            <input type="submit" value="Submit">
        </div>
        </div>
         </body>
</html>
