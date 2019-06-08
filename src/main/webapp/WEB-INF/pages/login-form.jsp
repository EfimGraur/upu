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
<h1>UPU User</h1>

<p>
<c:if test="${error == true}">
	<b class="error">Invalid login or password.</b>
</c:if>
</p>
<div id="form_wrapper">
<form id="loginForm" method="post" action="<c:url value='j_spring_security_check'/>" >
  <input id="username" type="text" name="firstname">
  <br>
  <input id="password" type="text" name="lastname">
  <br>
  <input id="submitButton" type="submit" value="Login">
</form>
</div>
</body>
</html>