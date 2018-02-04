
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Smart city</title>
<link href="style.css" rel="stylesheet" type="text/css">


</head>

<body>


	<div id="header">
			<h1>
				Bird's-Eye<span class="style1"></span>
			</h1>
			<h2>Smart city Info</h2>

		</div>
		
	<div id="cssmenu">
		<ul>
			<li><a href="index.jsp">Home</a></li>
			<li><a href="view_map.jsp">View map</a></li>
			<li><a href="view_restaurant.jsp">View restaurant</a></li>
			<li><a href="view_mall.jsp">View mall</a></li>
			<li><a href="edit_profile.jsp">edit account</a></li>
			<li><a href="logout.jsp">Logout</a></li>


		</ul>
	</div>


	<table style="width: 897px; margin: 0 auto;">
		<tr>
			<td width="300" valign="top">
				<p style="font: bold italic 24px/18px Arial, Helvetica, sans-serif;
	color: #333333;background:#ffffff;
	padding: 20px 10px 10px 300px; width:800px;">Please choose the menu from above to view entities.</p>

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
			
	</table>




	<%@ page import="java.sql.*"%>
	<%@ page import="java.io.*"%>
	<%@ page import="javax.servlet.*"%>
	<%@ page import="smart_city.*" %>