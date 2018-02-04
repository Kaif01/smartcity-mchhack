package smart_city;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/registration_servlet")
public class registration_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
   
	@SuppressWarnings("unused")
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		PrintWriter out=response.getWriter();
		
		int register_status;
		boolean verify_status;
		int update_status=0;
		
	
		int no =0;
		String ano=request.getParameter("no");
		if(ano != null){ no=Integer.parseInt(ano);}

		int err=0;
		double amount = 0;
		double phone = 0;
		String username=request.getParameter("username");
		
		String password=request.getParameter("password");
		String  repassword=request.getParameter("repassword");
		
		String  email=request.getParameter("email");
		
		String address=request.getParameter("address");
		
		String ph=request.getParameter("phone");
		if(ph != null){ phone=Double.parseDouble(ph);}
				
		String usertype =request.getParameter("usertype");
		String username1=null;
		char  usertype1=usertype.charAt(0);
		
		String name =request.getParameter("name");
		
		Connection con=DB_connection.DBConnection();
		try {
			PreparedStatement ps=con.prepareStatement("Select username from user_acc where no = '"+no+"'");
			ResultSet rs=ps.executeQuery();
			while(rs.next()){
				
			 username1=rs.getString(1);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		register_status=register_user.register(name, username, address, password, repassword, email,  phone, usertype);
		if (username1 == username && usertype1 == 's')
		{out.print("Sorry, this username has been already been taken. Please use another username.");
		RequestDispatcher rd=request.getRequestDispatcher("create_acc_student_req.jsp");
		rd.include(request, response);
	
		}
		else if (username1 == username && usertype1 == 'a')
		{out.print("Sorry, this username has been already been taken. Please use another username.");
		RequestDispatcher rd=request.getRequestDispatcher("create_acc_admin_req.jsp");
		rd.include(request, response);
	
		}
		else if (username1 == username && usertype1 == 't')
		{out.print("Sorry, this username has been already been taken. Please use another username.");
		RequestDispatcher rd=request.getRequestDispatcher("create_acc_tourist_req.jsp");
		rd.include(request, response);
	
		}
		else if (username1 == username && usertype1 == 'b')
		{out.print("Sorry, this username has been already been taken. Please use another username.");
		RequestDispatcher rd=request.getRequestDispatcher("create_acc_businessman_req.jsp");
		rd.include(request, response);
	
		}
		
		else if( register_status>0 && usertype1 =='s'){
						Cookie userName = new Cookie("username", username);
						userName.setMaxAge(30*60);
						response.addCookie(userName);
						RequestDispatcher rd=request.getRequestDispatcher("create_acc_student_res.jsp");
						rd.include(request, response);
					}
					
		else if (register_status>0  && usertype1 =='a'){
						Cookie userName = new Cookie("username", username);
						userName.setMaxAge(30*60);
						response.addCookie(userName);
						RequestDispatcher rd=request.getRequestDispatcher("create_acc_admin_res.jsp");
						rd.include(request, response);
					}
		else if (register_status>0 && usertype1 =='t'){
			Cookie userName = new Cookie("username", username);
			userName.setMaxAge(30*60);
			response.addCookie(userName);
			RequestDispatcher rd=request.getRequestDispatcher("create_acc_tourist_res.jsp");
			rd.include(request, response);
		}
		else if (register_status>0 && usertype1 =='b'){
			Cookie userName = new Cookie("username", username);
			userName.setMaxAge(30*60);
			response.addCookie(userName);
			RequestDispatcher rd=request.getRequestDispatcher("create_acc_business_res.jsp");
			rd.include(request, response);
		}
		
	else{
					err = 2;
					request.setAttribute("err",err);
					System.out.println(usertype);
					RequestDispatcher rd=request.getRequestDispatcher("create_acc_err.jsp");
					rd.include(request, response);
					
	}}}

	
	
