<%
response.addHeader("Pragma","no-Cache");
response.addHeader("Cache-Control","no-Store");
if(session==null)
{
   response.sendRedirect("home.jsp");
}
String name=(String)session.getAttribute("CALL");
if(name==null)
{
   response.sendRedirect("home.jsp");
}
%>