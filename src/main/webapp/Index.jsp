<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String m=request.getParameter("msg");
if(m!=null){
out.print(m);
}
%>
<form action="./LoginAdmin">
<h3 align="center">WELCOME TO BANK MANAGEMENT SYSTEM</h3>
<h3 align="Center">Admin Module</h3>
Employee Login:<br><br>
Enter Username : <input type="text" name="Ename"/><br><br>
Enter Password : <input type="password" name="Epwd"/><br><br>

<input type="Submit" value="Login"/><br><br>
New Employee Registration?<a href="Register.jsp">Click Here</a>
</form>
</body>
</html>