<%
String username=request.getParameter("uname");
String password=request.getParameter("password");
if(username.equals("Shruti123") && password.equals("pass"))
{
	String redirect="index.jsp";
	response.sendRedirect(redirect);
}
else
{
	out.println("Username or password invalid ");
}
%>