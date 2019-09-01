<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<title>User Functions</title>
</head>
<body>
<nav class="navbar navbar-light" style="background-color: #e3f2fd;">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Hello USER</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="Home.html">Home</a></li>
      <li><a href="insertcustomerdetailsform" title="Insert Details"><span class="glyphicon glyphicon-plus"></span> </a></li>
      <li><a href="updatecustomerdetailsform" title="Update Details"><span class="glyphicon glyphicon-edit"></span> </a></li>
      <li><a href="deletecustomerdetailsform" title="Delete Details"><span class="glyphicon glyphicon-trash"></span> </a></li>
      <li><a href="displaycustomerdetailsform1" title="Display Details"><span class="glyphicon glyphicon-list-alt"></span></a></li>
      <li><a href="displaycustomerdetailsform" title="Display Details By ID"><span class="glyphicon glyphicon-th-list"></span> </a></li>
      <!-- <li><a href="DisplayCustomerDetails2.jsp" title="Display Datatable Details"><span class="glyphicon glyphicon-list-alt"></span></a></li>
      <li><a href="DisplayCustomerDetailsByCode2.jsp" title="Display Datatable Details By ID"><span class="glyphicon glyphicon-th-list"></span> </a></li>
        -->
       <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#" title="Sort By"><span class="caret"  class="glyphicon glyphicon-sort" ></span></a>
        <ul class="dropdown-menu">
          <li ><a href="ascendingorder">In Ascending Order</a></li>
          <li ><a href="descendingorder">In Descending Order</a></li>
         </ul>
      </li>
   
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <%-- <li><a href="#"><span class="glyphicon glyphicon-user"></span><% out.println("Loggedin as "+session.getAttribute("userid")); %></a></li> --%>
      <li><a href="#">Logged In as ${userid}<span class="glyphicon glyphicon-user"></span></a></li>
      <li><a href="j_spring_security_logout"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
    </ul>
  </div>
</nav>
  
<div class="container">
 <!--  <h3>Right Aligned Navbar</h3>
  <p>The .navbar-right class is used to right-align navigation bar buttons.</p> -->
</div>


</body>
</html>