<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html>

<head>
    <title>Smash Cinema</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">    
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

        .mainMonitoraggioIncassi {
            display: flex;
            flex-direction: column;
            padding-left: 16rem;
            padding-right: 1rem;
        }
    </style>
</head>

<body>
<jsp:include page="sideBar.jsp" />
	<p id="totalMoney" class="mainMonitoraggioIncassi" style="padding: 2rem 0 1rem 17.5rem;"></p>
    <section id="monitoraggioIncassi" class="mainMonitoraggioIncassi">
        

    </section>

    <script>
		const BSCFHI = ${bookedSeats};
		console.log(BSCFHI);
		
		const filmhours = ${filmshourssss};
		console.log(filmhours);


		var totalMoney = 0;
		
		BSCFHI.forEach((bscfhi) => {
			  const filmHour = filmhours.find((fh) => fh.idFilmHours === bscfhi.filmHourId);
			  console.log(filmHour)
			  console.log(bscfhi)
			  
			  const section = document.getElementById("monitoraggioIncassi");

			  const outerDiv = document.createElement("div");
			  outerDiv.style.display = "flex";
			  outerDiv.style.padding = "1.5rem";

			  const locandinaFilmDiv = document.createElement("div");
			  locandinaFilmDiv.className = "locandinaFIlm";
			  const img = document.createElement("img");
			  img.src = filmHour.idfilm.image;
			  img.width = 150;
			  locandinaFilmDiv.appendChild(img);

			  const infoDiv = document.createElement("div");
			  infoDiv.style.display = "flex";
			  infoDiv.style.flexDirection = "column";
			  infoDiv.style.rowGap = "1rem";
			  infoDiv.style.marginLeft = "1rem";

			  const h2 = document.createElement("h2");
			  h2.textContent = filmHour.idfilm.title;
			  const p1 = document.createElement("p");
			  p1.textContent = "Numero biglietti venduti: " + bscfhi.bookedSeatsCount;
			  const p2 = document.createElement("p");
			  p2.textContent = "Totale incassi: " + bscfhi.bookedSeatsCount*50 + "$";
	  
			  infoDiv.appendChild(h2);
			  infoDiv.appendChild(p1);
			  infoDiv.appendChild(p2);

			  outerDiv.appendChild(locandinaFilmDiv);
			  outerDiv.appendChild(infoDiv);

			  section.appendChild(outerDiv);
			  
			  const tMp = document.getElementById("totalMoney");
			  totalMoney = totalMoney + bscfhi.bookedSeatsCount*50;
			  tMp.textContent = "Totale guadagnato fino ad ora: " + totalMoney + "$";

		});
		
    </script>
</body>

</html>