package ncp;
import java.sql.*;

/*
	1)Import the package        - java.sql
	2)Load and Register driver  - com.mysql.jdbc.driver
	3)Create Connection			
	4)Create Statement			
	5)Execute the query			
	6)process the results
	7)close connection
*/

public class Connectivity {


	public static void main(String[] args) throws ClassNotFoundException{
		// TODO Auto-generated method stub
		Connectivity proj = new Connectivity();
		proj.createConnection();
	}
	
	void createConnection() throws ClassNotFoundException{
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			System.out.println("JAR File exists");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sys", "root", "root");
			Statement stmt = con.createStatement();
			System.out.println("Connection succeeded");
			System.out.println("Executing Queries\n\nQuery 1\n");
			//q1
			ResultSet rs = stmt.executeQuery("Select username, role from Users");
			while(rs.next())
			{
				String name = rs.getString("username");
				String role = rs.getString("role");
				System.out.println(name + " " + role);
			}
			
			System.out.println();
			
			System.out.println("Query 2\n");
			//q2
			rs = stmt.executeQuery("Select userid from Users where emailid='haresrv2000@gmail.com'");
			while(rs.next())
			{
				String id = rs.getString("userid");
				System.out.println(id);
			}
			
			System.out.println();
		
		}
		catch (SQLException ex) {
			System.out.println(ex);
		}
	}

}
