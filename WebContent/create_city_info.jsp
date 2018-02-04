<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Smart city of Brisbane</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script type="text/javascript">
function ctck1()
{
var sds = document.getElementById("form");

}
</script>

</head>

<body>
<%
 String userName = null;
  String sessionID = null;
  Cookie[] cookies = request.getCookies();
  if(cookies !=null){
  for(Cookie cookie : cookies){
  	if(cookie.getName().equals("username")) {userName = cookie.getValue();}
  }}
  else {response.sendRedirect("login.jsp");}
  	
  	
  
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
    <li><a href="upload_map.jsp">Upload Map</a></li>
    <li><a href="create_restaurant.jsp">Create Restaurant</a></li>
    <li><a href="create_mall.jsp">Create Mall</a></li>
    <li><a href="edit_profile.jsp">Edit Account</a></li>
    <li><a href="logout.jsp">Logout</a></li>
    
    </ul>
</div>



<table style="width:897px; background:#FFFFFF; margin:0 auto;">
<tr >
	<td width="300" valign="top">
    	<div id="services"><h1></h1>
		    
			
       </div>
	</td>
    
    <td width="1200" valign="top">
    	<div id="welcome" style="border-right:#666666 1px dotted;"><h4>Please choose from the above menus to create city entities</h4><br>
    	    <table  align="center" bgcolor="white">
		<tr>
			
		</tr>
		<tr>
			<td>
				
			</td>
		</tr>
	
	</table>
    	   </div>      
    </td>
    
   <td width="299" valign="top">
    	<div id="welcome" style="border-right:#666666 1px dotted;">
    	    <center></center>
		    
	    	
	    </div>      
    </td>
             	
    
</tr></table>
    
<div id="footer_top">
  <div id="footer_navigation">
  

  </div>
  
  
<script type="text/javascript">
document.onload = ctck();
</script>
</div>

</body>
</html>
