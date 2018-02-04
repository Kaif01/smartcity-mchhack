<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<SCRIPT LANGUAGE="JavaScript">
	function validate(form) {
		for (var i = 0; i < 3; i++) {
			if (!isNaN(form.elements[i].value)) {
				alert("This Field must be in Characters")
				form.elements[i].value = ""
				form.elements[i].focus()
				return false
			}
		}
		if (document.F1.password.value != document.F1.repassword.value) {
			alert("retype password is not matching with password. Please re-enter repassword");
			document.F1.repassword.value = ""
			document.F1.repassword.focus()
			return false
		}

		if (!isNaN(document.F1.phone.value)) {
			if (document.F1.phone.value > 9999999999) {
				alert("Phone number must be 10 digits long. Please re-enter phone number")
				document.F1.phone.value = ""
				document.F1.phone.focus()
				return false
			}
		} else {
			alert("This  field  must  be  number")
			document.F1.phone.value = ""
			document.F1.phone.focus()
			return false
		}

		for (var i = 0; i < form.elements.length; i++) {
			if (form.elements[i].value == "") {
				alert("Fill out all Fields")
				form.elements[i].focus()
				return false
			}
		}

		return true
	}
</SCRIPT>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>LiBRARY</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script type="text/javascript">
	function ctck1() {
		var sds = document.getElementById("form");

	}
</script>

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
			<td width="300" valign="top">
				<div id="services">
					<h1></h1>


				</div>
			</td>

			<td width="1200" valign="top">
				<div id="welcome">
					<h1>CREATE library FORM</h1>
					<br>
					<table align="center">
						<tr>

						</tr>
						<tr>
							<td>
								<form name=F1 onSubmit="return validate(this)"
									action="create_library_res.jsp" method="post">
									<table cellspacing="5" cellpadding="3">

										<tr>
											<td style="color:#ffffff; background:#333333">NAME:</td>
											<td><input type="text" name="name" /></td>
										</tr>

										<tr>
											<td style="color:#ffffff; background:#333333">ADDRESS:</td>
											<td><input type="text" name="address" /></td>
										</tr>

										<tr>
											<td style="color:#ffffff; background:#333333">email:</td>
											<td><input type="text" name="email" /></td>
										</tr>
										<tr>
											<td style="color:#ffffff; background:#333333">Phone:</td>
											<td><input type="text" name="phone" /></td>
										</tr>

										<tr>
											<td></td>
											<td><input type="submit" value="Submit" /> <INPUT
												TYPE=RESET VALUE="CLEAR"></td>
										</tr>
									</table>
								</form>
							</td>
						</tr>

					</table>
				</div>
			</td>

			<td width="299" valign="top">
				<div id="welcome" style="border-right: #666666 1px dotted;">
					<center></center>


				</div>
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
