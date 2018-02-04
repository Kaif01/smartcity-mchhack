<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Smart City Info</title>
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
				<li><a href="create_college.jsp">create college</a></li>
				<li><a href="create_library.jsp">create library</a></li>
				<li><a href="create_hotel.jsp">create hotel</a></li>
				<li><a href="create_city_info.jsp">create city info</a></li>
				<li><a href="edit_profile.jsp">edit account</a></li>
				<li><a href="logout.jsp">Logout</a></li>
			</ul>
		</div>
		<div id="cssmenu">
			<ul>
</ul>
		</div>
<table style="width: 897px; background: #FFFFFF; margin: 0 auto;">
			<tr>
				<td width="300" valign="top"></td>

				<td width="1200" valign="top">
<h2>welcome. Your account has been created.</h2> <%
 	 %>
</table>

		<%@ page import="java.sql.*"%>
		<%@ page import="java.io.*"%>
		<%@ page import="javax.servlet.*"%>
		<%@ page import="smart_city.*"%>