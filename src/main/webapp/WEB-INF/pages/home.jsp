<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>UPU</title>
</head>
<body>

<sec:authorize access="hasRole('ROLE_ADMIN')">
    is admin
</sec:authorize>
<sec:authorize access="hasRole('ROLE_MODERATOR')">
    is MODERATOR
</sec:authorize>
<sec:authorize access="hasRole('ROLE_ADMIN')" var="isAdmin" />
<sec:authorize access="hasRole('ROLE_MODERATOR')" var="isModerator" />
<c:choose>
    <c:when test="${isModerator}">
        <c:redirect url = "/sec/moderation.html"/>
    </c:when>
    <c:when test="${isAdmin}">
        <c:redirect url = "/admin/first"/>
    </c:when>
    <c:otherwise>
        You have no relevant role
    </c:otherwise>
</c:choose>




</body>
</html>