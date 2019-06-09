<?xml version="1.0" encoding="ISO-8859-1" ?>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<link rel="stylesheet" href="css/index.css" type="text/css">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Pacient Form</title>
</head>
<body>
  <div>
    <div id="form_wrapper">
      <form method="post" action="/action_page.php" id="registratura">
        <div id="headWrapper">
          <div class="headCol" id="dataOra">
            <div class="dataOra">
              <label>Data</label><br>
              <input id="data" type="number">
            </div>
            <div class="dataOra">
              <label>Ora</label><br>
              <input id="ora" type="number" name="ora">
            </div>
          </div>
          <div class="headCol" id="title">
            <h2>FISA <br> medicala de triaj</h2>
            <div>
              <input id="codUnic" type=" number" name="codUnicPacient" placeholder="Cod Unic Pacient">
            </div>

          </div>
          <div class="headCol" id="sex">
            <input id="sexM" type="radio" name="sex">M<br>
            <input id="sexF" type="radio" name="sex">F
          </div>
        </div>
        <div id="numeVarsta">
          <div id="nume">
            <input id="nume" type="text" name="firstname" placeholder="Nume">
          </div>
          <div id="prenume">
            <input id="prenume" type="text" name="lastname" placeholder="Prenume">
          </div>
          <div id="varsta">
            <input id="varsta" type="number" name="varsta" placeholder="Varsta">
          </div>
        </div>
        <div id="infoSchema">
          <div class="stariSimptome" id="stadiu">
            <input id="stadiu1" type="radio" name="stadiu">Constient<br>
            <input id="stadiu2" type="radio" name="stadiu">Inconstient
          </div>
          <div class="stariSimptome" id="sange">
            <label>Grupa Sanguina</label><br>
            <input id="grupaSange0" type="radio" name="sange"> <span>0</span>
            <input id="grupaSangeA" type="radio" name="sange"> <span>A</span>
            <input id="grupaSangeB" type="radio" name="sange"> <span>B</span>
            <input id="grupaSangeAB" type="radio" name="sange"> <span>AB</span>
          </div>
          <div class="stariSimptome" id="rh">
            <label>RH</label><br>
            <input id="rh-" type="radio" name="rh">-<br>
            <input id="rh+" type="radio" name="rh">+
          </div>

        </div>
        <div id="schema">
          <img src="./schema.png" alt="">
          <div id="buttonBody">
            <button>Neurologic</button>
            <button>Tegumente</button>
            <button>Ochi</button>
            <button>Torace-respiratie</button>
            <button>Gastrointerstinal</button>
            <button>Genito-urinar</button>
            <button>Aparat Locomotor</button>
          </div>
        </div>

        <input id="submitFormRegistratura" type="submit" value="Validare">
      </form>

    </div>

  </div>
</body>
</html>