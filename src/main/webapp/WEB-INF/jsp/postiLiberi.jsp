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

        .mainPostiLIberi {
        	padding-top: 2rem;
            display: flex;
            justify-content:center;            
        }
         
        .grid-container-day{
        	margin: 0 2rem;
        	
        }
        .grid-container-hour{
        	margin-right: 2rem;
        }
        .aggiungiFilm {
            font-size: 1.2rem;
            border: 3px solid #2ecc71;
            color: #2ecc71;
            background-color: transparent;
        }
        .aggiungiFilm:hover {
            box-shadow: 0px 0px 15px #2ecc71;
            transition-duration: 0.2s;
        }
        
        
        
        :root {
  --selected-color: #2ecc71;
  --occupied-color: #e74c3c;
  --available-color: #fff;
}
        
        .SeatSelector {
  font-family: "Lato", sans-serif;
  background-color: #23222f;
  color: white;
  display: flex;
  flex-direction: column;
  align-items: center;
  height: 100vh;
  overflow: hidden;
  margin:0;
  padding:0;
  
}




.container {
  perspective: 1000px;
  margin-bottom: 3px;
}

.seat {
  background-color: #444451;
  height: 24px;
  width: 30px;
  margin: 6px;
  border-top-left-radius: 10px;
  border-top-right-radius: 10px;
  transform: scale(1.2);
}

.seat.selected {
  background-color: var(--selected-color);

}

.seat.occupied {
  background-color: var(--available-color);

}

/* Selects the second row f*/
.seat:nth-of-type(4) {
  margin-right: 20px;
}

.seat:nth-last-of-type(4) {
  margin-left: 20px;
}

.seat:not(.occupied) {
  cursor: default;
  
}

.showcase .seat:not(.occupied) {
  cursor: default;
}

.showcase {
  background-color: rgba(0, 0, 0, 0.1);
  padding: 5px 10px;
  border-radius: 5px;
  color: #777;
  list-style-type: none;
  display: flex;
  justify-content: space-between;
  margin-top:20px;
}

.showcase li {
  display: flex;
  align-items: center;
  justify-content: center;
  margin: 0 10px;
}

.showcase li small {
  margin-left: 2px;
}

.row {
  display: flex;
}

.screen {
  background-color: #fff;
  height: 70px;
  width: 100%;
  margin: 15px 0;
  transform: rotateX(-45deg);
  box-shadow: 0 3px 10px rgba(255, 255, 255, 0.7);
}

p.text {
  margin: 15px 0px 15px 0px;
}

p.text span {
  color: #6feaf6;
}
        
        
        
        
        
    </style>
</head>

<body>
    <jsp:include page="sideBar.jsp" />
  <section class="mainPostiLIberi">
  	<select class="grid-container-film" >
                
        </select>
        
		<select class="grid-container-day" >
                
        </select>
        
        <select class="grid-container-hour" >
                
        </select>
    <input type="button" value="Controlla posti" onClick="window.location.reload(true)" style="padding:0.5rem;" class="aggiungiFilm">
  </section>



<section class="SeatSelector" style="margin-top: 2rem;">

<ul class="showcase">
      <li>
        <div class="seat"></div>
        <small>Disponibile</small>
      </li>
      
      <li>
        <div class="seat occupied"></div>
        <small>Occupato</small>
      </li>
    </ul>

    <div class="container">
      <div class="screen"></div>
      <div class="row">
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
      </div>
      <div class="row">
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
      </div>
      <div class="row">
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
      </div>
      <div class="row">
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
      </div>
      <div class="row">
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
      </div>
      <div class="row">
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
      </div>
      <div class="row">
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
      </div>
      <div class="row">
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
      </div>
      <div class="row">
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
      </div>
      <div class="row">
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
        <div class="seat"></div>
      </div>
    </div>

</section>


    <script>
    
    let ticketPrice = 50;
    
    const tickets = ${ticketssss};
    console.log(tickets);
    const filmshourssss = ${filmshourssss}
    console.log(filmshourssss);
    
    const container = document.querySelector(".container");
    const availableSeats = document.querySelectorAll(".row .seat:not(.occupied)");
    const count = document.getElementById("count");
    const total = document.getElementById("total");
    const form = document.getElementById("form");
   // const hourSelect = localStorage.getItem("selectedMovieHour");
    //const movieSelect = localStorage.getItem("selectedMovieIndex");
    //const daySelect = localStorage.getItem("selectedMovieDay");
    const allSeats = document.querySelectorAll(".row .seat");

   

    
    
    
    
    const giorniSettimana = [
  	  { key: 1, value: "Lunedì" },
  	  { key: 2, value: "Martedì" },
  	  { key: 3, value: "Mercoledì" },
  	  { key: 4, value: "Giovedì" },
  	  { key: 5, value: "Venerdì" },
  	  { key: 6, value: "Sabato" },
  	  { key: 7, value: "Domenica" }
  	];

  
  
		const hours = ${hourssss};
		
		const films = ${filmssss};
		console.log(films);
		
		
		
		const DayContainer = document.querySelector(".grid-container-day");
		const DaySelect = document.createElement("input");
		DaySelect.type = "hidden";
		DaySelect.name = "giorno";
		DaySelect.value = -1;
		
		const DayElementVuoto = document.createElement("option");
		DayElementVuoto.value = -1;
		DayElementVuoto.textContent = "--- Giorno ---";
		DayContainer.appendChild(DayElementVuoto);
		for (const giorno of giorniSettimana){
			
			const DayElement = document.createElement("option");
			
			DayElement.value = giorno.key;
			DayElement.textContent = giorno.value;
			
			
			DayContainer.appendChild(DayElement);
		}
		
		DayContainer.addEventListener("click", function(){
			// Get the id of the clicked div
          const SelectedDayId = this.value;
          DaySelect.value = SelectedDayId; 
          localStorage.setItem("selectedMovieDay",DaySelect.value);
		})


		const HoursContainer = document.querySelector(".grid-container-hour");
		const HourSelect = document.createElement("input");
		HourSelect.type = "hidden";
		HourSelect.name = "ora";
		HourSelect.value = -1;
		
		const HourElementVuoto = document.createElement("option");
		HourElementVuoto.value = -1;
		HourElementVuoto.textContent = "--- Orario ---";
		HoursContainer.appendChild(HourElementVuoto);
		for (const ore of hours){
						
			const HourElement = document.createElement("option");
			
			HourElement.value = ore.idhours;
			HourElement.textContent = ore.hour;

			HoursContainer.appendChild(HourElement);
		}

		HoursContainer.addEventListener("change", function(){
			// Get the id of the clicked div
          const SelectedHourId = this.value;
          HourSelect.value = SelectedHourId; 
          localStorage.setItem("selectedMovieHour",HourSelect.value);
		})
		
		
		const FilmContainer = document.querySelector(".grid-container-film");
		const FilmSelect = document.createElement("input");
		FilmSelect.type = "hidden";
		FilmSelect.name = "film";
		FilmSelect.value = -1;
		
		const FilmElementVuoto = document.createElement("option");
		FilmElementVuoto.value = -1;
		FilmElementVuoto.textContent = "--- Film ---";
		FilmContainer.appendChild(FilmElementVuoto);
		for (const film of films){
						
			const FilmElement = document.createElement("option");
			
			FilmElement.value = film.idfilms;
			FilmElement.textContent = film.title;

			FilmContainer.appendChild(FilmElement);
		}

		FilmContainer.addEventListener("change", function(){
			// Get the id of the clicked div
          const SelectedFilmId = this.value;
          FilmSelect.value = SelectedFilmId; 
          localStorage.setItem("selectedMovieIndex",FilmSelect.value);
		})
    
    
    
  const hourSelect = localStorage.getItem("selectedMovieHour");
  const movieSelect = localStorage.getItem("selectedMovieIndex");
  const daySelect = localStorage.getItem("selectedMovieDay");
    
    const idFilmHourDate = filmshourssss.filter(item => item.iddate.iddates == daySelect && item.idfilm.idfilms == movieSelect && item.idhour.idhours == hourSelect).map(item => item.idFilmHours);
    const FHDIndex = idFilmHourDate[0];
    
    
 // Loop through the tickets array
    tickets.forEach(ticket => {
      // Check if the ticket matches the FHDIndex
      if (ticket.idhourFilm.idFilmHours === FHDIndex) {
        // Get the seat number from the ticket
        const seatNumber = ticket.idseat.idseats;

        // Find the corresponding seat element and add the "occupied" class
        const seatElement = allSeats[seatNumber];
        seatElement.classList.add("occupied");
      }
    });
    
 
    </script>
</body>

</html>