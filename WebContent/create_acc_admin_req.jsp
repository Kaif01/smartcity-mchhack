
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Brisbane smart city system</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<body>
	<div id="header">
		<h1>
			Bird's-Eye<span class="style1"></span>
		</h1>
		<h2>Smart City Info</h2>
	</div>
	<div id="navigation">
		<ul>
			<li><a href="index.jsp">Home</a></li>
			<li><a href="create_college.jsp">create college</a></li>
			<li><a href="create_library.jsp">create library</a></li>
			<li><a href="create_hotel.jsp">create hotel</a></li>
			<li><a href="create_city_info.jsp">create city info</a></li>
			<li><a href="edit_profile.jsp">edit account</a></li>
			<li><a href="logout.jsp">Logout</a></li>
		</ul>
	</div>
	<table style="width: 897px; background: #FFFFFF; margin: 0 auto;">
		<tr>
			<td width="300" valign="top"
				style="border-right: #666666 1px dotted;">
				<div id="services">
					<h1></h1>
				</div>
			</td>
			<td width="1200" valign="top">
				<%
					String userName = null;
					String sessionID = null;
					Cookie[] cookies = request.getCookies();
					if (cookies != null) {
						for (Cookie cookie : cookies) {
							if (cookie.getName().equals("username")) {
								userName = cookie.getValue();
							}
						}
					} else {
						response.sendRedirect("login.jsp");
					}
				%>
				<div id="welcome" style="border-right: #666666 1px dotted;">
					<h1>You have successfully logged in the system. PLEASE CHOOSE
						WHAT YOU WANT TO CREATE FROM THE TOP MENU</h1>
					<br>
					<table align="center" bgcolor="white">
						<tr>
						</tr>
						<tr>
							<td></td>
						</tr>
					</table>
				</div>
			</td>
			<td width="299" valign="top">
				<div id="welcome" style="border-right: #666666 1px dotted;"></div>
			</td>
		</tr>
	</table>
	<div id="footer_top">
		<div id="footer_navigation"></div>
		<script type="text/javascript">
			document.onload = ctck();
		</script>
	</div>
</body>
</html>
