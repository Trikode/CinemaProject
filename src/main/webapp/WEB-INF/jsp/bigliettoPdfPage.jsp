<!DOCTYPE html>
<html>

<head>
    <meta charset="ISO-8859-1" />
    <title>Smash Cinema</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" type="image/x-icon" href="./resources/img/s.png">
<script src="https://cdn.jsdelivr.net/npm/pdfmake@0.2.7/build/pdfmake.min.js"></script>
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.66/vfs_fonts.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/FileSaver.js/2.0.0/FileSaver.min.js" integrity="sha512-csNcFYJniKjJxRWRV1R7fvnXrycHP6qDR21mgz1ZP55xY5d+aHLfo9/FcGDQLfn2IfngbAHd8LdfsagcCqgTcQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

    <style>
        @import url("https://fonts.googleapis.com/css2?family=Lato&display=swap");

        body {
            font-family: "Lato", sans-serif;
            background-color: #23222f;
            color: white;
            margin-top:6rem;
            background-image: url("resources/img/bg.png");
			background-repeat: repeat-y;
			animation: scrollBackground 150s linear infinite;
			background-size: cover;
			background-size: 100%;
			background-position: center;
		}

		@keyframes scrollBackground {
  0% {
    background-position: 0 0; /* Posizione iniziale dell'immagine di sfondo */
  }
  100% {
    background-position: 0 100%; /* Posizione finale dell'immagine di sfondo */
  }
        }

        * {
            padding: 0;
            margin: 0;
            box-sizing: border-box;
        }

        .mainPagePdf{
            width: 100%;
            display: flex;
            justify-content: center;
            margin-top: 2rem;
        }

        .containerCardGrazie{
                width: 80%;
    display: flex;
    align-items: center;
    justify-content: center;
    flex-direction: column;
    gap: 1rem;
        }

        .containerCardGrazie h1{
            font-size: 3rem;
        }
        
         .containerCardGrazie img{
         height:29rem;
         }

        
    </style>
</head>

<body>
  <jsp:include page="viewNavbar.jsp" />
   <section class="mainPagePdf">
   		<audio id="myAudio" src="./resources/img/Smash Mouth  All Star with Lyrics.mp3" autoplay></audio>
        <div class="containerCardGrazie">
            <h1>GRAZIE PER L'ACQUISTO</h1>
            <h2>Verranno creati i biglietti in nuove pagine entro 10 secondi</h2>
            <h2>Scaricali perché se non lo fai non saranno riscaricabili</h2>
            
            <img alt="video" src="./resources/img/PzUS.gif">
        </div>
   </section>


<script>
  const FHDIndex = localStorage.getItem('FHDIndex');
  const selectedSeats = JSON.parse(localStorage.getItem('selectedSeats'));
  const seats = ${seatssss};
  const filmhours = ${filmshourssss};
  const userN = "${userN}";
  const userC = "${userC}";
  const userE = "${userE}";
  
  var audio = document.getElementById("myAudio");

  // Avvia la riproduzione audio quando la pagina è completamente caricata
  window.addEventListener("load", function() {
    audio.play();
  });

  // Funzione per generare il biglietto come PDF utilizzando pdfmake
  function generateTicketPDF(FHDIndex, seatName, filmName, filmData, imageDataURL, logoDataURL, shrekDataURL) {
    // Crea l'oggetto di configurazione per pdfmake
    var docDefinition = {
      background: {
        image: imageDataURL,
        fit: [2480, 3508] // Dimensioni del PDF (A4: 2480x3508)
      },
      content: [
    	{ image: shrekDataURL, width: 300, alignment: 'center', margin: [0, -40, 0, 20]},
        { image: logoDataURL, width: 550, alignment: 'center' },
        { text: 'TICKET', fontSize: 30, bold: true, alignment: 'center', margin: [0, 50, 0, 20], color: '#2ACD72' },
        { text: 'Film: ' + filmName, fontSize: 20, alignment: 'left', margin: [110, 0, 0, 10], color: '#2ACD72' },
        { text: 'Giorno e orario: ' + filmData, fontSize: 20, alignment: 'left', margin: [110, 0, 0, 10], color: '#2ACD72' },
        { text: 'Posto: ' + seatName, fontSize: 20, alignment: 'left',margin: [110, 0, 0, 10], color: '#2ACD72' },
        { text: 'Nome: ' + userN, fontSize: 20, alignment: 'left', margin: [110, 0, 0, 10], color: '#2ACD72' },
        { text: 'Cognome: ' + userC, fontSize: 20, alignment: 'left', margin: [110, 0, 0, 10], color: '#2ACD72' },
        { text: '!ATTENZIONE! Codesto biglietto deve essere presentato 30 minuti previo la presentazione dell\'opera cinematografica. Ricorda questo biglietto è scendibile solo in questa pagina o se no sono cazzi tuoi !ATTENZIONE!', fontSize: 10, alignment: 'center', margin: [0, 40], color: '#FF0000' },
      ],
      styles: {
        header: {
          fontSize: 18,
          bold: true,
          alignment: 'center',
          margin: [0, 20]
        }
      }
    };

    // Genera il PDF utilizzando pdfmake
    var pdfDocGenerator = pdfMake.createPdf(docDefinition);
    pdfDocGenerator.getBlob(function(blob) {
      var url = URL.createObjectURL(blob);
      var timer = setTimeout(function(){window.open(url);},6000);
      const button = document.getElementById("button");
      //button.addEventListener("click",window.open(url)); fare event listener e sostituirlo con il timeout
      
    });
  }

  // Funzione per ottenere il nome del film in base a FHDIndex
  function getFilmNameFromFHDIndex(FHDIndex) {
    const filmHour = filmhours.find(fh => fh.idFilmHours == FHDIndex);
    return filmHour ? filmHour.idfilm.title : 'N/A';
  }

  // Funzione per ottenere il giorno e l'orario del film in base a FHDIndex
  function getFilmDataFromFHDIndex(FHDIndex) {
    const filmHour = filmhours.find(fh => fh.idFilmHours == FHDIndex);
    return filmHour ? filmHour.iddate.date + " | " + filmHour.idhour.hour : 'N/A';
  }

  // Funzione per ottenere il nome del posto dal database
  function getSeatNameFromDatabase(seatId) {
    const seat = seats.find(seat => seat.idseats === seatId);
    return seat ? seat.seat : 'N/A';
  }

//Carica l'immagine di sfondo come data URL
  var bgImage = new Image();
  bgImage.onload = function() {
    var canvas = document.createElement('canvas');
    canvas.width = bgImage.width;
    canvas.height = bgImage.height;
    var ctx = canvas.getContext('2d');
    ctx.drawImage(bgImage, 0, 0);
    var imageDataURL = canvas.toDataURL('image/png');

    // Carica il logo come data URL
    var logoImage = new Image();
    logoImage.onload = function() {
      var logoCanvas = document.createElement('canvas');
      logoCanvas.width = logoImage.width;
      logoCanvas.height = logoImage.height;
      var logoCtx = logoCanvas.getContext('2d');
      logoCtx.drawImage(logoImage, 0, 0);
      var logoDataURL = logoCanvas.toDataURL('image/png');

      // Carica l'immagine di Shrek come data URL
      var shrekImage = new Image();
      shrekImage.onload = function() {
        var shrekCanvas = document.createElement('canvas');
        shrekCanvas.width = shrekImage.width;
        shrekCanvas.height = shrekImage.height;
        var shrekCtx = shrekCanvas.getContext('2d');
        shrekCtx.drawImage(shrekImage, 0, 0);
        var shrekDataURL = shrekCanvas.toDataURL('image/png');

        // Genera un biglietto per ogni posto selezionato
        selectedSeats.forEach(seatId => {
          const seatName = getSeatNameFromDatabase(seatId);
          const filmName = getFilmNameFromFHDIndex(FHDIndex);
          const filmData = getFilmDataFromFHDIndex(FHDIndex);
          generateTicketPDF(FHDIndex, seatName, filmName, filmData, imageDataURL, logoDataURL, shrekDataURL);
        });
      };
      shrekImage.src = './resources/img/shrek_PNG27.png';
    };
    logoImage.src = './resources/img/logo.png';
  };
  bgImage.src = './resources/img/bg.png';
</script>

</body>

</html>