<%@page import="java.sql.*" %>
 
 
<%
        String id = request.getParameter("id");
        Connection con;
        PreparedStatement pst;
        ResultSet rs;
        try
        {
         Class.forName(" oracle.jdbc.OracleDriver");
         con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system" ,"oracle");
         pst = con.prepareStatement("delete from records where id = ?");
         pst.setString(1, id);
         pst.executeUpdate();  
        
        }
        catch(Exception ex)
        {
                            		 
        }%>
        
        <script>
            
            alert("Record Deletee");
            
       </script>