package AdminLogin;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class RegControler {
	//Connect DB
			private static boolean isSuccess;
			private static Connection con = null;
			private static Statement stmt = null;
			private static ResultSet rs = null;
			
			//Insert data function
			
			public static boolean insertdata (String Aname, String Aemail, String Aphon, String Apassword){
				boolean isSuccess = false;
				try {
					//DB CONNECTION CALL
					con = RegDBconnection.getConnection();
					stmt = con.createStatement();
					
					//SQL QUERY
					String sql = "INSERT INTO adminreg (Aname, Aemail, Aphon, Apassword) VALUES('"+Aname+"','"+Aemail+"','"+Aphon+"','"+Apassword+"')";
					int rs = stmt.executeUpdate(sql);
					
					if(rs > 0) {
						isSuccess = true;
					}
					else {
						isSuccess = false;
					}
				}catch(Exception e) {
					e.printStackTrace();
				}
				return isSuccess;
			}	
			
			//Login Validate
			public static List<RegModel> loginValidate (String Aemail, String Apassword){
				ArrayList<RegModel> login = new ArrayList<>();
				
				try {
					//DB CONNECTION CALL
					con = RegDBconnection.getConnection();
					stmt = con.createStatement();
					
					//SQL QUERY
					String sql = "select * from adminreg where "+" Aemail= '"+Aemail+"' and  Apassword='"+Apassword+"' ";
					
					rs = stmt.executeQuery(sql);
					
					if(rs.next()) {
						int id = rs.getInt(1);
						String Aname = rs.getString(2);
						String email = rs.getString(3);
						String Aphon = rs.getString(4);
						String password = rs.getString(5);
						
						RegModel rm = new RegModel(id,Aname,email,Aphon,password);
						login.add(rm);
					}
					
				}catch(Exception e) {
					e.printStackTrace();
				}
				return login;
				
			}
			
}
