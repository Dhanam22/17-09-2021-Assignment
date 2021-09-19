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

String uuser=request.getParameter("Cusname");
Long no=Long.parseLong(request.getParameter("Caccno"));

try {
Class.forName("com.mysql.cj.jdbc.Driver");

String jdbcurl = application.getInitParameter("url");
String username = application.getInitParameter("username");
String password = application.getInitParameter("password");
Connection con=DriverManager.getConnection(jdbcurl,username,password);
String query="select*from Customer where Cuname=? and Caccno=?";
PreparedStatement st=con.prepareStatement(query);

st.setString(1,uuser);
st.setLong(2,no);

ResultSet rs=st.executeQuery();
if(rs.next())
{
	out.println("Account Details of The Customer "+uuser+"<br>");
	out.println("<br/>Name: "+rs.getString(1)+"<br/> Username: "+rs.getString(2)+"<br/> MobileNo: "+rs.getLong(4)+"<br/> Address: "+rs.getString(5)+ "<br/> Account No: "+rs.getLong(6)+"<br/> Account Balance:"+rs.getString(7));
}
else
{
	String message="Invalid Customer Username and Account Number";
	response.sendRedirect("Display.jsp?msg="+message);
}
}
catch (ClassNotFoundException | SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
	}

%>

</body>
</html>