import java.sql.*;
import java.io.File;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletContext;

/*
1)Import the package        - java.sql
2)Load and Register driver  - com.mysql.jdbc.driver
3)Create Connection			
4)Create Statement			
5)Execute the query			
6)process the results
7)close connection
*/


public class LoginDao {
	public static void main(String[] args) throws Exception,ClassNotFoundException{
//		System.out.println(check("Abhishek","CmyM@2020"));		
	}
	
	public String uid(String uname) throws ClassNotFoundException
	{
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			System.out.println("JAR File exists");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sys", "root", "root");
			Statement stmt = con.createStatement();
			String sql = "select * from Users where username=?";
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1,uname);
			System.out.println(st.toString());
			//q1
			ResultSet rs = st.executeQuery();
			if(rs.next())
			{
				System.out.println(rs.getString("userid"));
				return rs.getString("userid");
			}
		}
		catch (SQLException ex) {
			System.out.println(ex);
		}
		return "";
	}
	
	public int check(String uname, String password) throws ClassNotFoundException
	{
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			System.out.println("JAR File exists");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sys", "root", "root");
			Statement stmt = con.createStatement();
			String sql = "select * from Users where username=? and password=?";
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1,uname);
			st.setString(2,password);
			System.out.println(st.toString());
			//q1
			ResultSet rs = st.executeQuery();
			if(rs.next())
			{
				System.out.println(rs.getString("role"));	
				if(rs.getString("role").equals("Admin"))
					return 2;

				return 1;
			}
		}
		catch (SQLException ex) {
			System.out.println(ex);
		}
		return 0;
	}
}
