<%-- 
    Document   : horoscopoMes
    Created on : 22 mar. 2022, 19:49:14
    Author     : Usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <title>Signos Zodiacales</title>
      <script src="codigoHorMes.js"></script>
      <link rel="stylesheet" href="../styles/optionalPagesStyles.css" type="text/css" media="all">
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
         <h3 class="header-item">Horoscopo Del Mes - UD</h3>
         <a href="../secondPage/secondPage.jsp" >Back page</a>
      </main>
      <div class="flex-container">
         <div class="grid-container-horoscopo" id="form">
            <img class="img-current-signo" id="current-signo" src="../imgData/acuario.png" alt="">
            <h2 class="h2-descipcion" id="descipcion-signo"></h2>
            <p class="p-horoscopo" id="horoscopo-signo" >Seleccione un signo zodiacal por favor</p>
         </div>
         <div class="grid-container-imgs">
            <img class="img-signo" id="img-acuario" src="../imgData/acuario.png" alt="">
            <img class="img-signo" id="img-piscis" src="../imgData/piscis.png" alt="">
            <img class="img-signo" id="img-cancer" src="../imgData/cancer.png" alt="">
            <img class="img-signo" id="img-capricornio" src="../imgData/capricornio.png" alt="">
            <img class="img-signo" id="img-tauro" src="../imgData/tauro.png" alt="">
            <img class="img-signo" id="img-geminis" src="../imgData/geminis.png" alt="">
            <img class="img-signo" id="img-leo" src="../imgData/leo.png" alt="">
            <img class="img-signo" id="img-libra" src="../imgData/libra.png" alt="">
            <img class="img-signo" id="img-aries" src="../imgData/aries.png" alt="">
            <img class="img-signo" id="img-sagitario" src="../imgData/sagitario.png" alt="">
            <img class="img-signo" id="img-escorpio" src="../imgData/escorpio.png" alt="">
            <img class="img-signo" id="img-virgo" src="../imgData/virgo.png" alt="">
         </div>
      </div>
   </body>
</html>
