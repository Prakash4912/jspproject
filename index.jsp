<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="login.jsp">
<center>
<table border="1" width="30%" cellpadding="3">
<thead>
<tr>
<th colspan="2">Login Here</th>
</tr>
</thead>
<tbody>
<tr>
<td>User Name</td>
<td><input type="text" name="uname"/></td>
</tr>
<tr>
<td>Password</td>
<td>
<input type="password" name="pass" ></td>
</tr>
<tr>
<td><input type="submit" value="Login" /></td>
<td><input type="reset" value="Reset" /></td>
</tr>
<tr>
<td colspan="2">Yet Not Registered!!
 <a href="reg.jsp">Register Here</a>
 </td>
</tr>
</tbody>
</table>
</center>
</form>
</body>
</html>