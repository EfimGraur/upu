<?xml version="1.0" encoding="ISO-8859-1" ?>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Pacient Form</title>
</head>
<body>
<h1>Pacient Form</h1>

<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
    <title>First Level Form View</title>
</head>
<body>

<h2>Submitted FirstLevelForm Informations</h2>

<h1>FirstLevelForm List</h1>
<table border="2" width="70%" cellpadding="2">
    <tr><th>FistName</th><th>LastName</th><th>Edit</th><th>Delete</th></tr>
    <c:forEach var="fistLevelForm" items="${list}">
        <tr>
            <td>${fistLevelForm.fistName}</td>
            <td>${fistLevelForm.lastName}</td>
        </tr>
    </c:forEach>
</table>
<br/>



<p>
<a href="<c:url value="/j_spring_security_logout"/>" >Logout</a> <br/>
<a href="${pageContext.request.contextPath}/index.html">Home page</a><br/>
</p>
</body>
</html>