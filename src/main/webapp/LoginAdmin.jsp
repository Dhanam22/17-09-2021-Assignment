<%@ page language="java" import="java.sql.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String Euser=request.getParameter("Ename");
String Epass=request.getParameter("Epwd");

try {
Class.forName("com.mysql.cj.jdbc.Driver");

String jdbcurl = application.getInitParameter("url");
String username = application.getInitParameter("username");
String password = application.getInitParameter("password");
Connection con=DriverManager.getConnection(jdbcurl,username,password);
String query="select*from employee where Empuname=? and  Emppwd=?";
PreparedStatement st=con.prepareStatement(query);

st.setString(1,Euser);
st.setString(2, Epass);

ResultSet rs=st.executeQuery();
if(rs.next())
{
out.println("welcome "+Euser);
response.sendRedirect("Employee.jsp");
}
else {
String message="Invalid Username and Password";
response.sendRedirect("Index.jsp?msg="+message);

}

} catch (ClassNotFoundException | SQLException e) {
// TODO Auto-generated catch block
e.printStackTrace();
}
%>
</body>
</html>