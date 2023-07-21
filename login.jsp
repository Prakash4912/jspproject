<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ page import ="java.sql.*" %>
<%
String id = request.getParameter("uname");
String pwd = request.getParameter("pass");
Class.forName("com.mysql.jdbc.Driver");
Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/Students1","root","Prakash");
Statement st = con.createStatement();
ResultSet rs;
rs = st.executeQuery("select * from student where uname='"+ id + "' and pass='" + pwd + "'");
if (rs.next()) {
session.setAttribute("userid", id);

response.sendRedirect("success.jsp");
} 
else {
out.println("Invalid password <a href='index.jsp'>tryagain</a>");
}
%>
</body>
</html>