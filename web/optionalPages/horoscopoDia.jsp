<%-- 
    Document   : horoscopoDia
    Created on : 26/03/2022, 12:39:29 a. m.
    Author     : Usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="servlets.*"%>
<!DOCTYPE html>
<html>
   <head>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <title>Signos Zodiacales</title>

      <link rel="stylesheet" href="../styles/optionalPageStyles.css" type="text/css" media="all">
      <link rel="preconnect" href="https://fonts.googleapis.com">
      <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
      <link href="https://fonts.googleapis.com/css2?family=Roboto+Mono:wght@200&display=swap" rel="stylesheet"> 
      <link href="https://fonts.googleapis.com/css2?family=Lobster&family=Roboto+Mono:wght@200&display=swap" rel="stylesheet"> 
   </head>
   <body>
      <header class="header">
         <img src="../imgData/encabezado.gif" alt="">
      </header>
      <main class="main">
         <h2 class="header-item">Horoscopo Del Año 2022 - UD</h2>
         <a href="../secondPage/secondPage.jsp"" >Back page</a>
      </main>
      <div class="flex-container">
         <div class="container-descripcion">
            <p class="p-indicaciones" >Para ver el horoscopo de cada signo lleve el cursor sobre el simbolo
            correspondiente y de click. ¿Esta listo para leer lo que el universo te tiene preparado?</p>
         </div>

         <form class="grid-container-imgs" action="DiaServLetBD" method="post">
            <input class="input-signo" id="img-acuario" type="submit" name="Enviar" value="acuario">
            <input class="input-signo" id="img-piscis" type="submit" name="Enviar" value="piscis">
            <input class="input-signo" id="img-cancer" type="submit" name="Enviar" value="cancer">
            <input class="input-signo" id="img-capricornio" type="submit" name="Enviar" value="capricornio">
            <input class="input-signo" id="img-tauro" type="submit" name="Enviar" value="tauro">
            <input class="input-signo" id="img-geminis" type="submit" name="Enviar" value="geminis">
            <input class="input-signo" id="img-leo" type="submit" name="Enviar" value="leo">
            <input class="input-signo" id="img-libra" type="submit" name="Enviar" value="libra">
            <input class="input-signo" id="img-aries" type="submit" name="Enviar" value="aries">
            <input class="input-signo" id="img-sagitario" type="submit" name="Enviar" value="sagitario">
            <input class="input-signo" id="img-escorpio" type="submit" name="Enviar" value="escorpio">
            <input class="input-signo" id="img-virgo" type="submit" name="Enviar" value="virgo">
         </form>

      </div>

   </body>
</html>
