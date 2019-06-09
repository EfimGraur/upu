<?xml version="1.0" encoding="ISO-8859-1" ?>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<link rel="stylesheet" href="css/index.css" type="text/css">
<title>Fisa medicala de triaj</title>
</head>
<body>
<h1>Fisa medicala de triaj</h1>

<form action="/action_page.php" id="registratura>
  <label>Cod Unic Pacient</label><br>
  <input type="number" name="codUnicPacient"><br>
  <label>Ora</label><br>
  <input type="number" name="ora"><br>
  <input type="text" name="firstname" placeholder="Nume"><br>
  <input type="text" name="lastname" placeholder="Prenume"><br>
  <div id="sex">
  <input type="radio" name="sex">M
  <input type="radio" name="sex">F
  </div>
    <label>Varsta</label><br>
  <input type="number" name="varsta"></br>
  <div id="stadiu">

  <input type="radio" name="stadiu">Constient
  <input type="radio" name="stadiu">Inconstient
  </div>
    <div id="sange">
      <label>Grupa Sanguina</label><br>
  <input type="radio" name="sange">0
  <input type="radio" name="sange">A
  <input type="radio" name="sange">B
  <input type="radio" name="sange">AB
  </div>
  <div id="rh">
        <label>HR</label><br>
  <input type="radio" name="rh">-
  <input type="radio" name="rh">+
  </div>

  <br>
  <input type="submit" value="Validare">
</form>

</body>
</html>