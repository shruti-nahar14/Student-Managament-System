<%@page import="java.sql.*" %>
<% try
{
	Class.forName("oracle.jdbc.OracleDriver");
}
catch(Exception ex)
{
}%>

<%   
String courseid= request.getParameter("id");

 String coursename= request.getParameter("name");

 String duration= request.getParameter("duration");
 try
 {
 Connection con;
 PreparedStatement pst;
 
 Class.forName("oracle.jdbc.OracleDriver");
 con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system" ,"oracle");
 out.println(con);
 pst=con.prepareStatement("update course set coursename=?,duration=? where id=?");
 pst.setString(1,coursename);
 pst.setString(2,duration);
 pst.setString(3,courseid);
 int i=pst.executeUpdate();
 if(i>0)
 {
 out.println("------------RECORD UPDATED!!!!!!!!!!!----------------");
 }
 }
 catch(Exception ex)
 {
	 
 }
 
%>