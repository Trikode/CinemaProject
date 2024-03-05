<%@ page language="java" contentType="text/html; charset=utf-8"
pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Smash Cinema</title>
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
            width: 30rem;
            background-color: transparent;
        }

        .aggiungiFilm:hover {
            box-shadow: 0px 0px 15px #2ecc71;
            transition-duration: 0.2s;
        }
        
        .grid-container-film {
            margin-top: 2rem;
            margin-bottom: 2rem;
            display: grid;
            grid-template-columns: repeat(6, 4fr);
            gap: 5px;
            width: 30rem;
        }

        .grid-container-day {
            margin-top: 2rem;
            margin-bottom: 2rem;
            display: grid;
            grid-template-columns: repeat(6, 4fr);
            gap: 5px;
            width: 30rem;
        }
        
        .grid-container-hour {
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
    <section style="padding-left: 16rem;">
        <select class="grid-container-film" >
                
        </select>
        
		<select class="grid-container-day" >
                
        </select>
        
        <select class="grid-container-hour" >
                
        </select>
        
        <form action="getNewEvent" method="post" id="form">
		
		</form>
    </section>
		
			

<script>
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
		})
		

		
		
		const button = document.createElement("button");
		button.type = "submit";
		button.textContent = "Aggiungi Evento";
		button.classList.add("aggiungiFilm");
		
		const form = document.getElementById("form");
		form.appendChild(FilmSelect);
		form.appendChild(DaySelect);
		form.appendChild(HourSelect);
		form.appendChild(button);
		
		
		
</script>
</body>
</html>