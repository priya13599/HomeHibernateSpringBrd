<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
 <!--  <link rel="stylesheet" href="makercheckerlogin.css"> -->
  
  <%-- <link href="<c:url value="/View/makercheckerlogin.css" />" rel="stylesheet"/> --%>
<title> Insert User Details</title>

<%@taglib uri="http://www.springframework.org/tags/form" prefix="s" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="p" %>
<p:url value="resources/makercheckerlogin.css" var="k"/>
<link href="${k}" rel="stylesheet"/>
<%@include file="adminfunctions.jsp" %>

</head>
<body>


 <div class="wrapper fadeInDown">
  <div id="formContent">
    <!-- Tabs Titles -->
 <div id="formFooter"  style="background-color:#e3f2fd; color:#5fbae9">
      <h1> Register User </h1>
    </div>
 
      
                
                <s:form action="registerdetails" modelAttribute="user">
                
               <p:message code="label.user.userId" var="id"> </p:message> <s:input path="userId" placeholder="${id}"/><%-- <s:errors path="userId"/> --%>
                <p:message code="label.user.password" var="pwd"> </p:message> <s:input path="password" placeholder="${pwd}"/><%-- <s:errors path="password"/> --%>
                <s:form  modelAttribute="role">
                  <p:message code="label.role.roleId" var="role" > </p:message> <s:input path="roleId" placeholder="${role}"/><%-- <s:errors path="role"/> --%>
                   <p:message code="label.role.roleName" var="rolename" > </p:message> <s:input path="roleName" placeholder="${rolename}"/><%-- <s:errors path="role"/> --%>
                <br>
                <br>
   </s:form>
      <input type="submit" class="fadeIn fourth" name ="button" value="Register" >
   </s:form>
  

   
  </div>
</div> 

</body>
</html>