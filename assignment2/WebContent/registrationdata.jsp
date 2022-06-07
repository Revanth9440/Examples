<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ include file="connect.jsp" %>
<%
String name=request.getParameter("password");
String password=request.getParameter("password");
String email=request.getParameter("email");
String username=request.getParameter("username").toString();
try
{
	Statement st=con.createStatement();
	ResultSet rs= st.executeQuery("select * from admin where username= '"+username+" ' ");
	if(rs.next())
	{
		%>
		<script>alert("User Name already exists")</script>
		<jsp:include page="registrationpage.jsp"/>
		<%
	}
	else
	{
PreparedStatement ps=con.prepareStatement("insert into admin(username, password, email) values(?,?,?)");

	ps.setString(1, name);
	ps.setString(2, password);
	ps.setString(3, email);
	
	
int n= ps.executeUpdate();
if(n==1)
{
	out.println("records inserted");
	%>
	<jsp:forward page="index.jsp"/>
	<%

}
else
{
	out.println("records not inserted");
}
con.close();
}
}
catch(Exception e)
{
	e.printStackTrace();
	
}
%>
</body>
</html>