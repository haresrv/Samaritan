import java.net.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.sql.*;
import java.util.ArrayList;
import java.io.*;
import java.util.*;

@WebServlet("/events")
public class ViewEvents extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			System.out.println("JAR File exists");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sys", "root", "root");
			
			String sql = "select * from Events";
			PreparedStatement st = con.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
			
			ResultSet rs = st.executeQuery();
			ResultSet rsx = st.getGeneratedKeys();
			
			List<Map<String, Object>> rows = new ArrayList<>();
			ResultSetMetaData rsmd = rs.getMetaData();
			int columnCount = rsmd.getColumnCount();

			while (rs.next()) {

			      Map<String, Object> row = new HashMap<>();
			      for (int i = 1; i <= columnCount; i++) {
			           // Note that the index is 1-based
			           String colName = rsmd.getColumnName(i);
			           String colVal = rs.getObject(i).toString();
			           row.put('"'+colName+'"', '"'+colVal+'"');
			      }
			      rows.add(row);
			}
			
			ByteArrayOutputStream baos = new ByteArrayOutputStream();
			PrintStream ps = new PrintStream(baos);
			// IMPORTANT: Save the old System.out!
			PrintStream old = System.out;
			// Tell Java to use your special stream
			System.setOut(ps);
			// Print some output: goes to your special stream
			System.out.println(rows);
			// Put things back
			System.out.flush();
			System.setOut(old);
			// Show what happened
			
			String ev = baos.toString().replace('=', ':');
			System.out.println(baos.toString());
			System.out.println(ev.toString());
			HttpSession session = request.getSession();
			session.setAttribute("events", ev);
			response.sendRedirect("events.jsp");
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

}
