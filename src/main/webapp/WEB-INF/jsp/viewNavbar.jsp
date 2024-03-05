<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Smash Cinema</title>
<link rel="icon" type="image/x-icon" href="./resources/img/s.png">
<style>
 	* {
		padding: 0;
		margin: 0;
		box-sizing: border-box;
		font-family: "Poppins", sans-serif;
		
	}
	.menu a {
		text-decoration: none;
		color: black;
	}
	.menu a:hover{
		text-decoration: underline;
	}
	
	.menu {
	z-index:5;
	position: fixed;
    display: flex;
    top: 0;
    width: 100%;
    justify-content: space-between;
    align-items: center;
    gap: 5rem;
    padding: 1.5rem 0;
    background-color: #18191fd6;
    backdrop-filter: blur(6px);
    box-shadow: 0px 0px 40px #4fe68f;
	}
	.logo img{
	height: 1.6rem;
	}
	.logo{
	padding-left: 3rem;
	}
	.right{
	gap: 3rem;
    display: flex;
    padding-right: 3rem;
	}
	
	.right a{
	color: aliceblue;
	}
</style>
</head>
<body>
		<div class="menu">
		<div class="logo">
			<a href="homePage"><img alt="logo" src="./resources/img/logo.png"></a>
		</div>
		<div class="right">
			
		<% if (session.getAttribute("user")!= null){ %>
			<a href="logout"     style = "color: #f43d22">Logout</a>
			<a href="usersPage">MyProfile</a>	
		<%}else{ %>
			<a href="viewLogin">Login</a>
			<%} %>			 
			<p style="
    box-shadow: 0px 0px 30px #4fe68f;
    background-color: #2a5943;
    border-radius: 50%;">${userNameShow}</p>
		</div>
		</div>
	
</body>
</html>