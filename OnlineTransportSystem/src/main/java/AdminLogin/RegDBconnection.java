package AdminLogin;

import java.sql.Connection;
import java.sql.DriverManager;

public class RegDBconnection {
	private static String url = "jdbc:mysql://localhost:3306/onlinetransportsystem";
	private static String user = "root";
	private static String pass = "root@123";
	private static Connection con;
	
	public static Connection getConnection() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(url, user, pass);
		}
		catch(Exception e) {
			System.out.println("Database Not Connected!");
		}
		return con;
	}
}
