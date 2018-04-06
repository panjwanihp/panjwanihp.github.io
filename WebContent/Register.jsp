<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Debugging</title>
<link rel="stylesheet" type="text/css" href="Register.css" />
<link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
</head>
<script src="https://www.gstatic.com/firebasejs/4.8.2/firebase.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<script src="Fireb.js"></script>
<body oncontextmenu="return false;">
	<%
			response.setHeader("Cache-Control","no-cache , no-store , must-revalidate");
			if(session.getAttribute("teamid")!=null){
				response.sendRedirect("Rules.jsp");
			}else{
		%>
	<div class="container"></div>
	<form accept-charset=utf-8>
		<table class="container1">
			<div class="widget center">
				<div class="blur"></div>
				<tr>
					<td></td>
					<td>
						<div>
							<span class='blocking-span'>
								<p
									style="color: #000000; background-color: #ffffff; text-align: center"
									id="message"></p>
							</span>
						</div>
					</td>
					<td></td>
				</tr>
				<tr>
					<td></td>
					<td>
						<div>
							<span class='blocking-span'> <input type="text"
								name="Phone" autocomplete="off" class="inputText3 inputText"
								id="tid" required /> <span class="floating-label">Team
									ID:</span>
							</span>
						</div>
					</td>
					<td></td>
				</tr>
				<tr>
					<td>
						<div>
							<span class='blocking-span'> <input type="text"
								name="P1name" autocomplete="off" class="inputText" id="p1name"
								required /> <span class="floating-label">Name 1</span>
							</span>
						</div>
					</td>
					<td></td>
					<td>
						<div>
							<span class='blocking-span'> <input type="text"
								name="P2name" autocomplete="off" class="inputText2 inputText"
								id="p2name" required /> <span class="floating-label">Name
									2</span>
							</span>
						</div>
					</td>
				</tr>
				<tr>
					<td></td>
					<td>
						<div>
							<span class='blocking-span'> <input type="text"
								name="Phone" autocomplete="off" class="inputText3 inputText"
								id="phone" required /> <span class="floating-label">Phone</span>
							</span>
						</div>
					</td>
					<td></td>
				</tr>

				<tr>
					<td></td>
					<td>
					
						<button name="submit" type="button" title="Submit"
							onClick="submitdata()">Play</button>
					</td>
				</tr>
			</div>
		</table>
	</form>
	<%} %>
</body>
</html>