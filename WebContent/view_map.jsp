<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <meta name="viewport" content="initial-scale=1.0, user-scalable=no">
   <meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Map</title>
<link href="style.css" rel="stylesheet" type="text/css">
 <script>
      
      function initMap() {
        var map = new google.maps.Map(document.getElementById('map'), {
          center: {lat: 28.4639, lng: 77.5098},
          zoom: 15
        });

        var infowindow = new google.maps.InfoWindow();
        var service = new google.maps.places.PlacesService(map);

        service.getDetails({
          placeId: 'ChIJN1t_tDeuEmsRUsoyG83frY4'
        }, function(place, status) {
          if (status === google.maps.places.PlacesServiceStatus.OK) {
            var marker = new google.maps.Marker({
              map: map,
              position: place.geometry.location
            });
            google.maps.event.addListener(marker, 'click', function() {
              infowindow.setContent('<div><strong>' + place.name + '</strong><br>' +
                'Place ID: ' + place.place_id + '<br>' +
                place.formatted_address + '</div>');
              infowindow.open(map, this);
            });
          }
        });
      }
    </script>

</head>

<body>

<div id="header">
		<h1>
			Bird's-Eye<span class="style1"></span>
		</h1>
		<h2>Smart City Info</h2>
	</div>
	<div id="cssmenu">

 <div id="map" style= "position:absolute; top:50%; left:30%;width:700px;height:400px;">
    <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCZgQ3LK8bc5Vvp7bCcjPBJzxg8LnScRmE&libraries=places&callback=initMap">
    </script>
    </div>
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

			String usertype = "";
			String username1 = userName.toString();

			try {
				Connection con = DB_connection.DBConnection();
				PreparedStatement ps = con
						.prepareStatement("Select usertype from user_acc where username ='" + username1 + "'");
				ResultSet rs = ps.executeQuery();

				rs.next();
				usertype = rs.getString("usertype");

				char usertype1 = usertype.charAt(0);

				System.out.println(usertype1);
				
				if (usertype1 == 's') {
					out.print("<ul> ");
					out.print("<li><a href=create_acc_student_res.jsp>Home</a></li> ");

					out.print("<li><a href=view_map.jsp>View map</a></li> ");
					out.print("    <li><a href=view_restaurant.jsp>View restaurant</a></li> ");
					out.print("<li><a href=view_mall.jsp>View mall</a></li> ");
					out.print("<li><a href=edit_profile.jsp>edit account</a></li> ");
					out.print("<li><a href=logout.jsp>Logout</a></li> ");

					out.print("</ul>");

				} else if (usertype1 == 'a') {
					out.print("<ul> ");
					out.print("<li><a href=create_acc_admin_res.jsp>Home</a></li>");
					out.print("<li><a href=create_college.jsp>create College</a></li>");
					out.print("<li><a href=create_library.jsp>create hotel</a></li>");
					out.print("<li><a href=create_industry.jsp>create industry</a></li>");
					out.print("<li><a href=create_city_info.jsp>create city info</a></li>");
					out.print("<li><a href=create_museum.jsp>create museum</a></li>");
					out.print("<li><a href=edit_profile.jsp>edit account</a></li>");
					out.print("<li><a href=logout.jsp>Logout</a></li>");
					out.print("</ul>");
				}

				else if (usertype1 == 't') {
					out.print("<ul> ");
					out.print("<li><a href=create_acc_tourist_res.jsp>Home</a></li> ");

					out.print("<li><a href=view_city_info.jsp>View city info</a></li> ");
					out.print("    <li><a href=view_hotel.jsp>View hotel</a></li>  ");

					out.print("<li><a href=edit_profile.jsp>edit account</a></li> ");
					out.print("<li><a href=logout.jsp>Logout</a></li> ");

					out.print("</ul>");

				}

				else if (usertype1 == 'b') {
					out.print("<ul> ");
					out.print("<li><a href=create_acc_business_res.jsp>Home</a></li> ");

					out.print("<li><a href=view_city_info.jsp>View city info</a></li> ");
					out.print("    <li><a href=view_hotel.jsp>View hotel</a></li>  ");
					out.print("    <li><a href=view_industry.jsp>View industry</a></li>  ");
					out.print("<li><a href=edit_profile.jsp>edit account</a></li> ");
					out.print("<li><a href=logout.jsp>Logout</a></li> ");

					out.print("</ul>");

				} else {
				}
				;

			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
			}
			;
		%>


	</div>
	</body>

<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ page import="javax.servlet.*"%>
<%@ page import="smart_city.*"%>
<%@ page import="java.net.*"%>
</html>
