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
<form action="DisplayAccount.jsp" method="post">
<h3>WELCOME TO BANK MANAGEMENT SYSTEM</h3>
Employee Customer Username and Account Number You want to Display:<br><br>
Enter Customer Username : <input type="text" name="Cusname"/><br><br>
Enter Customer Account No : <input type="text" name="Caccno"/><br><br>
<input type="submit" name="Submit">
</form>
</body>
</html>