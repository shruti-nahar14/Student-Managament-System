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
 try
 {
 Connection con;
 PreparedStatement pst;
 
 Class.forName("oracle.jdbc.OracleDriver");
 con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system" ,"oracle");
 out.println(con);
 pst=con.prepareStatement("delete from batch where id=?");
 pst.setString(1,batchid);
 int i=pst.executeUpdate();
 if(i>0)
 {
 out.println("------------RECORD DELETED!!!!!!!!!!!----------------");
 }
 }
 catch(Exception ex)
 {
	 
 }
 
%>