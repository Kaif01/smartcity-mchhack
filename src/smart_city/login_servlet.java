package smart_city;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//This is the controller class for getting user inputs and redirecting to code for processing
@WebServlet("/login_servlet")

public class login_servlet extends HttpServlet {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@SuppressWarnings("unused")
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		int status;
		int err=0;
		
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		String  repassword=request.getParameter("repassword");
		String usertype =request.getParameter("usertype");
		char  usertype1=usertype.charAt(0);
		
			boolean stat=verify_user.checkLogin(username,password, repassword, usertype);
			if(stat==true && usertype1 == 'a')
			{
				Cookie userName = new Cookie("username", username);
				userName.setMaxAge(30*60);
				response.addCookie(userName);
				RequestDispatcher rd=request.getRequestDispatcher("admin_after_login.jsp");
				rd.include(request, response);
				}
			else if (stat==true && usertype1 == 's'){
				
				Cookie userName = new Cookie("username", username);
				userName.setMaxAge(30*60);
				response.addCookie(userName);
				RequestDispatcher rd=request.getRequestDispatcher("student_after_login.jsp");
				rd.include(request, response);
				}
			else if (stat==true && usertype1 == 'b'){
				
				Cookie userName = new Cookie("username", username);
				userName.setMaxAge(30*60);
				response.addCookie(userName);
				RequestDispatcher rd=request.getRequestDispatcher("business_after_login.jsp");
				rd.include(request, response);
				}
			else if (stat==true && usertype1 == 't'){
				
				Cookie userName = new Cookie("username", username);
				userName.setMaxAge(30*60);
				response.addCookie(userName);
				RequestDispatcher rd=request.getRequestDispatcher("tourist_after_login.jsp");
				rd.include(request, response);
				}
			
			else
			{
				err = 1;
				request.setAttribute("err",err);
				RequestDispatcher rd=request.getRequestDispatcher("create_acc_err.jsp");
				rd.include(request, response);

			}
		
	}
			
}
