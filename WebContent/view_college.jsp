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
			<h2>Smart city Info</h2>

		</div>
		
	<div id="cssmenu">
		<ul>
			<li><a href="index.jsp">Home</a></li>
			<li><a href="view_library.jsp">View library</a></li>
			<li><a href="view_city_info.jsp">View city info</a></li>
			<li><a href="edit_profile.jsp">edit account</a></li>
			<li><a href="logout.jsp">Logout</a></li>


		</ul>
	</div>



	<table style="width: 897px; margin: 0 auto;">
		<tr>
			<td width="300" valign="top"></td>

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
				<table>

					<%
						try {

							Connection con = DB_connection.DBConnection();
							PreparedStatement ps = con.prepareStatement("Select * from college");

							ResultSet rs = ps.executeQuery();

							out.print("<table align='left'  cellspacing='5' cellpadding='5'>");
							out.print("<tr><th style='color:#ffffff; background:#333333;'>ACCOUNT NO</th style='color:#ffffff; background:#333333;'><th style='color:#ffffff; background:#333333;'>NAME</th><th style='color:#ffffff; background:#333333;'>address</th><th style='color:#ffffff; background:#333333;'>email</th><th style='color:#ffffff; background:#333333;'>department</th></tr>");
							while (rs.next()) {

								out.print("<tr>");
								out.print("<td style='color:#ffffff; background:#333333;'>" + rs.getInt(1) + "</td>");
								out.print("<td style='color:#ffffff; background:#333333;'>" + rs.getString(2) + "</td>");
								out.print("<td style='color:#ffffff; background:#333333;'>" + rs.getString(3) + "</td>");
								out.print("<td style='color:#ffffff; background:#333333;'>" + rs.getString(4) + "</td>");

								out.print("<td style='color:#ffffff; background:#333333;'>" + rs.getString(5) + "</td>");

								out.print("</tr>");

							}
							out.print("</table>");

						} catch (SQLException e) {
							e.printStackTrace();
						}
					%>
				</table>
				<%
					
				%>
			
	</table>



	<%@ page import="java.sql.*"%>
	<%@ page import="java.io.*"%>
	<%@ page import="javax.servlet.*"%>
	<%@ page import="smart_city.*"%>