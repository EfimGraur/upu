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

<h1>Edit FirstLevelForm</h1>
<form:form method="POST" action="admin/addFirstLevelForm">
    <table >
        <tr>
            <td>FirstName : </td>
            <td><form:input path="fistName"  /></td>
        </tr>
        <tr>
            <td>LastName :</td>
            <td><form:input path="lastName" /></td>
        </tr>

        <tr>
            <td> </td>
            <td><input type="submit" value="Edit Save" /></td>
        </tr>
    </table>
</form:form>

<p>
<a href="<c:url value="/j_spring_security_logout"/>" >Logout</a> <br/>
<a href="${pageContext.request.contextPath}/index.html">Home page</a><br/>
</p>
</body>
</html>