<%@ page language="java" contentType="text/html; charset=utf-8"
pageEncoding="utf-8" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="ISO-8859-1" />
    <title>Smash Cinema</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="icon" type="image/x-icon" href="./resources/img/s.png">

    <style>
      @import url("https://fonts.googleapis.com/css2?family=Lato&display=swap");

      body {
        font-family: "Lato", sans-serif;
        background-color: #23222f;
        color: white;
      }

      * {
        padding: 0;
        margin: 0;
        box-sizing: border-box;
      }

      .left {
        display: flex;
        flex-direction: row;
        column-gap: 2rem;
        position: fixed;
        margin-top: 2rem;
      }

      .menuVert {
        margin-left: 2rem;
        /* border: 1px red solid; */
        display: flex;
        flex-direction: column;
        row-gap: 0.6rem;
      }

      .divisorioVerticale {
        width: 3px;
        height: 92vh;
        background-color: #2ecc71;
      }

      .menuVert h1 {
        letter-spacing: 10px;
      }

      .menuVert p {
        cursor: pointer;
        color: rgba(255, 255, 255, 0.813);
      }

      .menuVert p:hover {
        color: #2ecc71;
      }

      a {
        color: inherit;
        text-decoration: none;
      }
    </style>
  </head>

  <body>
    <section class="mainPagePdf">
      <div class="left">
        <div class="menuVert">
          <h1>ADMIN</h1>
          <p style="margin-top: 0.3rem">
            <a href="aggiungiFilm">-Aggiungi Film</a>
          </p>
          <p><a href="aggiungiEvento">-Aggiungi Evento</a></p>
          <p><a href="monitoraggioIncassi">-Monitoraggio Incassi</a></p>
          <p><a href="postiLiberi">-Posti Liberi Disponibili</a></p>
          <p><a href="homePage" id="invalidate">-Vai al sito</a></p>
          
        </div>
        <div class="divisorioVerticale"></div>
      </div>
    </section>

    <script>
    const invalidate = getElementById("invalidate");
    invalidate.addEventListener("click",function()=>{
    	console.log("invalidate")
    	<%  session.invalidate(); 
    		application.removeAttribute("userNameShow");
		  	application.removeAttribute("userId");
		  	application.removeAttribute("userN");
			application.removeAttribute("userC");
			application.removeAttribute("userE");
			application.removeAttribute("userP");%>
    	})
    </script>
  </body>
</html>
