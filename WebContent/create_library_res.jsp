<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Online Bank Access System - OBAAAS</title>
<link href="style.css" rel="stylesheet" type="text/css">


</head>

<body>
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

	
		<div id="header">
			<h1>
				Bird's-Eye<span class="style1"></span>
			</h1>
			<h2>Smart city Info</h2>

		</div>
	<div id="cssmenu">
		<ul>
			<li><a href="index.jsp">Home</a></li>
			<li><a href="create_college.jsp">Create College</a></li>
			<li><a href="create_library.jsp">Create Library</a></li>
			<li><a href="create_hotel.jsp">Create Hotel</a></li>
			<li><a href="create_city_info.jsp">Create City Info</a></li>
			<li><a href="edit_profile.jsp">Edit Account</a></li>
			<li><a href="logout.jsp">Logout</a></li>
		</ul>
	</div>
	<table style="width: 897px; margin: 0 auto;">
		<tr>
			<td width="300" valign="top"></td>

			<td width="1200" valign="top">



				<table>
					<%
						String name = request.getParameter("name");
						String address = request.getParameter("address");
						String email = request.getParameter("email");

						String phone = request.getParameter("phone");
						double ph = Double.parseDouble(phone);

						int status = create_entity.library(name, address, email, ph);

						try {
							if (status == 1)
								out.print("Library created    " + name + ". ");
						} finally {
						}
	
						
					%>
				</table>

			</td>
		</tr>
	</table>

	<%@ page import="java.sql.*"%>
	<%@ page import="java.io.*"%>
	<%@ page import="javax.servlet.*"%>
	<%@ page import="smart_city.*"%>