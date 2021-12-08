<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%!   
Connection con;
PreparedStatement pst;
ResultSet rs;
%>
<%
        String name = request.getParameter("sname");
        String course = request.getParameter("course");
        String fee = request.getParameter("fee");
         out.println("hi");
      try
      {
        Class.forName(" oracle.jdbc.OracleDriver");
        con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system" ,"oracle");
        out.println(con);
        pst = con.prepareStatement("insert into records(name,course,fee)values(?,?,?)");
        pst.setString(1, name);
        pst.setString(2, course);
        pst.setString(3, fee);
        int i=pst.executeUpdate();  
        out.println(i);
        if(i>0)
        { 
          
          out.println("Record Adddeddddd");  
        }
        else
        {
        	out.println("Record not Adddeddddd");  
        }
      }
      catch(Exception ex)
      {
    	  
      }
      
  %>          
    
 