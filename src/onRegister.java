

import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/onRegister")
public class onRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uname = request.getParameter("id");
		String emailid = request.getParameter("email");
		String password = request.getParameter("password");
		registerDao user = new registerDao();	
		HttpSession sessionx = request.getSession();
		sessionx.removeAttribute("error2");
		sessionx.removeAttribute("error");
		try {
			if(user.check(uname, emailid, password)==0)
			{
				HttpSession session = request.getSession();
				session.setAttribute("error2","Username already taken.");
				response.sendRedirect("register.jsp"); 
			}
			else if(user.check(uname, password, emailid)==1)
			{
				HttpSession session = request.getSession();
				session.setAttribute("error","Account created successfully. Please login to proceed.");
				response.sendRedirect("login.jsp"); 
			}
			else
			{
				HttpSession session = request.getSession();
				session.setAttribute("error2","We are facing some internal error. Try again later. Contact us if issue persists");
				
				response.sendRedirect("register.jsp");
				
			}
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	}

}
