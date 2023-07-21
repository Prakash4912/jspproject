<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import ="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
String fname = request.getParameter("fname");
String lname = request.getParameter("lname");
String email = request.getParameter("email"); 
String user = request.getParameter("uname");
String pwd = request.getParameter("pass");


Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jspdemo","root","Prakash");
Statement st = con.createStatement();
//ResultSet rs;
int i = st.executeUpdate("insert into student(first_name, last_name, email, uname, pass) values ('" + fname + "','" + lname + "','" + email + "','" + user + "','" + pwd + "')")

;
if (i > 0) 
{
	session.setAttribute("userid", user);
	response.sendRedirect("welcome.jsp");
	out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
} 
else 
{
response.sendRedirect("index.jsp");
}
%>
</body>
</html>