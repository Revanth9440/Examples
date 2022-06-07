<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Login Page</h1>
<form action="data.jsp" method="post">
<div>
Enter User Name :
<input type="text" name="username" required>
</div><br>
<div>
Enter Password :
<input type="password" name="password" required>
</div><br>
<div>
<input type="submit" value="Login">
</div><br>
New User?<a href="registrationpage.jsp">Register</a>

</form>
</body>
</html>