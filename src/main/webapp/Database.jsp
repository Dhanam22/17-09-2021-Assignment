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
String Ename=request.getParameter("Ename");
String Euser=request.getParameter("Euname");
String Epass=request.getParameter("Epwd");

try {
Class.forName("com.mysql.cj.jdbc.Driver");
String jdbcurl = application.getInitParameter("url");
String username = application.getInitParameter("username");
String password = application.getInitParameter("password");
Connection con=DriverManager.getConnection(jdbcurl,username,password);
String query="insert into employee values(?,?,?)";
PreparedStatement st=con.prepareStatement(query);
st.setString(1, Ename);
st.setString(2,Euser);
st.setString(3, Epass);
int i=st.executeUpdate();
if(i>0)
{
out.println("Successfull Insertion");

}
else {
out.println("Invalid username and password");

}

} catch (ClassNotFoundException | SQLException e) {
// TODO Auto-generated catch block
e.printStackTrace();
}
%>
</body>
</html>