<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String name=session.getAttribute("name").toString();
String address=session.getAttribute("address").toString();
out.println(name);
out.println(address);
out.println("<br>");
%>
<a href=third.jsp>continue</a>
</body>
</html>