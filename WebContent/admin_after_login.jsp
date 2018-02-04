<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Smart City</title>
<link href="style.css" rel="stylesheet" type="text/css">


</head>

<body>

<div id="header">
			<h1>
				Bird's-Eye<span class="style1"></span>
			</h1>
			<h2>Smart City Info</h2>
		</div>

		<div id="cssmenu">
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



		<table style="width: 897px;">
			<tr>
				<td width="300" valign="top">
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
					<div id="welcome">
						<h1 style="font: bold italic 24px/18px Arial, Helvetica, sans-serif;
	color: #333333;background:#ffffff;
	padding: 20px 10px 10px 300px; width:800px;">You have successfully logged in the system.<br></br> Please Choose
							What You Want To Create From The Top Menu.</h1>
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

					
				</td>


			</tr>
		</table>

		

		<script type="text/javascript">
			document.onload = ctck();
		</script>

</body>
</html>
