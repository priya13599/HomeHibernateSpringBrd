<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
 <!--  <link rel="stylesheet" href="makercheckerlogin.css"> -->
  
  <%-- <link href="<c:url value="/View/makercheckerlogin.css" />" rel="stylesheet"/> --%>
<title> Update Customer Details</title>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="s" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="p" %>
<p:url value="resources/makercheckerlogin.css" var="k"/>
<link href="${k}" rel="stylesheet"/>
<%@include file="makerfunctions.jsp" %>
<%-- <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> --%>
</head>
<body>
<div class="d-md-flex h-md-100 align-items-center">
<div class="col-md-6 p-0 bg-indigo h-md-100">
    <div class="text-white d-md-flex align-items-center h-100 p-5 text-center justify-content-center">
        <div class="logoarea pt-5 pb-5">
${flag}
<div class="wrapper fadeInDown">
  <div id="formContent">
    <!-- Tabs Titles -->
 <div id="formFooter"  style="background-color:#e3f2fd; color:#5fbae9">
      <h1> Update Customer Details</h1>
    </div>
    
     <s:form action="updateCustomer" modelAttribute="customer">
               <p:message code="label.customer.customerCode" var="code"> </p:message> <s:input path="customerCode" placeholder="${code}" />
               
                <input type="submit" class="fadeIn fourth" name ="button" value="Update" >
   </s:form>
               </div>
</div>

</div>
    </div>
</div>


<div class="col-md-6 p-0 bg-white h-md-100 loginarea">
    <div class="d-md-flex align-items-center h-md-100 p-5 justify-content-center">
        Second half content here
    </div>
</div>
    
</div>

</body>
</html>