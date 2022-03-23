<%-- 
    Document   : index
    Created on : 22 mar. 2022, 20:19:49
    Author     : Usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
      <title>Pagina-PA</title>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <link rel="stylesheet" href="styles/indexStyles.css" type="text/css" media="all">
      <link rel="preconnect" href="https://fonts.googleapis.com">
      <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
      <link href="https://fonts.googleapis.com/css2?family=Roboto+Mono:wght@200&display=swap" rel="stylesheet">
      <link href="https://fonts.googleapis.com/css2?family=Lobster&family=Roboto+Mono:wght@200&display=swap" rel="stylesheet"> 
   </head>
   <body>
      <header class="header">
         <img src="imgData/encabezado.gif">
      </header>
      <main class="main grid-item">
         <h1 class="header-item">Tu  horóscopo</h1>
         <h3 class="header-item">Inicia Sesión</h3>
         <a href="secondPage/secondPage.jsp" >Next page</a>
      </main>
      <div class="flex-container">
         <form class="form" id="form">
            <div class="form-section">
               <input class="form__input" id="usuario" type="text" placeholder="Usuario">
            </div>
            <div class="form-section">
               <input class="form__input" id="contra" type="password" placeholder="Contraseña">
            </div>

            <div class="form-section">
               <input class="form__input" type="submit" value="Ingresar">
            </div>

            <p class="warnings" id="warnings"></p>
         </form>
         <div class="img-container">
            <img id="img-envio" src="imgData/rueda.gif" alt="">
         </div>
      </div>
      <script src="codigo.js"></script>
   </body>
</html>
