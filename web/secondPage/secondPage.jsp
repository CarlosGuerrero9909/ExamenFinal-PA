<%-- 
    Document   : index
    Created on : 22 mar. 2022, 19:24:52
    Author     : Usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <title>El Horóscopo</title>
      <link rel="stylesheet" href="../styles/secondPageStyles.css" type="text/css" media="all">
      <link rel="preconnect" href="https://fonts.googleapis.com">
      <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
      <link href="https://fonts.googleapis.com/css2?family=Roboto+Mono:wght@200&display=swap" rel="stylesheet">
      <link href="https://fonts.googleapis.com/css2?family=Lobster&family=Roboto+Mono:wght@200&display=swap" rel="stylesheet"> 
      <link rel="shortcut icon" href="img/iconGamesLibrary.ico" />
   </head>
   <body>
      <header class="header">
         <img src="../imgData/encabezado.gif" alt="">
      </header>

      <div id="contenedor-main-title">
         <p id="main-title"><b>EL HORÓSCOPO</b></p>
         <a href="../index.jsp" >Back page</a>
      </div>

      <div id="contenedor-contenedores">

         <div id="contenedor-info-general">


            <div id="info-general">
               <h1 class="title">¿Qué son los signos Zodiacales?</h1>

               <p>Los 12 signos del zodiaco refieren a las doce constelaciones de estrellas visibles desde la tierra: Aries, Tauro, Géminis, Cáncer, León, Virgo, Libra, Escorpio, Sagitario, Capricornio, Piscis y Acuario. Específicamente; los signos zodiacales traducen la posición del Sol el día en que una persona nace. Ya que visto desde la tierra el sol ilumina una constelación en particular durante 30 días. Basta saber la fecha de nacimiento para descubrir cuál es su signo. Si usted no tiene claro cual es su signo zodiacal y qué dice éste acerca de su personalidad y comportamiento, a continuación le indicaré las fechas que corresponden a cada signo zodiacal y las principales características de los 12 signos. </p>

               <div id="imagen-info-general">
                  <img id="img-signos" src="../imgData/signos-zodiacales.gif" >
               </div>

               <h1 class="title">¿Qué es el Horoscopo?</h1>
               <p>Se trata de un concepto que hace referencia a una predicción realizada según la posición de los astros en un determinado momento. El horóscopo, por lo tanto, es un método predictivo. La noción también se usa para nombrar al texto donde se plasman esos pronósticos y al gráfico que emplean los astrólogos para hacer un horóscopo de acuerdo a la representación del Zodíaco.</p>

               <div id="imagen-info-general">
                  <img id="img-signos" src="../imgData/horoscopo.jpeg" >
               </div>
            </div> 
         </div>

         <div id="contenedor-opciones">
            <p>Hola, {Nombre}. Te damos la bienvenida a <b>"El Horoscopo de Hoy"</b>.</p>
            <h1>Consultar Horóscopo</h1> 
            <p>A continuación podrás escoger el horóscopo que deseas ver.</p>

            <a class="button-go" href="#">Ver los Horoscopos del Dia</a>

            <a class="button-go" href="../optionalPages/horoscopoMes.jsp">Ver los Horoscopos del Mes</a>

            <a class="button-go" href="../optionalPages/horoscopoAño.jsp">Ver los Horoscopos del Año</a>
            <br>
            <h1>Agendar Cita Para Lectura de la Carta Astral</h1>
            <p>Si es de tu interes el mundo de las cartas astrales, dando click en el siguiente boton podras agendar tu cita para ti o para alguna persona conocida totalmente gratis, te esperamos.</p>

            <a class="button-go" href="../optionalPages/agendarCitasCA.jsp"">Agendar Cita Carta Astral</a>
         </div>
      </div>
   </body>
</html>
