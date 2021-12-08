
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
<title>Course</title>
</head>
<body>
<h1>Course</h1>
   <div class="row">
       <div class="col-sm-4">
         <form method="POST"  align="left" action="add.jsp">
            <div>
                 <label class="form-label">Courses</label>
                 <input type="text" id="name" name="name" placeholder="Course Name" class="form-control" required>
            </div>
            <br>
            <div>
                 <label class="form-label">Duration</label>
                 <input type="text" id="duration" name="duration" placeholder="Duration" class="form-control" required>
            </div>
            <br>
            <div>
                 <input type="submit" name="submit" value="Submit" class="btn btn-info"> &nbsp &nbsp
                  <input type="reset" name="reset" value="Reset" class="btn btn-warning">
            </div>
         </form>
       </div>
       <div class="col-sm-8">
            <div class="panel-body">
               <table id="tb1-course" class="table table-responsive table-border" cellpadding="0" width="100%">
               <thead>
               <tr>
                  <th>Course Name</th>
                   <th>Duration</th>
                    <th>Edit</th>
                     <th>Delete</th>
               </tr>
               
               <tbody>
      <% 
      Connection con;
      PreparedStatement pst;
      try
      {
      Class.forName("oracle.jdbc.OracleDriver");
       con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system" ,"oracle");
       String query="select * from course";
       Statement st=con.createStatement();
       ResultSet rs=st.executeQuery(query);
       while(rs.next())
       {
    	   String id=rs.getString("id");
       
      %>
                <tr>
                <td><%=rs.getString("coursename") %></td>
                <td><%=rs.getString("duration") %> </td>
                <td><a href="courseudpate.jsp?id=<%=id %>">Edit</a> </td>
                <td><a href="coursedelete.jsp?id=<%=id %>">Delete</a> </td>
                </tr>
                <% } %>
              <% }
               catch(Exception ex)
               {
                 out.println();
                } 
          %>
               </tbody>
               </table>
            
       </div>
   </div>
</body>
</html>