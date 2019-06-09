<?xml version="1.0" encoding="ISO-8859-1" ?>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<link rel="stylesheet" href="css/index.css" type="text/css">
<title>Login page</title>
</head>
<body>
<div id="loginWrapper">
<h1>MED.UPU</h1>

<p>
<c:if test="${error == true}">
	<b class="error">Invalid login or password.</b>
</c:if>
</p>

<form method="post" action="<c:url value='j_spring_security_check'/>" >
<table id="form_wrapper">
<tbody>
<tr>
<td><input type="text" name="j_username" id="j_username"size="30" maxlength="40"  placeholder="Utilizator"/></td>
</tr>
<tr>
<td><input type="password" name="j_password" id="j_password" size="30" maxlength="32" placeholder="Parola"/></td>
</tr>
<tr>
<td><input id="submitButton" type="submit" value="Autentificare" /></td>
</tr>
</tbody>
</table>
</form>
</div>
</body>
</html>