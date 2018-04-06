<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<meta charset='UTF-8'>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link
	href="http://cdnjs.cloudflare.com/ajax/libs/normalize/3.0.1/normalize.css"
	rel="stylesheet" type="text/css">
<link href="css/style.css" rel="stylesheet">

<title>Game begins</title>

<!-- Bootstrap core CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.3/css/bootstrap.min.css"
	integrity="sha384-Zug+QiDoJOrZ5t4lssLdxGhVrurbmBWopoEl+M6BdEfwnCJZtKxi1KgxUyJq13dy"
	crossorigin="anonymous">

<!-- Custom styles for this template -->
<link rel="stylesheet" type="text/css" href="main.css" />

</head>
<body onkeypress="change(event)" oncontextmenu="return false;">

	<%response.setHeader("Cache-Control","no-cache , no-store , must-revalidate");
		if(session.getAttribute("key")==null){
			response.sendRedirect("Register.jsp");
		}
		else{%>
	<nav class="navbar navbar-expand-md navbar-dark fixed-top navbar33"
		style="background-color: rgba(255, 0, 0, 1);">
	<div class="collapse navbar-collapse" id="navbarsExampleDefault">
		<ul class="navbar-nav mr-auto warning">
			<li class="nav-item active warning">Don't cross me</li>
		</ul>
	</div>
	</nav>
	<nav class="navbar navbar-expand-md navbar-dark navbar2"> <a
		class="navbar-brand" href="#">Q:</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarsExampleDefault"
		aria-controls="navbarsExampleDefault" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="navbarsExampleDefault">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active mques"></li>
		</ul>
		<form class="form-inline my-2 my-lg-0">
			<input class="form-control mr-sm-2" type="text"
				placeholder="Enter Encrypted answer" aria-label="Search" id="last">
			<button class="btn btn-outline-success my-2 my-sm-0" type="button" id="Final" onClick="final()">Final
				Answer</button>
		</form>
	</div>
	</nav>
	<span onClick="showme()"> <img src="pngAnwers/1.png" alt=""
		class="bigpicture ans1" />
	</span>
	<span onClick="showme()"> <img src="pngAnwers/2.png" alt=""
		class="bigpicture ans2" />
	</span>
	<span onClick="showme()"> <img src="pngAnwers/3.png" alt=""
		class="bigpicture ans3" />
	</span>
	<span onClick="showme()"> <img src="pngAnwers/4.png" alt=""
		class="bigpicture ans4" />
	</span>
	<span onClick="showme()"> <img src="pngAnwers/5.png" alt=""
		class="bigpicture ans5" />
	</span>
	<span onClick="showme()"> <img src="pngAnwers/6.png" alt=""
		class="bigpicture ans6" />
	</span>
	<span onClick="showme()"> <img src="pngAnwers/7.png" alt=""
		class="bigpicture ans7" />
	</span>
	<span onClick="showme()"> <img src="pngAnwers/8.png" alt=""
		class="bigpicture ans8" />
	</span>
	<span onClick="showme()"> <img src="pngAnwers/9.png" alt=""
		class="bigpicture ans9" />
	</span>
	<span onClick="showme()"> <img src="pngAnwers/10.png" alt=""
		class="bigpicture ans10" />
	</span>
	<div class="jumbotron fixed-top"></div>
<!--footer-->
	<input class="timein" id="timein" visibility="hidden"></input>
	<input class="don" id="don" visibility="hidden"></input>
	
	<nav class="navbar navbar-expand-md navbar-dark fixed-bottom">
	<form action="Logout" method="get">
		<button class="btn  btn-danger my-2 my-sm-0" type="submit" onClick='lout()'>Quit</button>
	</form>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarsExampleDefault"
		aria-controls="navbarsExampleDefault" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="navbarsExampleDefault">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active"><span id="timer">45:00</span> <span
				id="mmss">MM:SS</span></li>
		</ul>
		<form class="form-inline my-2 my-lg-0">
			<input class="form-control mr-sm-2" type="text" aria-label="Search"
				id="quesno" style="width: 50px" readonly></input> <input
				class="form-control mr-sm-2" type="text" placeholder="Enter word"
				aria-label="Search" id="encode">
			<button class="btn btn-outline-success my-2 my-sm-0" type="button"
				name="decrypt" id="getAnswer">Decrypt</button>
		</form>
	</div>
	</nav>
	<%} %>
	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="https://www.gstatic.com/firebasejs/4.8.2/firebase.js"></script>
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.3/js/bootstrap.min.js"
		integrity="sha384-a5N7Y/aK3qNeh15eJKGWxsqtnX/wWdSZSKp+81YjTmS15nvnvxKHuzaWwXHDli+4"
		crossorigin="anonymous"></script>
	<script src="main.js"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

	<!-- END slider -->
	<script src="main2.js"></script>
	<script src="main3.js"></script>
	


</body>
</html>