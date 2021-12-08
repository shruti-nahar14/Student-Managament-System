<%@page import="java.sql.*" %>
<% try
{
	Class.forName("oracle.jdbc.OracleDriver");
}
catch(Exception ex)
{
}%>

<%   
String batchid= request.getParameter("id");

 String batchname= request.getParameter("name");

 String year= request.getParameter("year");
 try
 {
 Connection con;
 PreparedStatement pst;
 
 Class.forName("oracle.jdbc.OracleDriver");
 con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system" ,"oracle");
 out.println(con);
 pst=con.prepareStatement("update batch set batchname=?,year=? where id=?");
 pst.setString(1,batchname);
 pst.setString(2,year);
 pst.setString(3,batchid);
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