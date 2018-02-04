
<!DOCTYPE html>
<html>
<title>W3.CSS Template</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://www.w3schools.com/lib/w3-theme-black.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<body id="myPage">
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
<!-- Sidebar on click -->
<nav class="w3-sidebar w3-bar-block w3-white w3-card w3-animate-left w3-xxlarge" style="display:none;z-index:2" id="mySidebar">
  <a href="javascript:void(0)" onclick="w3_close()" class="w3-bar-item w3-button w3-display-topright w3-text-teal">Close
    <i class="fa fa-remove"></i>
  </a>
  <a href="#" class="w3-bar-item w3-button">Link 1</a>
  <a href="#" class="w3-bar-item w3-button">Link 2</a>
  <a href="#" class="w3-bar-item w3-button">Link 3</a>
  <a href="#" class="w3-bar-item w3-button">Link 4</a>
  <a href="#" class="w3-bar-item w3-button">Link 5</a>
</nav>

<!-- Navbar -->
<div class="w3-top">
 <div class="w3-bar w3-theme-d2 w3-left-align">
  <a class="w3-bar-item w3-button w3-hide-medium w3-hide-large w3-right w3-hover-white w3-theme-d2" href="javascript:void(0);" onclick="openNav()"><i class="fa fa-bars"></i></a>
  <a href="index.jsp" class="w3-bar-item w3-button w3-teal"><i class="fa fa-home w3-margin-right"></i>Home</a>
  <a href="view_hotel.jsp" class="w3-bar-item w3-button w3-hide-small w3-hover-white">Hotel</a>
  <a href="view_city_info.jsp" class="w3-bar-item w3-button w3-hide-small w3-hover-white">City Info</a>
  <a href="edit_profile.jsp" class="w3-bar-item w3-button w3-hide-small w3-hover-white">Edit Account</a>
  <a href="logout.jsp" class="w3-bar-item w3-button w3-hide-small w3-hover-white">Log Out</a>
  </div>

  <!-- Navbar on small screens -->
  <div id="navDemo" class="w3-bar-block w3-theme-d2 w3-hide w3-hide-large w3-hide-medium">
    <a href="#team" class="w3-bar-item w3-button">Team</a>
    <a href="#work" class="w3-bar-item w3-button">Work</a>
    <a href="#pricing" class="w3-bar-item w3-button">Price</a>
    <a href="#contact" class="w3-bar-item w3-button">Contact</a>
    <a href="#" class="w3-bar-item w3-button">Search</a>
  </div>
</div>

<!-- Image Header -->
<div class="w3-display-container w3-animate-opacity">
  <img src="Head.jpg" alt="boat" style="width:100%;min-height:350px;max-height:500px;">
  <div class="w3-container w3-display-bottomleft w3-margin-bottom w3-padding=32">  
    <button onclick="document.getElementById('id01').style.display='block'" class="w3-button w3-small w3-theme w3-hover-teal" title="Go To W3.CSS">FAILTE!</button>
  </div>
</div>


<!-- Team Container -->
<div class="w3-container w3-padding-64 w3-center" id="team">
<h2>City Deets</h2>
 <img src="pic.jpg" style="width:100%">

<div class="w3-row"><br>

</div>

<!-- Work Row -->
<div class="w3-row-padding w3-padding-64 w3-theme-l1" id="work">

<div class="w3-quarter">
<h2>Scrupulous Portrayal</h2>
<p>About Delhi
Delhi Tourism, a government undertaking facilitating tourism since 1975 will take you to a guided tour of the Delhi through this website which explores the wonders of this city be it its heritage, the art and crafts, the diverse cuisine and culture.

 

A symbol of the country’s rich past and thriving present, Delhi is a city where ancient and modern blend seamlessly together. It is a place that not only touches your pulse but even fastens it to a frenetic speed. Home to millions of dreams, the city takes on unprecedented responsibilities of realizing dreams bringing people closer and inspiring their thoughts.

 

Just a century ago, the British moved the seat of their empire from Kolkata to Delhi. And it has been the Capital of India ever since. Now a thriving, cosmopolitan metro, the city has much to celebrate as it has already reached the milestone of completing 100 years as a Capital. With a history that goes back many centuries, Delhi showcases an ancient culture and a rapidly modernising country. Dotted with monuments there is much to discover here.
</p>
</div>

<div class="w3-quarter">
<div class="w3-card w3-white">
  <img src="pic1.webp" alt="Vernazza" style="width:100%">
  </div>
  <div class="w3-card w3-white">
  <img src="pic2.webp" alt="Vernazza" style="width:100%">
  </div>
  <div class="w3-card w3-white">
  <img src="pic5.jpg" alt="Vernazza" style="width:100%">
  </div>
  <div class="w3-card w3-white">
  <img src="pic4.jpg" alt="Vernazza" style="width:100%">
  </div>
</div>

<div class="w3-quarter">
<div class="w3-card w3-white">
  <img src="pic3.jpg" alt="Cinque Terre" style="width:100%">
  </div>
  <div class="w3-card w3-white">
  <img src="pic6.jpg" alt="Cinque Terre" style="width:100%">
  </div>
  <div class="w3-card w3-white">
  <img src="pic7.jpg" alt="Cinque Terre" style="width:90%">
  </div>
  <div class="w3-card w3-white">
  <img src="pic8.jpg" alt="Cinque Terre" style="width:100%">
  </div>
</div>

<div class="w3-quarter">
<div class="w3-card w3-white">
  <img src="pic9.jpg" alt="Monterosso" style="width:100%">
  </div>
  <div class="w3-card w3-white">
  <img src="pic10.jpg" alt="Cinque Terre" style="width:100%">
  </div>
  <div class="w3-card w3-white">
  <img src="pic11.jpg" alt="Cinque Terre" style="width:100%">
  </div>
  <div class="w3-card w3-white">
  <img src="pic12.jpg" alt="Cinque Terre" style="width:100%">
  </div>
</div>

</div>

<!-- Container -->
<div class="w3-container" style="position:relative">
  <a onclick="w3_open()" class="w3-button w3-xlarge w3-circle w3-teal"
  style="position:absolute;top:-28px;right:24px">+</a>
</div>

<!-- Pricing Row -->
<div class="w3-row-padding w3-center w3-padding-64" id="pricing">
    <h2>Hotels</h2>
    <p>Choose the best that fits your needs.</p><br>
    <div class="w3-third w3-margin-bottom">
      <ul class="w3-ul w3-border w3-hover-shadow">
        <li class="w3-theme">
          <p class="w3-xlarge">Basic</p>
         <img src="pic14.jpg" style="width:100%">
		  <img src="pic13.jpg" style="width:100%">
      </ul>
    </div>

    <div class="w3-third w3-margin-bottom">
      <ul class="w3-ul w3-border w3-hover-shadow">
        <li class="w3-theme-l2">
          <p class="w3-xlarge">Pro</p>
         <img src="pic18.jpg" style="height:260px">
		  <img src="pic19.jpg" style="width:100%">
      </ul>
    </div>

    <div class="w3-third w3-margin-bottom">
      <ul class="w3-ul w3-border w3-hover-shadow">
        <li class="w3-theme">
          <p class="w3-xlarge">Premium</p>
          <img src="pic15.jpg" style="width:100%">
          <img src="pic16.webp" style="width:100%">
		  <img src="pic17.jpg" style="width:100%">
		  
 
		</ul>
    </div>
</div>
<!-- Footer -->

<footer class="w3-container w3-padding-32 w3-light-grey w3-center">
  <h4>Thanks for visiting!</h4>
  <a href="#" class="w3-button w3-black w3-margin"><i class="fa fa-arrow-up w3-margin-right"></i>To the top</a>
  <div class="w3-xlarge w3-section">
    <i class="fa fa-facebook-official w3-hover-opacity"></i>
    <i class="fa fa-instagram w3-hover-opacity"></i>
    <i class="fa fa-snapchat w3-hover-opacity"></i>
    <i class="fa fa-pinterest-p w3-hover-opacity"></i>
    <i class="fa fa-twitter w3-hover-opacity"></i>
    <i class="fa fa-linkedin w3-hover-opacity"></i>
  </div>
  <p>Team Adroit</p>
</footer>

<script>
// Script for side navigation
function w3_open() {
    var x = document.getElementById("mySidebar");
    x.style.width = "300px";
    x.style.paddingTop = "10%";
    x.style.display = "block";
}

// Close side navigation
function w3_close() {
    document.getElementById("mySidebar").style.display = "none";
}

// Used to toggle the menu on smaller screens when clicking on the menu button
function openNav() {
    var x = document.getElementById("navDemo");
    if (x.className.indexOf("w3-show") == -1) {
        x.className += " w3-show";
    } else { 
        x.className = x.className.replace(" w3-show", "");
    }
}
</script>

</body>
</html>