package smart_city;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/create_servlet")
public class create_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
   	@SuppressWarnings("unused")
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
		int status;

			int no =0;
			String ano=request.getParameter("no");
			if(ano != null){ no=Integer.parseInt(ano);}

			int err=0;
			
			String name=request.getParameter("name");
			
			String address=request.getParameter("address");
		
			String  email=request.getParameter("email");
			
			String department=request.getParameter("department");
			String industrytype=request.getParameter("industrytype");
			String ph=request.getParameter("phone");
			if(ph != null){ double phone=Double.parseDouble(ph);}
			if( department!=null ){
				status=create_entity.college(name, address, email,  department);
				RequestDispatcher rd=request.getRequestDispatcher("res.jsp");
				rd.include(request, response);
				System.out.println(department);
			}
			
			
			else{
			
				
				RequestDispatcher rd=request.getRequestDispatcher("create_acc_err.jsp");
				rd.include(request, response);
				
				}
}

	
	
}
