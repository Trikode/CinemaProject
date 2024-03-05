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
        margin: 0;
        padding: 0;
        margin-top:6rem;
      }
      main {
        padding-bottom: 30px;
      }

      .carousel {
        position: relative;
        width: 100%;
        overflow: hidden;
        padding: 30px 0;
        background-color: rgba(0, 0, 0, 0.1);
      }

      .carousel-content {
        display: flex;
        width: 100%;
        overflow-x: hidden;
        transition: opacity 2s;
      }
      .carousel-content .article {
        flex: 0 0 auto;
        width: 100%;
        text-align: center;
        opacity: 0;
        transition: opacity 2s;
      }
      .carousel-content .article.active {
        opacity: 1;
      }

      .article-content {
        display: flex;
        align-items: center;
        justify-content: center;
        min-height: 450px;
      }

      .article-details {
        margin-bottom: 150px;
        margin-left: 150px;
        text-align: left;
      }

      .filmList {
        display: flex;
        flex-wrap: wrap;
        justify-content: flex-start;
        background-color: rgba(0, 0, 0, 0.1);
        padding-top: 50px;
        padding-bottom: 20px;
        margin: 0 30px 0 30px;
        min-height: 280px;
        justify-content: center;
      }

      .film {
        flex-basis: 16.6667%; /* Set to 100% divided by the maximum number of films per row (6) */
        max-width: 16.6667%; /* Same value as flex-basis */
        margin: 1%; /* Adjust the margin value as needed for spacing */
        box-sizing: border-box;
        display: flex;
        flex-direction: column;
        align-items: center;
        text-align: center;
      }

      .error-message {
        align-items: center;
        letter-spacing: 1px;
        color: #2ecc71;
      }

      .inputBox_container {
        display: -webkit-box;
        display: -ms-flexbox;
        display: flex;
        -webkit-box-align: center;
        -ms-flex-align: center;
        align-items: center;
        -webkit-box-orient: horizontal;
        -webkit-box-direction: normal;
        -ms-flex-direction: row;
        flex-direction: row;
        max-width: 14em;
        width: -webkit-fit-content;
        width: -moz-fit-content;
        width: fit-content;
        height: -webkit-fit-content;
        height: -moz-fit-content;
        height: fit-content;
        background-color: #5c6370;
        border-radius: 0.8em;
        overflow: hidden;
      }

      .search_icon {
        height: 1em;
        padding: 0 0.5em 0 0.8em;
        fill: #abb2bf;
      }

      .inputBox {
        background-color: transparent;
        color: #ffffff;
        outline: none;
        width: 100%;
        border: 0;
        padding: 0.5em 1.5em 0.5em 0;
        font-size: 1em;
      }

      ::-webkit-input-placeholder {
        color: #abb2bf;
      }

      ::-moz-placeholder {
        color: #abb2bf;
      }

      :-ms-input-placeholder {
        color: #abb2bf;
      }

      ::-ms-input-placeholder {
        color: #abb2bf;
      }

      ::placeholder {
        color: #abb2bf;
      }
    </style>
  </head>
  <body>
    <jsp:include page="viewNavbar.jsp" />
    <h1 style="margin:20px 0 20px 30px; color: #2ecc71">Film in programma oggi</h1>
    <div class="carousel">
      <div id="carousel-content" class="carousel-content"></div>
    </div>

    <main>
      <div
        style="
          display: flex;
          margin: 50px 0 20px 30px;
          align-items: center;
          color: #2ecc71;
        "
      >
        <h1>I nostri film</h1>
        <div class="inputBox_container" style="margin-left: 100px">
          <svg
            class="search_icon"
            xmlns="http://www.w3.org/2000/svg"
            viewBox="0 0 48 48"
            alt="search icon"
          >
            <path
              d="M46.599 46.599a4.498 4.498 0 0 1-6.363 0l-7.941-7.941C29.028 40.749 25.167 42 21 42 9.402 42 0 32.598 0 21S9.402 0 21 0s21 9.402 21 21c0 4.167-1.251 8.028-3.342 11.295l7.941 7.941a4.498 4.498 0 0 1 0 6.363zM21 6C12.717 6 6 12.714 6 21s6.717 15 15 15c8.286 0 15-6.714 15-15S29.286 6 21 6z"
            ></path>
          </svg>
          <input
            class="inputBox"
            id="inputBox"
            type="text"
            placeholder="Trova il film che vuoi"
          />
        </div>
      </div>

      <div id="filmList" class="filmList"></div>
    </main>

    <script>

      const films = ${filmssss};
      
      const filmhours = ${filmshourssss};
      
      document.addEventListener("DOMContentLoaded", function () {
  
        const dataCorrente = new Date();
        const giornoCorrenteNumero = dataCorrente.getDay(); 
       
        const filmCorrente = Object.values(filmhours).reduce((acc, film) => {
          if (film.iddate.iddates == giornoCorrenteNumero) {
            const existingFilm = acc.find((f) => f.idfilm.idfilms == film.idfilm.idfilms);
            if (!existingFilm) {
              film.idhour = [film.idhour]; // Initialize idhour as an array
              acc.push(film);
            } else {
              existingFilm.idhour.push(film.idhour);
            }
          }
          return acc;
        }, []);

        const carouselArticles = document.getElementById("carousel-content");
        for (const key in filmCorrente) {
          if (filmCorrente.hasOwnProperty(key)) {
            const item = filmCorrente[key];
            const hours = item.idhour.map((hour) => hour.hour).join(", ");

            const article = document.createElement("article");
            article.classList.add("article");

            const divArticleC = document.createElement("div");
            divArticleC.classList.add("article-content");
            
            
            divArticleC.addEventListener('click', function() {
            	localStorage.removeItem("selectedMovieHour");
                const id = item.idfilm.idfilms; // Store the film ID in a variable
                const xhr = new XMLHttpRequest();
                xhr.open('POST', 'http://localhost:8080/cinemaEclipse/moviePage');
                xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                xhr.onload = function() {
                    if (xhr.status === 200) {
                        window.location.href = "/cinemaEclipse/moviePage?id=" + id;
                    }
                };
                xhr.send(encodeURI('id=' + id));
            });
            

            const img = document.createElement("img");
            img.src = item.idfilm.image;
            img.alt = "Locandina film";
            img.style.maxWidth = "300px";

            const divArticleD = document.createElement("div");
            divArticleD.classList.add("article-details");

            const h3 = document.createElement("h3");
            h3.style.fontSize = "50px";
            h3.textContent = item.idfilm.title;

            const p = document.createElement("p");
            p.style.fontSize = "36px";
            p.textContent = "Orari: " + hours;

            article.appendChild(divArticleC);
            divArticleC.appendChild(img);
            divArticleC.appendChild(divArticleD);
            divArticleD.appendChild(h3);
            divArticleD.appendChild(p);

            carouselArticles.appendChild(article);
          }
        }

        const article = document.createElement("article");
        article.classList.add("article");

        const divArticleC = document.createElement("div");
        divArticleC.classList.add("article-content");

        const img = document.createElement("img");
        img.src =
          "https://www.stefaniaguerini.com/web/wp-content/uploads/2018/10/cinelandia-ideazione-grafica-pubblicitaria-popcorn-social.jpg";
        img.alt = "Pubblicita";
        img.style.maxHeight = "450px";

        article.appendChild(divArticleC);
        divArticleC.appendChild(img);
        carouselArticles.appendChild(article);

        filmsContainer = document.getElementById("filmList");
        const filmFilterInput = document.getElementById("inputBox");
        filmFilterInput.addEventListener("input", filteredFilms);

        // Call filterFilms initially to display all films
        filteredFilms();

        function filteredFilms() {
          // Clear the previous results and error message
          filmsContainer.innerHTML = "";
          filmsContainer.classList.remove("error-message");

          const filterText = filmFilterInput.value.toLowerCase();
          let foundFilms = false; // Flag to track if any films are found

          for (const key in films) {
            if (films.hasOwnProperty(key)) {
              const film = films[key];
              // Check if the film title matches the filter text
              if (film.title.toLowerCase().includes(filterText)) {
                const article = document.createElement("article");
                article.id=film.idfilms;
                article.classList.add("film");
                const img = document.createElement("img");
                img.src = film.image;
                img.alt = "Locandina film";
                img.style.maxWidth = "150px";

                img.addEventListener('click', function() {
                	localStorage.removeItem("selectedMovieHour");
                    const id = film.idfilms; // Store the film ID in a variable
                    const xhr = new XMLHttpRequest();
                    xhr.open('POST', 'http://localhost:8080/cinemaEclipse/moviePage');
                    xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                    xhr.onload = function() {
                        if (xhr.status === 200) {
                            window.location.href = "/cinemaEclipse/moviePage?id=" + id;
                        }
                    };
                    xhr.send(encodeURI('id=' + id));
                });

                const p = document.createElement("p");
                p.textContent = film.title;
                p.style.fontSize = "19px";
                p.style.margin= "19px 0";

                p.addEventListener('click', function() {
                	localStorage.removeItem("selectedMovieHour");
                    const id = film.idfilms; // Store the film ID in a variable
                    const xhr = new XMLHttpRequest();
                    xhr.open('POST', 'http://localhost:8080/cinemaEclipse/moviePage');
                    xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                    xhr.onload = function() {
                        if (xhr.status === 200) {
                            window.location.href = "/cinemaEclipse/moviePage?id=" + id;
                        }
                    };
                    xhr.send(encodeURI('id=' + id));
                });

                article.appendChild(img);
                article.appendChild(p);
                filmsContainer.appendChild(article);
                foundFilms = true; // Set the flag to true if a film is found
              }
            }
          }

          // If no films are found, display the error message
          if (!foundFilms) {
            const errorMessage = document.createElement("h3");
            errorMessage.textContent =
              "Non ci sono film con questo nome, comunque noi trattiamo solo film dell'universo di Shrek";
            filmsContainer.appendChild(errorMessage);
            filmsContainer.classList.add("error-message");
          }
        }

        // Get the necessary elements
        var carouselContent = document.getElementById("carousel-content");
        var articles = Array.from(
          carouselContent.getElementsByClassName("article")
        );

        var articleWidth = articles[0].offsetWidth;
        var currentIndex = 0;
        var autoScrollInterval;

        // Calculate the total width of the carousel content
        var carouselWidth = articles.reduce(
          (totalWidth, article) => totalWidth + article.offsetWidth,
          0
        );

        // Start the automatic scrolling
        startAutoScroll();
        articles[currentIndex].classList.add("active");
        articles[currentIndex].style.opacity = "1";




        // Function to show the next article
        function showNext() {
          var maxIndex = Math.floor(carouselWidth / articleWidth) - 1;

          // Fade out the current article
          articles[currentIndex].style.opacity = "0";

          setTimeout(function () {
            // Remove "active" class after the fade-out transition
            articles[currentIndex].classList.remove("active");

            if (currentIndex < maxIndex) {
              currentIndex++;
            } else {
              currentIndex = 0;
            }

            // Fade in the next article
            articles[currentIndex].classList.add("active");
            articles[currentIndex].style.opacity = "1";
            carouselContent.scrollLeft = currentIndex * articleWidth;
          }, 2000); // Delay the removal of "active" class by 2 seconds (matching the transition duration)
        }

        // Function to start the automatic scrolling
        function startAutoScroll() {
          autoScrollInterval = setInterval(showNext, 10000); // Change the time interval as needed (e.g., 10000 milliseconds = 10 seconds)
        }
      });
    </script>
  </body>
</html>
