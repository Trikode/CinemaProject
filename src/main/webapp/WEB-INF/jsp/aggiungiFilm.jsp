<%@ page language="java" contentType="text/html; charset=utf-8"
pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>

<head>

    <title>Smash Cinema</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" type="image/x-icon" href="./resources/img/s.png">
<style type="text/css">
      body {
        cursor: url("data:image/x-icon;base64,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"),
          auto;
      }
    </style>
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

        input {
            width: 20rem;
            padding-left: 0.3rem;
        }

        .mainPagePdf{
            display: flex;
            flex-direction: column;
        }

        .aggiungiFilm {
            font-size: 1.5rem;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 2.5rem;
            border: 3px solid #2ecc71;
            color: #2ecc71;
            cursor: pointer;
            width: 33rem;
            background-color: transparent;
        }

        .aggiungiFilm:hover {
            box-shadow: 0px 0px 15px #2ecc71;
            transition-duration: 0.2s;
        }

        .grid-container {
            margin-top: 2rem;
            margin-bottom: 2rem;
            display: grid;
            grid-template-columns: repeat(6, 4fr);
            gap: 5px;
            width: 30rem;
        }

        .grid-item {
            border: 1px solid black;
            padding: 10px;
            text-align: center;
            cursor: pointer;
            width: 5rem;
        }

        .grid-item:hover{
            border: #2ecc71 1px solid;
        }
    </style>
</head>

<body>
<jsp:include page="sideBar.jsp" />
    <section class="mainPagePdf">
       <form action="getNewFilm" method="post" style="padding-left: 16rem;">
        <div style="display: flex; flex-direction: column; row-gap: 1.5rem;">
            <h1 style="padding-top:2rem;">Inserimento nuovo film</h1>

            <div style="display: flex; column-gap: 0.5rem; align-items: center; justify-content: space-between; width: 33rem;">
                <p>Inserisci titolo del Film:</p>
                <input type="text" name="titolo" required/>
            </div>

            <div style="display: flex; column-gap: 0.5rem; align-items: center; justify-content: space-between; width: 33rem;">
                <p>Inserisci durata Film:</p>
                <input type="number" name="durata" required/>
            </div>

            <div style="display: flex; column-gap: 0.5rem; align-items: center; justify-content: space-between; width: 33rem;">
                <p>Inserisci Url della copertina:</p>
                <input type="text" name="locandina" required/>
            </div>
            
             <div style="display: flex; column-gap: 0.5rem; align-items: center; justify-content: space-between; width: 33rem;">
                <p>Inserisci Url del trailer embedded:</p>
                <input type="text" name="trailer" required/>
            </div>

            <div style="display: flex; column-gap: 0.5rem; align-items: center; justify-content: space-between; width: 33rem;">
                <p>Inserisci descrizione:</p>
                <input type="text" name="descrizione" id=""  style="padding: 0.5rem;" required/>
            </div>
            
            <button type="submit" class="aggiungiFilm">Aggiungi film</button>
        </div>
	</form>
</section>
                  
            
</body>

</html> 
