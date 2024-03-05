<!-- <%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %> -->
<!DOCTYPE html>
<html>

<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="icon" type="image/x-icon" href="./resources/img/s.png">
	<title>Login</title>
	<style>
		* {
			padding: 0;
			margin: 0;
			box-sizing: border-box;
			font-family: "Lato", sans-serif;
		}

		body {
			height: 100vh;
			display: flex;
			align-items: center;
			flex-direction: column;
			justify-content: center;
			color: white;
			text-align: center;
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

		body h2 {
			color: #2ecc71;
			letter-spacing: 0.4rem;

		}

		.form {
			display: flex;
			justify-content: center;
			border: 2px #2ecc71 solid;
			padding: 1rem;
			border-radius: 10px;
			align-items: center;
			box-shadow: 0px 0px 40px #2ecc71;
			width: 20rem;
			background-color: #2b2b2d;
		}

		form {
			display: flex;
			flex-direction: column;
			backdrop-filter: blur(3px);
		}

		.form input {
			outline: none;
			padding: .2rem .5rem;
			height: 2rem;
			border: transparent;
			border-radius: 0px 10px 10px 0px;
		}

		.form button {
			display: flex;
			align-items: center;
			justify-content: center;
			border: 2px solid rgba(255, 255, 255, 0.655);
			width: 100%;
			height: 2rem;
			cursor: pointer;
			margin-top: 0.5rem;
			border-radius: 10px;
		}

		.form button:hover {
			border: transparent;
			background-color: #2ecc71;
			transition-duration: 0.2s;
		}

		.user-insert {
			display: flex;
			gap: 1.2rem;
			justify-content: center;
			flex-direction: column;
		}
	</style>
</head>

<body>
	<jsp:include page="viewNavbar.jsp" />
	<div class="form">

		<form action="getLogin">
			<div class="user-insert">
				<h2>LOGIN</h2>
				<hr>
				<div style="display: flex; align-items: center;">
					<div
						style="background-color: #2ecc71; display: flex; align-items: center; justify-content: center; height: 2rem; width: 2rem;border-radius: 10px 0 0 10px;">
						<img src="./resources/img/emailW.png" width="25px">
					</div>
					<input type="text" name="email" required placeholder="Email">
				</div>
				<div style="display: flex; align-items: center;">
					<div
						style="background-color: #2ecc71; display: flex; align-items: center; justify-content: center; height: 2rem; width: 2rem;border-radius: 10px 0 0 10px;">
						<img src="./resources/img/padlockW.png" width="25px">
					</div>
					<input type="text" name="password" required placeholder="Password">
				</div>
				${message}
				<button type="submit">Invia</button>
				
				<a href="viewFormRegister" style="
    color: #2ecc71;
">Register</a>	
			</div>
		</form>
	</div>

	<script>


	</script>
</body>

</html>