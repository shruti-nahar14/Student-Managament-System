<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="java.sql.*" %>
<%!
Connection con;
PreparedStatement pst;
ResultSet rs;

%> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
        <link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <h1>Student Registation Form</h1>
        </br>
        <div class="row">
            <div class="col-sm-4">
                <form  method="POST" action="add2.jsp" >
                    
                    <div alight="left">
                        <label class="form-label">Student Name</label>
                        <input type="text" class="form-control" placeholder="Student Name" name="sname" id="sname" required >
                     </div>
                     <br>
                        
                    <div alight="left">
                        <label class="form-label">Course</label>
                        <input type="text" class="form-control" placeholder="Course" name="course" id="course" required >
                     </div>
                       <br> 
                     <div alight="left">
                        <label class="form-label">Fee</label>
                        <input type="text" class="form-control" placeholder="Fee" name="fee" id="fee" required >
                     </div>
                         </br>
                        
                     <div alight="right">
                         <input type="submit" id="submit" value="submit" name="submit" class="btn btn-info"> &nbsp &nbsp
                         <input type="reset" id="reset" value="reset" name="reset" class="btn btn-warning">
                     </div>  
                        
                </form>
            </div>
            
             <div class="col-sm-8">
                 <div class="panel-body">
                     <table id="tbl-student" class="table table-responsive table-bordered" cellpadding ="0" width="100%">
                         <thead>
                             <tr>
                                    <th>Student Name</th>
                                    <th>Course</th>
                                    <th>Fee</th>
                                    <th>Edit</th>
                                    <th>Delete</th>
                             </tr>  
                         
                             <%  
                                   try
                                {
                                Class.forName("oracle.jdbc.OracleDriver");
                                con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system" ,"oracle");
                                
                                  String query = "select * from records";
                                  Statement st = con.createStatement();
                                  
                                    rs =  st.executeQuery(query);
                                    
                                        while(rs.next())
                                        {
                                            String id = rs.getString("id");
                                   %>
            
                             <tr>
                                 <td><%=rs.getString("sname") %></td>
                                 <td><%=rs.getString("course") %></td>
                                 <td><%=rs.getString("fee") %></td>
                                 <td><a href='update.jsp?id=<%=id%>'>Edit</a></td>
                                 <td><a href='delete.jsp?id=<%=id%>'>Delete</a></td>
                             </tr>
                            
                            
                                <%
                                
                                 }
                                  } catch(Exception ex)
                                {
                            		 
                                } %>
                            
                     </table>    
                 </div>
 
            </div>  
        </div>
 
    </body>
</html>