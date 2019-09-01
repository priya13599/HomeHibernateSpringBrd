<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Login Form</title>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="s" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="p" %>
<p:url value="resources/makercheckerlogin.css" var="k"/>
<link href="${k}" rel="stylesheet"/>


</head>
<body>

<div class="wrapper fadeInDown">
  <div id="formContent">
    <!-- Tabs Titles -->
    
    <!-- Icon -->
    <div class="fadeIn first" style="width:200px;size:100px;">
    <p:url value="resources/download.jpg" var="km"/>
    <img src="${km}" id="icon" alt="User Icon" />
    
    </div>
 
    
      <form action="j_spring_security_check" method="post">
      <input type="text" id="login" class="fadeIn second" name="j_username" placeholder="Userid" required>
      <input type="password" id="password" class="fadeIn third" name="j_password" placeholder="Password" required><br>
      <br>
      
                <input type="submit" class="fadeIn fourth" name ="button" value="Login" >
   <form>
   
   <div id="formFooter"  style="background-color:#e3f2fd; color:#5fbae9">
      <a class="underlineHover" href="#">Forgot Password?</a>
    </div>
               </div>
</div>
<%-- <%
}
%> --%>
</body>
</html>



<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!-- <link rel="stylesheet" href="MakerCheckerLogin.css"> -->
<%@taglib uri="http://www.springframework.org/tags" prefix="p" %>
<p:url value="resources/makercheckerlogin.css" var="k"/>
<link href="${k}" rel="stylesheet"/>
<meta charset="ISO-8859-1">
<title>Login Page</title>

</head>
<body>
<div class="wrapper fadeInDown">
  <div id="formContent">
    <!-- Tabs Titles -->

    <!-- Icon -->
    <div class="fadeIn first" style="width:200px;size:100px;">
      <img src="images/download.jpg" id="icon" alt="User Icon" />
    </div>

    <!-- Login Form -->
    <form action="j_spring_security_check" method="post">
      <input type="text" id="login" class="fadeIn second" name="j_username" placeholder="Userid" required>
      <input type="password" id="password" class="fadeIn third" name="j_password" placeholder="Password" required><br>
      <br>
      
      <input type="radio" id="maker" value="maker" name="role">Maker
      &nbsp;
      &nbsp;
      <input type="radio" id="checker" value="checker" name="role">Checker
      <br>
      <br>
      <input type="submit" class="fadeIn fourth" name ="button" value="Log In">
    </form>

    <!-- Remind Passowrd -->
    <div id="formFooter">
      <a class="underlineHover" href="#">Forgot Password?</a>
    </div>

  </div>
</div>
</body>
</html> --%>