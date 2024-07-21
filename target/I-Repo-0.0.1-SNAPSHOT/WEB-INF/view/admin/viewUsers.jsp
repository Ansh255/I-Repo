<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<%@taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>

<body>
<h2>Registration Form</h2>
<f:form action="userinsert" method="post" modelAttribute = "UserVO">
    Firstname: <f:input  path="firstName" required /><br />
    Lastname: <f:input  path="lastName" required /><br />
    Gender: 
    <f:select path="gender" required>
        <f:option value="Male">Male</f:option>
        <f:option value="Female">Female</f:option>
        <f:option value="Other">Other</f:option>
    </f:select><br />
    Address: <f:input  path="address" required /><br />
    Mobile Number: <f:input  path="mobileNumber" required /><br />
    Email: <f:input  path="email" required /><br />
    Username: <f:input  path="username" required /><br />
    Password: <f:input  path="password" required /><br />
    
</f:form>

<c:if test="${not empty message}">
    <p>${message}</p>
</c:if>
</body>
</html>

</body>
</html>