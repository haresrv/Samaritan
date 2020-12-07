import java.net.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.sql.*;
import java.util.ArrayList;
import java.io.*;
import java.util.*;

@WebServlet("/insert")
public class AddEvent extends HttpServlet{
	protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		String org=req.getParameter("org");
		String title=req.getParameter("title");
		String date=req.getParameter("date");
		String detail=req.getParameter("detail");
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sys", "root", "root");
			
			String sql = "INSERT INTO Events" + " (eventaddedbyid,eventtitle,eventdate,eventdescribe) values (?,?,?,?);";
			PreparedStatement st = con.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
			st.setString(1,org);
			st.setString(2,title);
			st.setString(3,date);
			st.setString(4,detail);
			int rs = st.executeUpdate();
			ResultSet rsx = st.getGeneratedKeys();
			
			if(rs>0)
			{
				System.out.println("Success");
				rsx.next();
				res.sendRedirect("AddEvent.jsp");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
}
}
