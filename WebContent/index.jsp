<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Debugging</title>
<link href="index.css" type="text/css" rel="stylesheet">
<script src="https://www.gstatic.com/firebasejs/4.8.2/firebase.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="Security.js"></script>
<script src="login.js"></script>
</head>
<body oncontextmenu="return false;">
	<%
		response.setHeader("Cache-Control","no-cache , no-store , must-revalidate");
		if(session.getAttribute("teamid")!=null){
			response.sendRedirect("Rules.jsp");
		}else{
		%>
	<div class="container"></div>

	<form>
		<table class="container1">
			<div class="widget center">
				<div class="blur"></div>
				<tr>
					<td>
						<p style="color: #000000; background-color: #ffffff" id="mess">
							<%
  								if(null!=request.getAttribute("errorMessage")){
  								out.println(request.getAttribute("errorMessage"));
  								}%>
						</p>
					</td>
				</tr>
				<tr>
					<td>
						<div>
							<span class='blocking-span'> <input type="text"
								name="team" autocomplete="off" class="inputNumber" id="tid"
								required /> <span class="floating-label">Team ID</span>
							</span>
						</div>
					</td>
				</tr>
				<tr>
					<td>
						<div>
							<span class='blocking-span'> <input type="password"
								name="pass" autocomplete="off" class="inputText" id="pswrd"
								required /> <span class="floating-label">Password</span>
							</span>
						</div>
					</td>
				</tr>
				<tr>
					<td>
						<button name="submit" type="button" title="Submit" onClick="log()">Submit</button>
						<a href="Register.jsp"><button name="register" type="button"
								title="Register">Register</button></a>
					</td>
				</tr>
			</div>
		</table>
	</form>
	<%} %>
</body>
</html>
