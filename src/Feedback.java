
import java.net.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.sql.*;
import java.io.*;

@WebServlet("/feedback")
public class Feedback extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		int age = Integer.parseInt(request.getParameter("age"));
		String info = request.getParameter("info");
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			System.out.println("JAR File exists");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sys", "root", "root");
			
			String sql = "insert into Feedback (name, email, age, info) values (?,?,?,?)";
			PreparedStatement st = con.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
			st.setString(1,name);
			st.setString(2,email);
			st.setInt(3,age);
			st.setString(4, info);
			System.out.println(st.toString());
			
			int rs = st.executeUpdate();
			ResultSet rsx = st.getGeneratedKeys();
			
			if(rs>0)
			{
				System.out.println("Success");
				rsx.next();
				response.sendRedirect("index.jsp");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

}
