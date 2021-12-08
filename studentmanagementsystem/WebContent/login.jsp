<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<title>Login</title>
</head>
<body>
<h1> Login Page </h1>
<div class="row">
   <div class="col-sm-4">
      <form method="POST" action="Loginv.jsp">
         <div align="left">
            <label class="form-label"> Username
            </label>
            <input type="text" id="uname" name="uname" placeholder="Username" class="form-control" size="30px" required> 
         </div>
         <div align="left">
            <label class="form-label"> Password
            </label>
            <input type="password" id="password" name="password" placeholder="Password" class="form-control" size="30px" required> 
         </div>
         <br>
          <div align="left">
            <input type="submit" id="submit" name="submit" value="Submit" class="btn btn-info"> &nbsp &nbsp
            <input type="reset" id="reset" name="reset" value="Reset" class="btn btn-warning"> 
         </div>
      </form>
   </div>
   <div class="col-sm-8">
     <img src="images\Screenshot (299).png" width="800" height="700">
   </div>
</div>
</body>
</html>