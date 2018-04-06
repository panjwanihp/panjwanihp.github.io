
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="">

<title>Rules</title>
<!-- Bootstrap core CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.3/css/bootstrap.min.css"
	integrity="sha384-Zug+QiDoJOrZ5t4lssLdxGhVrurbmBWopoEl+M6BdEfwnCJZtKxi1KgxUyJq13dy"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="Rules.css">

<style type="text/css">
body {
	padding-top: 5rem;
}

.starter-template {
	text-align: center;
	padding-top: 10rem;
}
</style>

</head>

<body oncontextmenu="return false;">
	
	<script src="https://www.gstatic.com/firebasejs/4.8.2/firebase.js"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src="rules.js"></script>
	<%
		response.setHeader("Cache-Control","no-cache , no-store , must-revalidate");
		if(session.getAttribute("key")==null){
			response.sendRedirect("Register.jsp");
		}
		else{
	%>
	<div class="jumbotron jumbotron-fluid fixed-top">
		<h1 class="display-6">Rules</h1>
		<p class="lead">Winter is here... Don't Get Distracted.</p>
	</div>
	<div class="starter-template col-lg-12 col-sm-12">
		<ul>
			<li>rule 1</li>
			<li>rule 2</li>
			<li>rule 3</li>
			<li>rule 4</li>
			<li>rule 5</li>
			<li>rule 6</li>
			<li>rule 7</li>
			<li>rule 8</li>
			<form action="Start" method="get" target="_blank">
				<table class="container1">
			<div class="widget center">
				<div class="blur"></div>
				
				<tr>
					<td></td>
					<td>
						<button type="submit" class="btn btn-dark" >Start the game</button>		
					</td>
					<td></td>
				</tr>
				</div>
				</table>
			</form>
			<br><br>
			<form action="Logout" method="get">
				<button type="submit" class="btn btn-dark">Logout</button>
			</form>
		</ul>
	</div>
	<!-- /.container -->


	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
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

<%} %>
	
</body>
</html>