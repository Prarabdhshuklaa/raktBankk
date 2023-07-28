<%@include file="securityguard.jsp"%>
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
                   <td class="tdtheme"><a href="Password.jsp" class="link">SETTING</a></td>
                   <td class="tdtheme"><a href="feedback.jsp" class="link" >FEEDBACK</a></td>
                   <td class="tdtheme"><a href="delprofile.jsp" class="link" >DELPROFILE</a></td>
                   <td class="tdtheme"><a href="complain.jsp" class="link" >COMPLAIN</a></td>
                   <td class="tdtheme"><a href="query.jsp" class="link" >ANY QUERY ?</a></td>
                   <td class="tdtheme"><a href="contact.jsp" class="link">HELP/CONTACT</a></td>
                   <td class="tdtheme"><a href="destroy.jsp" class="link">SIGN OUT</a></td>

               </tr>
           </table>
           <tr align="center">
           <table>
               <td colspan="2">

                   <div style="width:80% ;  margin-top: 00px; margin-right: 50px;">           
                       <button><a href="donorform.jsp" class="link" >Donate Blood</a></button>
                   </div>
                   <div style="width:80% ; margin-top: 30px; margin-right: 50px; ">
                       <button style="color: red;"><a href="showdonor.jsp" class="link" >Recieve Blood</a></button>
                   </div>
                   </tr>
           </table>
           <%--<%@include file="newtop.jsp"%>--%>
           <div style="background-image:url('images/12312.jpeg');background-size:100%; background-repeat:no-repeat;width:100%;height:700px;margin-top:-5px">



           </div>
            </body>
</html>
