<%@page import="java.sql.*" %>
<% try
{
	Class.forName("oracle.jdbc.OracleDriver");
}
catch(Exception ex)
{
}%>

<%   
 String batchname= request.getParameter("name");
 String year= request.getParameter("year");
 try
 {
 Connection con;
 PreparedStatement pst;
 
 Class.forName("oracle.jdbc.OracleDriver");
 con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system" ,"oracle");
 pst=con.prepareStatement("insert into batch(batchname,year)values(?,?)");
 pst.setString(1,batchname);
 pst.setString(2,year);
 int i=pst.executeUpdate();
 if(i>0)
 {
 out.println("------------RECORD ADDED!!!!!!!!!!!----------------");
 }
 }
 catch(Exception ex)
 {
	 
 }
 
%>