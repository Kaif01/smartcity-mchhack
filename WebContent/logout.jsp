
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<SCRIPT LANGUAGE="JavaScript">
function check(form)
{
   for(var i=0; i<form.elements.length; i++)
   {
		if(form.elements[i].value == "")
		{
		   alert("Fill out all Fields")
		   form.elements[i].focus()
		   return false
		}
   }

   if(document.F1.usertype.value=="-1")
   {
       alert("Please select usertype")
	   
	   document.F1.usertype.focus()
	   return false
   }
   if(!isNaN(document.F1.username.value))
   {
       alert("User Name  must  be  characters & can't be null")
	   document.F1.username.value=""
	   document.F1.username.focus()
	   return false
   }

   if(!isNaN(document.F1.password.value))
   {
       alert("Password  must  be  characters & can't be null")
	   document.F1.password.value=""
	   document.F1.password.focus()
	   return false
   }
   
   return true   
}
</SCRIPT>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>LogOut</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script type="text/javascript">
function ctck()
{
var sds = document.getElementById("form");


}
</script>

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
    <li><a href="create_acc_tourist_req.jsp">Visitors Account</a></li>
    <li><a href="create_acc_business_req.jsp">Residents Account</a></li>
    </ul>
</div>

<%
//allow access only if session exists

String userName = null;
String sessionID = null;
Cookie[] cookies = request.getCookies();
if(cookies !=null){
for(Cookie cookie : cookies){
	if(cookie.getName().equals("username")) userName = cookie.getValue();
	cookie.setMaxAge(0);
}
}
%>
<h3 style="font: bold italic 24px/18px Arial, Helvetica, sans-serif;
	color: #333333;background:#ffffff;
	padding: 20px 10px 10px 300px; width:800px;">Hi <%=userName %>, You have successfully logged out. Please log in to continue.</h3>

<table style="width:897px; margin:0 auto;">
<tr >
	<td width="300" valign="top">
    	<div id="services"><ul>
        	
            
            
            </ul>
			
       </div>
	</td>
    
    <td width="1200" valign="top">
    	<div id="welcome"><h1>LOGIN FORM</h1><br>
    	    <table  align="center">
		<tr>
		
		</tr>
		<tr>
			<td><div></div>
				<form name=F1 onSubmit="return check(this)" action="login_servlet" method="post">
				   <table cellspacing="5" cellpadding="3">	
				  
					<tr><td style="color:#ffffff; background:#333333">USER NAME:</td><td> <input type="text" name="username"/></td></tr>
					<tr><td style="color:#ffffff; background:#333333">PASSWORD:</td><td> <input type="password" name="password"/></td></tr>
					<tr><td style="color:#ffffff; background:#333333">REPASSWORD:</td><td> <input type="password" name="repassword"/></td></tr>
					<tr><td style="color:#ffffff; background:#333333">Select usertype</td><td>
						<select name="usertype" id="usertype">
						<option value="-1">--- Select ---</option>
							 <option value="s" >Student</option> 
							<option value="t" >Tourist</option> 
							 <option value="b" >Businessman</option> 
							 <option value="a" >Administrator</option> 
						</select>
					</td></tr>
					<tr><td><input type="submit" value="Submit"></td><td>
					
                   
                   <INPUT TYPE=RESET VALUE="CLEAR"></td></tr>
             	</table>
				</form>
			</td>
		</tr>
	</table>
    	   </div>      
    </td>
    
    <td width="299" valign="top">
    	      
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
