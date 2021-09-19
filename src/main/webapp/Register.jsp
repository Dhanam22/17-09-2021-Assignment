<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="Database.jsp" method="post">
<h3 align="center">Admin Module</h3>
<table>
<tr>
<td>
Enter Employee Name:
</td>
<td>
<input type="text" name="Ename"/>
</td>
</tr>
<tr>
<td>
Enter Employee UserName:
</td>
<td>
<input type="text" name="Euname"/>
</td>
</tr>

<tr>
<td>
Enter Employee Password:
</td>
<td>
<input type="password" name="Epwd"/>
</td>
</tr>

<td>
<input type="submit" name="Submit"/><br><br>
<input type="reset" name="Reset"/>
</td></tr>
</table>
</form>
</body>
</html>