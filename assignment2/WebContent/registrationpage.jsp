<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2>Registration Page</h2>
<form action="registrationdata.jsp" method="post">
<div>
Enter User Name :
<input type="text" name="username" required>
</div><br>
<div>
Enter Password :
<input type="password" name="password" required>
</div><br>
<div>
Enter Email :
<input type="email" name="email" required>
</div><br>
<div>
<input type="submit" value="Register">
</div>

</form>
</body>
</html>