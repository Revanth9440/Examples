
<%@ include file="connect.jsp" %>
<%
String username=request.getParameter("username");
String password=request.getParameter("password");

session.setAttribute("username",username);

try
{
	
	PreparedStatement ps=con.prepareStatement("select * from admin where username=? and password=?");
	ps.setString(1, username);
	ps.setString(2, password);
	
	
	ResultSet n= ps.executeQuery();

	if(n.next())
{
		out.println("logged successfully");
		%>
		<jsp:forward page="homepage.jsp"/>
		<%
}
else
{
	out.println("logged regected");
}
con.close();
}
catch(Exception e)
{
	e.printStackTrace();
	
}
%>
