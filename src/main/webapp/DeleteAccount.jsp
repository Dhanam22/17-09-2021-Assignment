<%@ page language="java" import="java.sql.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%Long no=Long.parseLong(request.getParameter("no"));

try {
Class.forName("com.mysql.cj.jdbc.Driver");

String jdbcurl = application.getInitParameter("url");
String username = application.getInitParameter("username");
String password = application.getInitParameter("password");
Connection con=DriverManager.getConnection(jdbcurl,username,password);
String query="delete from customer where Caccno=?";
PreparedStatement st=con.prepareStatement(query);
st.setLong(1,no);
int i=st.executeUpdate();
if(i>0)
{
out.println("Record Deleted");

}
else {
out.println("Record Cannot Be Deleted");

}

} catch (ClassNotFoundException | SQLException e) {
// TODO Auto-generated catch block
e.printStackTrace();} %>
</body>
</html>