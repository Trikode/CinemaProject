<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
    <html>
      <head>
        <meta charset="ISO-8859-1" />
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

          .mainContainerUser{
            width: 100%;
            display: flex;
            flex-direction: column;
            align-items: center;
            margin-top: 6rem;
          }

          .containerInfoUser{
            width: 50%;
            margin-bottom: 5rem;
          }

          .containerCardInfo1 {
            margin-top: 1.5rem;
            display: flex;
            flex-direction: column;
            row-gap: 1.5rem;
          }
          .containerCardInfo2 {
            margin-top: 1.5rem;
            display: flex;
            flex-direction: column;
            row-gap: 1.5rem;
          }

          .mainInfoUser{
            display: flex;
            column-gap: 12rem;
          }

          .cardStorico{
            display: flex;
            flex-direction: row;
            column-gap: 1rem;
          }

          .containerImgStorico{
            margin-top: 1rem;
            display: flex;
            flex-direction: column;
            row-gap: 0.8rem;
          }
    
          
        </style>
      </head>
      <body>
        <jsp:include page="viewNavbar.jsp" />  
        <section class="mainContainerUser">
            <div class="containerInfoUser">
                <h1>Dati personali</h1>
                <br>
                <hr>
                <div class="mainInfoUser">
                    <div class="containerCardInfo1">
                        <p>Nome</p>
                        <p>Cognome</p>
                        <p>Email</p>
                        <p>Password</p>
                    </div>
                    <div class="containerCardInfo2">
                        
                    </div>
                </div>
            </div>

            <div class="containerInfoUser">
                <h1>Storico acquisti</h1>
                <br>
                <hr>
                <div id="filmsContainer">
                   
                </div>
            </div>
            
        </section>
        
        <script>
        
	       const userId = ${userId};
	       const userN = "${userN}";
	       const userC = "${userC}";
	       const userE = "${userE}";
	       const userP = "${userP}";
	        	       
	       const containerCardInfo = document.querySelector(".containerCardInfo2");
	       
	       const nome = document.createElement("p");
	       nome.textContent = userN
	       
    	   const cognome = document.createElement("p");
	       cognome.textContent = userC
	       
    	   const email = document.createElement("p");
	       email.textContent = userE
	       
	       const pas = document.createElement("p");	      
	       var hiddenPassword = "";
	       for (var i = 0; i < userP.length; i++) {
	       hiddenPassword += "*";
	       }
	       pas.textContent = hiddenPassword;
       
	       containerCardInfo.appendChild(nome)
	       containerCardInfo.appendChild(cognome)
	       containerCardInfo.appendChild(email)
	       containerCardInfo.appendChild(pas)
	       
	       
	       
	       
	       const seats = ${seatssss};
	       
	       const tickets = ${ticketssss};
	       console.log(tickets)
	       

	   // Filter tickets for the specified user ID
var userTickets = tickets.filter(function(ticket) {
  return ticket.iduser.idusers === userId;
});

// Group tickets by idFilmHours
var groupedTickets = {};
userTickets.forEach(function(ticket) {
  var idFilmHours = ticket.idhourFilm.idFilmHours;
  if (!groupedTickets[idFilmHours]) {
    groupedTickets[idFilmHours] = [];
  }
  groupedTickets[idFilmHours].push(ticket);
});

// Iterate over the grouped tickets and display film information and booked seats
for (var idFilmHours in groupedTickets) {
  var ticketsForFilm = groupedTickets[idFilmHours];
  var filmTitle = ticketsForFilm[0].idhourFilm.idfilm.title;
  var filmDate = ticketsForFilm[0].idhourFilm.iddate.date;
  var filmHour = ticketsForFilm[0].idhourFilm.idhour.hour;
  var filmImage = ticketsForFilm[0].idhourFilm.idfilm.image;
  var filmTimeBuy = ticketsForFilm[0].timeBuy;
  
  
  const filmContainer = document.getElementById("filmsContainer");
  var cardInfo = document.createElement('div');
  cardInfo.classList.add("cardStorico");
  
  var divImg = document.createElement('div');
  divImg.classList.add("containerImgStorico")
 
  var imgElement = document.createElement('img');
  imgElement.setAttribute('src', filmImage);
  imgElement.setAttribute('alt', 'Film Image');
  imgElement.style.width = "150px";
  
  divImg.appendChild(imgElement)
  cardInfo.appendChild(divImg);

  
  var divSto = document.createElement('div');
  divSto.classList.add("containerImgStorico")
  
  var h2Element = document.createElement('h2');
  h2Element.textContent = filmTitle;
  divSto.appendChild(h2Element);

  // Append the film date element to the film container div
  var pDateElement = document.createElement('p');
  pDateElement.textContent = 'Giorno: ' + filmDate;
  divSto.appendChild(pDateElement);

  // Append the film hour element to the film container div
  var pHourElement = document.createElement('p');
  pHourElement.textContent = 'Ora: ' + filmHour;
  divSto.appendChild(pHourElement);

  // Append the booked seats paragraph element to the film container div
  var pSeatsElement = document.createElement('p');
  var bookedSeats = ticketsForFilm.map(function(ticket) {
    return ticket.idseat.seat;
  });
  pSeatsElement.textContent = 'Posti prenotati: ' + bookedSeats.join(', ');
  divSto.appendChild(pSeatsElement);
  
  //Append the film timeBuy element to the film container div
  var pTimeBuyElement = document.createElement('p');
  pTimeBuyElement.style.letterSpacing = "1px";
  pTimeBuyElement.textContent = 'Giorno acquisto: ' + filmTimeBuy[0] + "/" + filmTimeBuy[1] + "/" + filmTimeBuy[2];
  divSto.appendChild(pTimeBuyElement);
  
  cardInfo.appendChild(divSto);
  filmContainer.appendChild(cardInfo);
}
				      
        </script>
    
      </body>
    </html>
    