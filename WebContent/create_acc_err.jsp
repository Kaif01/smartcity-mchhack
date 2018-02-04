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
			<li><a href="create_acc_student_req.jsp">Student Account</a></li>
			<li><a href="create_acc_business_req.jsp">Resident Account</a></li>

			<li><a href="create_acc_tourist_req.jsp">Visitors Account</a></li>
		</ul>
	</div>



	<table style="width: 897px; background: #FFFFFF; margin: 0 auto;">
		<tr>
			<td width="300" valign="top"></td>

			<td width="1200" valign="top">
				<%
					
				%>
				<table>
					<%
						int err = (Integer) request.getAttribute("err");
						out.print("<table align='left'  cellspacing='5' cellpadding='5'>");
						if (err == 1) {
							out.print("<tr><td>Incorrect User Name, Password or Account No! Please try again</td></tr>");
						}

						if (err == 2) {
							out.print("<tr><td>Registration Failed! Please try again</td></tr>");
						}
						out.print("</table>");
					%>
				</table>
				<%
					
				%>
			
	</table>



	<%@ page import="java.sql.*"%>
	<%@ page import="java.io.*"%>
	<%@ page import="javax.servlet.*"%>
	<%@ page import="smart_city.*"%>