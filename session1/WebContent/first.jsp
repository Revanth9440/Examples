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
String name=request.getParameter("name");
String add=request.getParameter("address");
session.setAttribute("name",name);
session.setAttribute("address",add);
out.println(name);
out.println(add);
out.println("<br>");
%>
<a href=second.jsp>continue</a>
</body>
</html>