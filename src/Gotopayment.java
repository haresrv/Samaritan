

import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Gotopayment")
public class Gotopayment extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uname = request.getParameter("id");
		String pass = request.getParameter("password");
		LoginDao user = new LoginDao();	
		HttpSession sessionx = request.getSession();
		sessionx.removeAttribute("error");
		sessionx.removeAttribute("error2");
		try {
			if(user.check(uname, pass)==1)
			{
				HttpSession session = request.getSession();
				session.setAttribute("username",uname);
				response.sendRedirect("payment.jsp"); 
			}
			else if(user.check(uname, pass)==2)
			{
				HttpSession session = request.getSession();
				session.setAttribute("username",uname);
				session.setAttribute("admin","Admin");
				response.sendRedirect("payment.jsp"); 
			}
			else
			{
				HttpSession session = request.getSession();
				session.setAttribute("error","Not a Valid Username/password");
				response.sendRedirect("login.jsp");
			}
				
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	}

}
