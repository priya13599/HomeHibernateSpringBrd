<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@page import="com.nucleus.model.Customer,java.util.* " %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <meta charset="utf-8">
<!--    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css"> -->
<title>Display Details</title>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

  <%@include file="makerfunctions.jsp" %>
  <style>
  table
  {
  table-layout:fixed;
  }
  
  </style>
</head>
<body>
<div class="d-md-flex h-md-100 align-items-center">

<!-- First Half -->

<div class="col-md-6 p-0 bg-indigo h-md-100">
    <div class="text-white d-md-flex align-items-center h-100 p-5 text-center justify-content-center">
        <div class="logoarea pt-5 pb-5">
<div class="container-fluid">
  <h1 align="center" style="color:red"><b><u>Customer Details</u></b></h1>
    <table class="table table-striped" border="1" >
    <thead>
      <tr>
        <th>Customer Code</th>
        <th>Customer Name</th>
        <th>Customer Address1</th>
        <th>Customer Address2</th>
        <th>Pin code</th>
        <th>Email Address</th>
        <th>Contact No.</th>
        <th>Primary Contact Person</th>
        <th>Record Status</th>
        <th>Active_Inactive Flag</th>
        <th>Create date</th>
        <th>Create By</th>
        <!-- <th>Modified date</th>
        <th>Modified By</th>
        <th>Authorized date</th>
         <th>Authorized By</th> -->
        
       
        </tr>
    </thead>
   
    
    <c:set var="sn" value="${flag}"/>
    <c:if test="${sn == 'sn2'}">
    <c:forEach var="customer" items="${customer}">
    <tbody>
      <tr>
        <td>${customer.getCustomerCode()}</td>
        <td>${customer.getCustomerName()}</td>
        <td>${customer.getAddress1()}</td>
        <td>${customer.getAddress2()}</td>
        <td>${customer.getPinCode()}</td>
        <td>${customer.getEmail()}</td>
        <td>${customer.getContactNo()}</td>
        <td>${customer.getContactPerson()}</td>
        <td>${customer.getRecordStatus() }</td>
        <td>${customer.getInactiveFlag()}</td>
        <td>${customer.getCreateDate()}</td>
        <td>${customer.getCreatedBy()}</td>
        <%-- <td>${customer.getModifiedDate()}</td>
        <td>${customer.getModifiedBy()}</td>
        <td>${customer.getAuthorizedDate()}</td>
        <td>${customer.getAuthorizedBy()}</td> --%>
        
      </tr>
    </tbody> -
    </c:forEach>
    </c:if>
   
  
    
    
     <c:set var="sn" value="${flag}"/>
    <c:if test="${sn == 'sn1'}">

    <tbody>
      <tr>
         <td>${customer.customerCode}</td>
        <td>${customer.customerName}</td>
        <td>${customer.address1}</td>
        <td>${customer.address2}</td>
        <td>${customer.pinCode}</td>
        <td>${customer.email}</td>
        <td>${customer.contactNo}</td>
        <td>${customer.contactPerson}</td>
        <td>${customer.recordStatus}</td>
        <td>${customer.inactiveFlag}</td>
        <td>${customer.createDate}</td>
        <td>${customer.createdBy}</td>
       <%--  <td>${customer.modifiedDate}</td>
        <td>${customer.modifiedBy}</td>
        <td>${customer.authorizedDate}</td>
        <td>${customer.authorizedBy}</td> --%>
        
      </tr>
    </tbody> 
    </c:if> 
<form action="makerfunctions.jsp">
<input type="submit" value="Back">
</form>

 </div>
    </div>
</div>

<!-- Second Half -->

<div class="col-md-6 p-0 bg-white h-md-100 loginarea" >
    <div class="d-md-flex align-items-center h-md-100 p-5 justify-content-center">
        Second half content here
    </div>
</div>
    
</div>
</body>
</html>