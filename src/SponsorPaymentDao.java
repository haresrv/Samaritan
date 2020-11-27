import java.sql.*;
import java.io.File;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
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

public class SponsorPaymentDao {

	public ResultSet insert(String userid, String amount,String pan_number) throws ClassNotFoundException
	{
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			System.out.println("JAR File exists");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sys", "root", "root");
			Statement stmt = con.createStatement();
			String sql = "insert into SponsorPayments(paymentRefNo,userid,amount,donated_date,pan_number) values (default,?,?,NOW(),?)";
			PreparedStatement st = con.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
			st.setString(1,userid);
			st.setString(2,amount);
			st.setString(3,pan_number);
			System.out.println(st.toString());
			//q1
			int rs = st.executeUpdate();
			ResultSet rsx = st.getGeneratedKeys();
			
			if(rs>0)
			{
				System.out.println("Success");
				String sql2 = "select * from SponsorPayments where paymentRefNo=?";
				PreparedStatement st2 = con.prepareStatement(sql2);
				rsx.next();
				st2.setInt(1,rsx.getInt(1));
				ResultSet rs2 = st2.executeQuery();
				System.out.println(sql2);
				return rs2;
			}
		}
		catch (SQLException ex) {
			System.out.println(ex);
		}
		return null;
	}
}
