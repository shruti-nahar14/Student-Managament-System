<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="java.sql.*" %>
<% try
{ 
	Class.forName("oracle.jdbc.OracleDriver");
}
catch(Exception ex)
{
 out.println();
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<title>Insert title here</title>
</head>
<body>
<h1>Course</h1>
   <div class="row">
       <div class="col-sm-4">
         <form method="POST"  align="left" action="batchdata.jsp">
         <% 
         Connection con;
         PreparedStatement pst;
         ResultSet rs;
         try
         {
         Class.forName("oracle.jdbc.OracleDriver");
         con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system" ,"oracle");
         String id=request.getParameter("id");
         pst=con.prepareStatement("select * from batch where id=?");
         pst.setString(1,id);
         rs=pst.executeQuery();
         while(rs.next())
         {
        	 
          %>
          <div>
                 <label class="form-label">Batch Id</label>
                 <input type="text" id="id" name="id"  class="form-control"  value="<%=rs.getString("id")%>" required>
            </div>
            <br>
            <div>
                 <label class="form-label">Batch Name</label>
                 <input type="text" id="name" name="name"class="form-control" value="<%=rs.getString("batchname")%>" required>
            </div>
            <br>
            <div>
                 <label class="form-label">Year</label>
                 <input type="text" id="duration" name="duration"  class="form-control" value="<%=rs.getString("year")%>" required>
            </div>
            <br>
            <div>
                 <input type="submit" name="submit" value="Submit" class="btn btn-info"> &nbsp &nbsp
                  <input type="reset" name="reset" value="Reset" class="btn btn-warning">
            </div>
            <% } %>
             <% }
               catch(Exception ex)
               {
                 out.println();
                } 
          %>
          
         </form>
         </div>
         </div>
         </body>
         </html>