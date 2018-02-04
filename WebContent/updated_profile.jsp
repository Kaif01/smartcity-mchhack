<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Smart city</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script type="text/javascript">
function ctck1()
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
   


<%
  String userName = null;
  String sessionID = null;
  Cookie[] cookies = request.getCookies();
  if(cookies !=null){
  for(Cookie cookie : cookies){
  	if(cookie.getName().equals("username")) {userName = cookie.getValue(); }
  }}
  else {response.sendRedirect("login.jsp");}
  
  
  String usertype="";
	 try
	{
	Connection con = DB_connection.DBConnection();
	PreparedStatement ps=con.prepareStatement("Select usertype from user_acc where username ='"+userName+"'");
	ResultSet rs=ps.executeQuery();
	
  		rs.next();
		 usertype=rs.getString("usertype");
		 
		 char  usertype1=usertype.charAt(0);

		 System.out.println(usertype1);
		if (usertype1 =='s'){
			out.print("<ul> ");
			out.print("<li><a href=create_acc_student_res.jsp>Home</a></li> ");
			
			out.print("<li><a href=view_map.jsp>View map</a></li> ");
			out.print("    <li><a href=view_restaurant.jsp>View restaurant</a></li> ");
			out.print("<li><a href=view_mall.jsp>View mall</a></li> ");
			out.print("<li><a href=edit_profile.jsp>Edit Account</a></li> ");
			out.print("<li><a href=logout.jsp>Logout</a></li> ");
			 
			    
			out.print("</ul>");
			
			}
		else if (usertype1 =='a'){
			out.print("<ul> ");
			out.print("<li><a href=create_acc_admin_res.jsp>Home</a></li>");	
			out.print("<li><a href=create_college.jsp>create College</a></li>");	
			out.print("<li><a href=create_library.jsp>create hotel</a></li>");		
			out.print("<li><a href=create_city_info.jsp>create city info</a></li>");		
			out.print("<li><a href=edit_profile.jsp>edit account</a></li>");	
			out.print("<li><a href=logout.jsp>Logout</a></li>");	
			out.print("</ul>");
			}
		
		else if (usertype1 =='t'){
			out.print("<ul> ");
			out.print("<li><a href=create_acc_tourist_res.jsp>Home</a></li> ");
			
			out.print("<li><a href=view_city_info.jsp>View City Info</a></li> ");
			out.print("    <li><a href=view_hotel.jsp>View Hotel</a></li>  ");
			
			out.print("<li><a href=edit_profile.jsp>Edit Account</a></li> ");
			out.print("<li><a href=logout.jsp>Logout</a></li> ");
			 
			    
			out.print("</ul>");
			
			}
		
		else if (usertype1 =='b'){
			out.print("<ul> ");
			out.print("<li><a href=create_acc_business_res.jsp>Home</a></li> ");
			
			out.print("<li><a href=view_city_info.jsp>View City Info</a></li> ");
			out.print("    <li><a href=view_hotel.jsp>View hotel</a></li>  ");
			out.print("    <li><a href=view_industry.jsp>View Industry</a></li>  ");
			out.print("<li><a href=edit_profile.jsp>Edit Account</a></li> ");
			out.print("<li><a href=logout.jsp>Logout</a></li> ");
			 
			    
			out.print("</ul>");
			
			}
		else{}; 
		
	}
		catch (SQLException e) {
			e.printStackTrace();
			}	
		finally{};
		%>  
</div>
<table style="width:897px; margin:0 auto;">
<tr >
	<td width="300" valign="top">
    	<div id="services"><h1></h1>
		    
			
       </div>
	</td>
    
    <td width="1200" valign="top">
    	<div id="welcome"></div> <h3>Your profile has been updated.</h3><br>
    	    <table  align="center" bgcolor="white">
		<tr>
			
		</tr>
		<tr>
			<td>
		<%  
		String no = request.getParameter("no");
		int ano = Integer.parseInt(no);
		System.out.println(ano);
		String name=request.getParameter("name");
		String username=request.getParameter("username");
		String address=request.getParameter("address");
		String password=request.getParameter("password");
		String repassword=request.getParameter("repassword");
		String email=request.getParameter("email");
		String phone=request.getParameter("phone");
		double ph = Double.parseDouble(phone);
		String usertype2=request.getParameter("usertype");
		int status;
		
		Connection con=DB_connection.DBConnection();
		PreparedStatement ps;
		try {
			ps = con.prepareStatement("Update user_acc set no=?, name =?, username= ?, address=?, password=?,repassword=?,email=?,phone=?,usertype=? where no="+ano);
			
			ps.setInt(1, ano);
			ps.setString(2,name);
			ps.setString(3,username);
			ps.setString(4,address);
			ps.setString(5,password);
			ps.setString(6,repassword);
			ps.setString(7,email);
			ps.setDouble(8,ph);
			ps.setString(9,usertype2);
			
			status=ps.executeUpdate();
			System.out.println(address);
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		
			out.print("Profile updated successfully");
		
		
		
   
			%>
			 
				  <table cellspacing="5" cellpadding="3">	

			
	
	</table>
    	        
    </td>
    
   <td width="299" valign="top">
    	<div id="welcome" style="border-right:#666666 1px dotted;">
    	    <center></center>
		    
	    	
	    </div>      
    </td>
             	
    
</tr></table>
</td>
</tr>
</table>
    
<div id="footer_top">
  <div id="footer_navigation">
  

  </div>
  


<script type="text/javascript">
document.onload = ctck();
</script>
</div>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*" %>
<%@ page import="javax.servlet.*"%>
<%@ page import="smart_city.*" %>

</body>
</html>