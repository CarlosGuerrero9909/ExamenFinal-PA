<%-- 
    Document   : agendarCitasCA
    Created on : 22 mar. 2022, 20:08:16
    Author     : Usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <title>Agendamiento de Citas</title>
      <link rel="stylesheet" href="../styles/agendarCitaCAStyles.css" type="text/css" media="all">
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

      <main class="main">
         <h3 class="header-item">Agendar cita lectura Carta Astral</h3>
         <a href="../secondPage/secondPage.jsp" >Back page</a>
      </main>

      <div id="contenedor-main-title">
         <p id="main-title"><b>Agendamiento de Cita Para Lectura de la Carta Astral</b></p>
      </div>

      <div id="contenedor-contenedores">

         <div id="contenedor-formulario" >
            <h1><b>Agendar Cita</b></h1>
            <p>A continuación deberas diligenciar el formulario para agendar tu cita.</p>
            <form><!-- <form method="POST" action="/admin" class="create-game"> -->

               <div id="contenedor-fila">
                  <div id="contenedor-aux">

                     <h2 class="subtitle">Mi Fecha de Nacimiento</h2>
                     <div id="contenedor-columna">
                        <div class="fecha">
                           <p class="subtitle">Fecha</p>
                           <input type="date" id="start" class="form-box2" name="trip-start" value="2023-03-28" min="1900-03-28" max="2023-03-28" >
                           <br>
                        </div>

                        <div class="hora">
                           <p class="subtitle">Hora</p>
                           <input type="time" name="eta" class="form-box2">
                           <br>
                        </div>
                     </div>

                     <div id="contenedor-fila">
                        <input type="checkbox" name="edad-legal" class="widget" id="checkbox">
                        <p>Yo afirmo que tengo la edad legal</p>
                     </div>
                  </div>

                  <div id="contenedor-aux">
                     <h2 class="subtitle">Mis Datos Personales</h2>
                     <div id="contenedor-fila">
                        <div id="contenedor-fila">
                           <input type="radio" name="sexo" value="hombre" checked>
                           <p class="subtitle" for="dewey">Hombre</p>
                        </div>

                        <div id="contenedor-fila">
                           <input type="radio" name="sexo" value="mujer">
                           <p class="subtitle" for="dewey">Mujer</p>
                        </div>

                        <div id="contenedor-fila" class="radio">
                           <input type="radio" name="sexo" value="otros">
                           <p class="subtitle" for="dewey">Otros</p>
                        </div>
                     </div>

                     <div id="contenedor-columna">
                        <div class="dato-box" id="contenedor-fila">
                           <p class="subtitle">Nombres: </p>
                           <input type="text" name="nombre" class="form-box" placeholder="Nombre">
                        </div>

                        <div class="dato-box" id="contenedor-fila">
                           <p class="subtitle">Apellidos: </p>
                           <input type="text" name="nombre" class="form-box" placeholder="Apellidos:">
                        </div>

                        <div class="dato-box" id="contenedor-fila">
                           <p class="subtitle">Email: </p>
                           <input type="text" name="nombre" class="form-box" placeholder="Email:">
                        </div>

                        <div id="contenedor-fila">
                           <p class="subtitle" > Pais: </p>
                           <select id="select1">
                              <option value="Otros">Otros</option>
                              <option value="Argentina">Argentina</option>
                              <option value="Brasil">Brasil</option>
                              <option value="Colombia">Colombia</option>
                              <option value="Ecuador">Ecuador</option>
                              <option value="Mexico">Mexico</option>
                           </select>
                        </div>
                     </div>
                  </div>
               </div>

               <div id="contenedor-fila">
                  <input type="checkbox" name="terminos">
                  <p >He leido y acepto las condiciones de Condiciones generales de uso y Politica de privacidad</p>
               </div>

               <div>
                  <button class="button-agendar" type="submit" value="update">Agendar Cita</button>
               </div>
            </form>

         </div>
      </div>
   </body>
</html>
