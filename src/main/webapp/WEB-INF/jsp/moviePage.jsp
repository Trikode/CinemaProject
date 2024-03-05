<%@ page language="java" contentType="text/html; charset=utf-8"
pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
  <head>
    
    <title>Smash Cinema</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
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
        margin-top:6rem;
      }
      
      * {
        padding: 0;
        margin: 0;
        box-sizing: border-box;
      }

      .mainMoviePage {
        width: 100%;
        display: flex;
        flex-direction: row;
        margin-top: 1rem;
        justify-content: center;
        align-items: center;
        padding-bottom:30px;
      }

      .trailer {
        width: 50%;
        border: 5px solid #2ecc71;
        height: 437px;
        box-shadow: 0px 0px 40px #2ecc71;
      }

      .descriptionTrailer {
        width: 35%;
        padding-left: 3rem;
      }

      .cardInfoFilm {
        display: flex;
        column-gap: 1rem;
      }

      .containerOrariFilm {
        display: flex;
        margin-top: 2rem;
        flex-direction: column;
        column-gap: 1.5rem;
        row-gap: 1rem;
      }

      .orarioContainer {
        display: flex;
        column-gap: 1rem;
       
      }

      .btnOrariFilm {
        display: flex;
        align-items: center;
        justify-content: center;
        border: 2px solid rgba(255, 255, 255, 0.655);
        width: 5rem;
        height: 3rem;
        cursor: pointer;
      }

      .active {
        border: #2ecc71 2px solid;
        color: #2ecc71;
        
      }

      .cardCompraOra {
      	background-color: transparent;
        margin-top: 2rem;
        font-size: 1.5rem;
        display: flex;
        justify-content: center;
        align-items: center;
        width: 100%;
        height: 3.5rem;
        border: 3px solid #2ecc71;
        color: #2ecc71;
        cursor: pointer;
        text-decoration: none;
      }

      .cardCompraOra:hover {
        box-shadow: 0px 0px 15px #2ecc71;
        transition-duration: 0.4s;
      }
    </style>
  </head>

  <body>
    <jsp:include page="viewNavbar.jsp" />
    <section class="mainMoviePage">
      <div id="trailer" class="trailer">
        <!-- <iframe
          width="100%"
          height="427px"
          src="https://www.youtube.com/embed/CwXOrWvPBPk?controls=0"
          title="YouTube video player"
          frameborder="0"
          allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; web-share"
          allowfullscreen
        ></iframe> -->
      </div>
      <div id="descriptionTrailer" class="descriptionTrailer">
        <!-- <h1 style="font-size: 3rem; letter-spacing: 0.5rem"></h1>
        <br />
        <div class="cardInfoFilm">
          <img
            src="https://www.themoviedb.org/t/p/w600_and_h900_bestv2/4I2cgY4k5oOZKZFG6wOb4FuZ1TQ.jpg"
            width="150px"
          />
          <div>
            <b>Durata film</b>
            <p>90 min.</p>
          </div>
        </div>

        <p style="color: #2ecc71; margin-top: 1rem">
          1€ in meno se acquisti online
        </p>
        <br />
        <p style="line-height: 1.8">
          Shrek è un imponente orco verde che vive in solitudine all'interno di
          una casa di legno in una palude ed evita ogni contatto sociale in
          quanto da sempre gli umani considerano cattivi gli orchi. Nonostante
          appaia come un misantropo solitario, in realtà Shrek è buono e
          altruista.
        </p>

        <div class="containerOrariFilm">
          <div class="btnOrariFilm">
            <p>15.30</p>
          </div>
          <div class="btnOrariFilm">
            <p>18.30</p>
          </div>
          <div class="btnOrariFilm">
            <p>21.00</p>
          </div>
        </div>

        <div class="cardCompraOra">ACQUISTA ORA</div> -->
      </div>
    </section>
    <script>
    const films = ${filmssss};
    
    const filmhours = ${filmshourssss};
    

      const giorniSettimana = {
        1: "Lunedì",
        2: "Martedì",
        3: "Mercoledì",
        4: "Giovedì",
        5: "Venerdì",
        6: "Sabato",
        7: "Domenica",
      };
      const queryString = window.location.search;
      const urlParams = new URLSearchParams(queryString);
      const id = urlParams.get('id');
      const filmScelto = parseInt(id, 10);
      localStorage.setItem("selectedMovieIndex", filmScelto);

      const orariPerFilmStrutturato = Object.values(filmhours).reduce(
        (acc, film) => {
          if (film.idfilm.idfilms === filmScelto) {
            const existingFilm = acc.find(
              (f) =>
                f.idfilm.idfilms === film.idfilm.idfilms &&
                f.idfilm.title === film.idfilm.title
            );
            if (!existingFilm) {
              const newFilm = {
                idFilmHours: film.idFilmHours,
                idfilm: film.idfilm,
                showtimes: [],
              };
              newFilm.showtimes.push({
                iddate: film.iddate,
                idhour: [film.idhour], // Initialize IDHour as an array
              });
              acc.push(newFilm);
            } else {
              const existingDate = existingFilm.showtimes.find(
                (s) => s.iddate.iddates === film.iddate.iddates
              );
              if (!existingDate) {
                existingFilm.showtimes.push({
                	iddate: film.iddate,
                    idhour: [film.idhour], // Initialize IDHour as an array
                });
              } else {
                existingDate.idhour.push(film.idhour);
              }
            }
          }
          return acc;
        },
        []
      );

      document.addEventListener("DOMContentLoaded", function () {
    	
    	// Keep track of the currently active div
    	  let activeDiv = null;

    	  
        const trailer = document.getElementById("trailer");

        const descriptionTrailer =
          document.getElementById("descriptionTrailer");
        
        var presenceOfMovieHour = Boolean(localStorage.getItem("selectedMovieHour"));

        for (const film of orariPerFilmStrutturato) {
          const idfilm = film.idfilm;
          const showtimes = film.showtimes;
          
          // Create the iframe element
          const iframe = document.createElement("iframe");

          // Set the attributes
          iframe.width = "100%";
          iframe.height = "427px";
          iframe.src = film.idfilm.trailer;
          iframe.title = "YouTube video player";
          iframe.frameBorder = "0";
          iframe.allow =
            "accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; web-share";
          iframe.allowFullscreen = true;

          trailer.appendChild(iframe);

          const h1 = document.createElement("h1");
          h1.style.fontSize = "3rem";
          h1.textContent = idfilm.title;

          const brh1 = document.createElement("br");

          const div = document.createElement("div");
          div.classList.add("cardInfoFilm");

          const img = document.createElement("img");
          img.src = idfilm.image;
          img.alt = "Locandina film";
          img.style.width = "150px";

          const durata = document.createElement("div");
          const tdurata = document.createElement("b");
          tdurata.textContent = "Durata film";
          const pdurata = document.createElement("p");
          pdurata.textContent = idfilm.lenght + " min";

          const sconto = document.createElement("p");
          sconto.style.color = "#2ecc71";
          sconto.style.marginTop = "1rem";
          sconto.textContent = "1€ in meno se acquisti online";
          const brsconto = document.createElement("br");

          const summary = document.createElement("p");
          summary.style.lineHeight = "1.8";
          summary.textContent = idfilm.summary;

          const orari = document.createElement("div");
          orari.classList.add("containerOrariFilm");

          for (const showtime of showtimes) {
            const iddate = showtime.iddate;
            const idhour = showtime.idhour;

            const giorno = document.createElement("p");
            giorno.textContent = iddate.date;

            const orarioContainer = document.createElement("div");
            orarioContainer.classList.add("orarioContainer");

            for (const hour of idhour) {
              const orario = document.createElement("div");
              orario.classList.add("btnOrariFilm");
              orario.id=hour.idhours;

              const numero = document.createElement("p");
              numero.textContent = hour.hour;
              orario.appendChild(numero);
              
              orario.addEventListener("click", function() {
                  // Get the id of the clicked div
                  const clickedId = this.id;
                  // Store the id in localStorage
                  localStorage.setItem("selectedMovieHour", clickedId);
                  
                  localStorage.setItem("selectedMovieDay", iddate.iddates);
                  
                  presenceOfMovieHour = Boolean(localStorage.getItem("selectedMovieHour"));
                  
               // Remove "active" class from the previously active div (if any)
                  if (activeDiv) {
                    activeDiv.classList.remove("active");
                  }

                  // Add "active" class to the clicked div
                  this.classList.add("active");

                  // Update the activeDiv reference
                  activeDiv = this;
                  
              });

              orarioContainer.appendChild(orario);
            }

            orari.appendChild(giorno);
            orari.appendChild(orarioContainer);
          }

          const acquista = document.createElement("a");
          acquista.classList.add("cardCompraOra");
          acquista.textContent = "Scegli i posti";
       // Add an event listener to the element
          acquista.addEventListener("click", function() {
            // Get the selectedMovieHour from localStorage
            const selectedMovieHour = localStorage.getItem("selectedMovieHour");

            // Update the href attribute based on the selectedMovieHour
            if (selectedMovieHour) {
              acquista.href = "viewSeatSelector";
            } else {
              acquista.href = "moviePage?id=" + id;
            }
          });
        

          descriptionTrailer.appendChild(h1);
          descriptionTrailer.appendChild(brh1);
          descriptionTrailer.appendChild(div);
          div.appendChild(img);
          div.appendChild(durata);
          durata.appendChild(tdurata);
          durata.appendChild(pdurata);
          descriptionTrailer.appendChild(sconto);
          descriptionTrailer.appendChild(brsconto);
          descriptionTrailer.appendChild(summary);
          descriptionTrailer.appendChild(orari);
          descriptionTrailer.appendChild(acquista);
          
        }
        localStorage.removeItem("selectedSeats");
        localStorage.removeItem("selectedMovieHour");
    
      });
    </script>
  </body>

  </html>