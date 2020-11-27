

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Gotoreceipt")
public class Gotoreceipt extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		String 
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try 
		{
			LoginDao use = new LoginDao();
			HttpSession session = request.getSession();
			String userid = use.uid((String) session.getAttribute("username"));
			String amount = request.getParameter("pay");
			String pan_number = request.getParameter("pannumber");
			SponsorPaymentDao user = new SponsorPaymentDao();
			ResultSet rs = user.insert(userid,amount,pan_number);
			if(rs!=null)
			{
				while(rs.next())
				{
//					System.out.println(rs.getInt(1));

					session.setAttribute("receiptid",rs.getString("paymentRefNo"));
					session.setAttribute("donated_date",rs.getString("donated_date"));
					session.setAttribute("pan_number",rs.getString("pan_number"));
					session.setAttribute("amount",rs.getString("amount"));
				}
				
				response.sendRedirect("receipt.jsp");
			}
			else
			{
				response.sendRedirect("payment.jsp");
			}
		}
		
		catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
	}

}
