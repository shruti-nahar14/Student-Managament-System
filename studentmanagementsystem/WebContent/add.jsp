<%@page import="java.sql.*" %>
<% try
{
	Class.forName("oracle.jdbc.OracleDriver");
}
catch(Exception ex)
{
}%>

<%   
 String coursename= request.getParameter("name");
out.println(coursename);

 String duration= request.getParameter("duration");
 try
 {
 Connection con;
 PreparedStatement pst;
 
 Class.forName("oracle.jdbc.OracleDriver");
 con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system" ,"oracle");
 out.println(con);
 pst=con.prepareStatement("insert into course(coursename,duration)values(?,?)");
 pst.setString(1,coursename);
 pst.setString(2,duration);
 pst.executeUpdate();
 out.println("------------RECORD ADDED!!!!!!!!!!!----------------");
 }
 catch(Exception ex)
 {
	 
 }
 
%>