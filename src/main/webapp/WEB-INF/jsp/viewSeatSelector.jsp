<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Smash Cinema</title>
<link rel="icon" type="image/x-icon" href="./resources/img/s.png">
<style>


@import url("https://fonts.googleapis.com/css2?family=Lato&display=swap");

:root {
  --selected-color: #2ecc71;
  --occupied-color: #e74c3c;
  --available-color: #fff;
}

* {
  box-sizing: border-box;
}

body {
  font-family: "Lato", sans-serif;
  background-color: #23222f;
  color: white;
  display: flex;
  flex-direction: column;
  align-items: center;
  height: 100vh;
  margin:0;
  padding:0;
  margin-top:6rem;
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
  cursor: pointer;
  
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




.fancy {
 background-color: transparent;
 border: 2px solid #444451;
 border-radius: 0;
 box-sizing: border-box;
 color: #fff;
 cursor: pointer;
 display: inline-block;
 float: right;
 font-weight: 700;
 letter-spacing: 0.05em;
 margin: 0;
 outline: none;
 overflow: visible;
 padding: 1.25em 2em;
 position: relative;
 text-align: center;
 text-decoration: none;
 text-transform: none;
 transition: all 0.3s ease-in-out;
 user-select: none;
 font-size: 13px;
}

.fancy::before {
 content: " ";
 width: 1.5625rem;
 height: 2px;
 background: #2ECC71;
 top: 50%;
 left: 1.5em;
 position: absolute;
 transform: translateY(-50%);
 transform-origin: center;
 transition: background 0.3s linear, width 0.3s linear;
}

.fancy .text {
 font-size: 1.125em;
 line-height: 1.33333em;
 padding-left: 2em;
 display: block;
 text-align: left;
 transition: all 0.3s ease-in-out;
 text-transform: uppercase;
 text-decoration: none;
 color: #2ECC71;
}

.fancy .top-key {
 height: 2px;
 width: 1.5625rem;
 top: -1.5px;
 left: 0.625rem;
 position: absolute;
 background: #2ECC71;
 transition: width 0.5s ease-out, left 0.3s ease-out;
}

.fancy .bottom-key-1 {
 height: 2px;
 width: 1.5625rem;
 right: 1.875rem;
 bottom: -2px;
 position: absolute;
 background: #2ECC71;
 transition: width 0.5s ease-out, right 0.3s ease-out;
}

.fancy .bottom-key-2 {
 height: 2px;
 width: 0.625rem;
 right: 0.625rem;
 bottom: -2px;
 position: absolute;
 background: #2ECC71;
 transition: width 0.5s ease-out, right 0.3s ease-out;
}

.fancy:hover {
 color: white;
 border: 2px solid transparent;
 background: rgb(25, 23, 23);
}

.fancy:hover::before {
 width: 0.9375rem;
 background: white;
}

.fancy:hover .text {
 color: white;
 padding-left: 1.5em;
}

.fancy:hover .top-key {
color: white;
 left: -2px;
 width: 0px;
}

.fancy:hover .bottom-key-1,
 .fancy:hover .bottom-key-2 {
 right: 0;
 width: 0;
}



</style>
</head>
<body>
  <jsp:include page="viewNavbar.jsp" />  



   

    <ul class="showcase">
      <li>
        <div class="seat"></div>
        <small>Disponibile</small>
      </li>
      <li>
        <div class="seat selected"></div>
        <small>Selezionato</small>
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

    <p class="text">
      Hai selezionato <span id="count">0</span> posti, per il prezzo totale di <span
        id="total"
        >0</span
      >$ !
    </p>
<form id="form" action="getTicketInfo" method="post">

</form>

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
    const hourSelect = localStorage.getItem("selectedMovieHour");
    const movieSelect = localStorage.getItem("selectedMovieIndex");
    const daySelect = localStorage.getItem("selectedMovieDay");
    const allSeats = document.querySelectorAll(".row .seat");

   

  
    
    const idFilmHourDate = filmshourssss.filter(item => item.iddate.iddates == daySelect && item.idfilm.idfilms == movieSelect && item.idhour.idhours == hourSelect).map(item => item.idFilmHours);
    const FHDIndex = idFilmHourDate[0];
    localStorage.setItem("FHDIndex",FHDIndex);
    
    
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
    
    
    
    
    
    populateUI();
    const valueFHDIndex = document.createElement("input");
    const valueSeatsIndex = document.createElement("input");

    valueFHDIndex.type = "hidden";
    valueFHDIndex.name = "FHDIndex";
    valueSeatsIndex.type = "hidden";
    valueSeatsIndex.name = "seatsIndex";
   
    const button = document.createElement("button");
    const span1 = document.createElement("span");
    const span2 = document.createElement("span");
    const span3 = document.createElement("span");
    const span4 = document.createElement("span");
    button.type = "submit";
    button.classList.add("fancy");
    span1.classList.add("top-key");
    span2.classList.add("text");
    span2.textContent = "Compra i biglietti";
    span3.classList.add("bottom-key-1");
    span4.classList.add("bottom-key-2");
    button.appendChild(span1);
    button.appendChild(span2);
    button.appendChild(span3);
    button.appendChild(span4);

    
    form.appendChild(valueFHDIndex);
    form.appendChild(valueSeatsIndex);
   
    form.appendChild(button);


    updateSelectedCount = () => {
      const selectedSeats = document.querySelectorAll(".row .seat.selected");

      const seatsIndex = [...selectedSeats].map((seat) => {
        return [...availableSeats].indexOf(seat);
      });
      

      localStorage.setItem("selectedSeats", JSON.stringify(seatsIndex));

      const selectedSeatsCount = selectedSeats.length;

      count.innerText = selectedSeatsCount;
      total.innerText = selectedSeatsCount * ticketPrice;
      
      
      if (seatsIndex.length === 0) {
    	    button.disabled = true;
    	  } else {
    	    button.disabled = false;
    	  }
      
      valueFHDIndex.value = FHDIndex;
      valueSeatsIndex.value = seatsIndex;
      
      
      
      
    };

    function populateUI() {
      const selectedSeats = JSON.parse(localStorage.getItem("selectedSeats"));

      if (selectedSeats !== null && selectedSeats.length > 0) {
        availableSeats.forEach((seat, index) => {
          if (selectedSeats.indexOf(index) > -1) {
            seat.classList.add("selected");
          }
        });
      }

      const selectedMovieIndex = localStorage.getItem("selectedMovieIndex");

      if (selectedMovieIndex !== null) {
        hourSelect.selectedIndex = selectedMovieIndex;
      }
    }

    

    container.addEventListener("click", (e) => {
      if (
        e.target.classList.contains("seat") &&
        !e.target.classList.contains("occupied")
      ) {
        e.target.classList.toggle("selected");

        updateSelectedCount();
      }
    });

    updateSelectedCount();
    

    </script>
</body>
</html>