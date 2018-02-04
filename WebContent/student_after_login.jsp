
<!DOCTYPE html>
<html>
<title>Bird's-Eye</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
html,body,h1,h2,h3,h4 {font-family:"Lato", sans-serif}
.mySlides {display:none}
.w3-tag, .fa {cursor:pointer}
.w3-tag {height:15px;width:15px;padding:0;margin-top:6px}
</style>
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
<!-- Links (sit on top) -->
<div class="w3-top">
  <div class="w3-row w3-large w3-light-grey">
  <div class="w3-col s1">
      <a href="index.jsp" class="w3-button w3-block">Home</a>
    </div>
    <div class="w3-col s1">
      <a href="view_college.jsp" class="w3-button w3-block">College</a>
    </div>
    <div class="w3-col s1">
      <a href="view_library.jsp" class="w3-button w3-block">Library</a>
    </div>
    <div class="w3-col s1">
      <a href="view_city_info.jsp" class="w3-button w3-block">City Info</a>
    </div>
    <div class="w3-col s1">
      <a href="edit_profile.jsp" class="w3-button w3-block">Edit Account</a>
    </div>
	<div class="w3-col s1">
      <a href="logout.jsp" class="w3-button w3-block">Log Out</a>
    </div>
  </div>
</div>
<!-- Content -->
<div class="w3-content" style="max-width:1100px;margin-top:45px;margin-bottom:10px">
    <h1><b>Bird's-Eye</b></h1>
    <p><b>EDUCATIONAL INSTITUTES</b></p>
  <!-- Slideshow -->
  <div class="w3-container">
    <div class="w3-display-container mySlides">
      <img src="Education.jpg" style="width:100%">
      <div class="w3-display-topleft w3-container w3-padding-32">
        <span class="w3-white w3-padding-large w3-animate-bottom">Bonjour!</span>
      </div>
    </div>

      
  

  <!-- Grid -->
  <div class="w3-row-padding" id="plans">
    <div class="w3-center w3-padding-64">
      <h3>COLLEGES</h3>
      <p></p>
    </div>

    <div class="w3-third w3-margin-bottom">
      <ul class="w3-ul w3-border w3-center w3-hover-shadow">
        <li class="w3-black w3-xlarge w3-padding-32">Galgotias University</li>
       <img src="gu.jpg" width="334" height="342">
        <li class="w3-light-grey w3-padding-20">
          <p>Galgotias University(GU), Uttar Pradesh degree, diploma 
		  and integrated programmes at the undergraduate(UG),
		  postgraduate(PG) and doctorate level(PhD).
		  The programmes offered  are in the streams of - Engineering,
		  Science, IT & Software, Architecture & Planning, Business &
		  Management Studies, Accounting.
          </p>

        </li>
      </ul>
    </div>

    <div class="w3-third w3-margin-bottom">
      <ul class="w3-ul w3-border w3-center w3-hover-shadow">
        <li class="w3-dark-grey w3-xlarge w3-padding-32">IIMT</li>
        <img src="iimt.jpg" width="334" height="342">
        <li class="w3-light-grey w3-padding-28">
        <p>IIMT Group of Colleges came into 
		existence in 1994. The College has inherited a bounteous 
		legacy of quality education propounded by our great sages and
		scientists, and has earned exemplary recognition in all walks 
		of life such as corporate world, academics and social life. It aims at providing global education 
		infused with core moral values.
        </p>
		</li>
      </ul>
    </div>

    <div class="w3-third w3-margin-bottom">
      <ul class="w3-ul w3-border w3-center w3-hover-shadow">
        <li class="w3-black w3-xlarge w3-padding-32">Llyod Law College<li>
        <img src="llyod.jpg" width="338" height="342">
        <li class="w3-light-grey w3-padding-24">
          <p>Lloyd Law College (abbreviated as LLC) is a law school in India. 
		  The institution is located in Greater Noida, Uttar Pradesh.
		  It offers five years integrated course in B.A LL.B and 3 years LL.B 
		  course with specialization in different areas of law.
        </p>
        </li>
      </ul>
    </div>
  </div>

  <!-- Grid -->
  <div class="w3-row w3-container">
    <div class="w3-center w3-padding-64">
      <span class="w3-xlarge w3-bottombar w3-border-dark-grey w3-padding-16">Library</span>
    </div>
    
    <div class="w3-col l5 m6 w3-grey w3-container w3-padding-16">
      <img src="lib2.png" width="400" height="342">
    </div>

    <div class="w3-col l5 m6 w3-dark-grey w3-container w3-padding-16">
      <img src="lib3.png" width="400" height="342">
    </div>
  </div>
  
    <div class="w3-row w3-container">
    <div class="w3-center w3-padding-64">
      <span class="w3-xlarge w3-bottombar w3-border-dark-grey w3-padding-16">City Deets</span>
    </div>

    <div class="w3-left l5 m6 w3-dark-grey w3-container w3-padding-16">
      <img src="city.jpg" width="400" height="342">
    </div>
	
	<div class="w3-col l5 m6 w3-grey w3-container w3-padding-9">
      <p>Greater Noida Industrial Area is located at the intersection of the Western and Eastern 
	 Dedicated Freight  Corridors and is also the gateway to the Delhi-Mumbai Industrial Corridor (DMIC).
	 It lies within the National Capital Region of India’s 
	 capital -  New Delhi and is adjacent to Noida, 
	 one of the largest industrial townships in Asia.

    The integrated township is shaping up as India's smartest city 
    the National Capital Region's most modern urban development center
    and its fastest-developing center of attraction. It has emerged
    as a modern model of far-sighted town planning.

    The city's infrastructure is looked after by the Greater NOIDA Authority,
    a statutory authority set-up under Uttar Pradesh Industrial Area
    Development Act, 1976.

    Greater Noida has a similar climate to Delhi: very
    hot and dry during summer, hot and humid during monsoons,
    pleasant and dry during spring and autumn, and cool to cold during winters.
        </p>
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
// Slideshow
var slideIndex = 1;
showDivs(slideIndex);

function plusDivs(n) {
  showDivs(slideIndex += n);
}

function currentDiv(n) {
  showDivs(slideIndex = n);
}

function showDivs(n) {
  var i;
  var x = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("demodots");
  if (n > x.length) {slideIndex = 1}    
  if (n < 1) {slideIndex = x.length} ;
  for (i = 0; i < x.length; i++) {
     x[i].style.display = "none";  
  }
  for (i = 0; i < dots.length; i++) {
     dots[i].className = dots[i].className.replace(" w3-white", "");
  }
  x[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " w3-white";
}
</script>

</body>
</html>
