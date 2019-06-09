<?xml version="1.0" encoding="ISO-8859-1" ?>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Registratura medicala</title>
</head>
<body>
<h1>Registratura medicala</h1>
<p><a href="${pageContext.request.contextPath}/admin/firstLevelForm.htmp">Pacient Form</a><br/>
<a href="<c:url value="/j_spring_security_logout" />" >Logout</a> <br/>
</p>
</body>
</html>