 package AdminPackage;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class AdminControle {
	
	//Connect DB
		private static boolean isSuccess;
		private static Connection con = null;
		private static Statement stmt = null;
		private static ResultSet rs = null;
		
		//Insert data function
		
		public static boolean insertdata (String username, String firstName, String lastName, String responsedDate, String adminResponse){
			boolean isSuccess = false;
			try {
				//DB CONNECTION CALL
				con = DBconnection.getConnection();
				stmt = con.createStatement();
				
				//SQL QUERY
				String sql = "INSERT INTO response(username, firstName, lastName, responsedDate, adminResponse) VALUES('"+username+"','"+firstName+"','"+lastName+"','"+responsedDate+"','"+adminResponse+"')";
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
		
		//GetById
		public static List<AdminModel> getById (String userid){
			int convertId = Integer.parseInt(userid);
			
			ArrayList <AdminModel> response = new ArrayList<>();
			
			try {
				//DBconnection
				con=DBconnection.getConnection();
				stmt=con.createStatement();
				
				//Query
				String sql = "Select * from response where userId '"+convertId+"' ";
				
				rs = stmt.executeQuery(sql);
				
				while(rs.next()) {
					int userId = rs.getInt(1);
					String username = rs.getString(2);
					String firstName = rs.getString(3);
					String lastName = rs.getString(4);
					String responsedDate = rs.getString(5);
					String adminResponse = rs.getString(6);
					
					AdminModel rp = new AdminModel(userId, username, firstName, lastName, responsedDate, adminResponse);
					response.add(rp);
					
				}
			}
			catch(Exception e) {
				e.printStackTrace();
			}
			return response;
		} 
		
		//GetAll Data
		
		public static List<AdminModel> getAllResponse (){
			ArrayList <AdminModel> responses = new ArrayList<>();
			
			try {
				//DBconnection
				con=DBconnection.getConnection();
				stmt=con.createStatement();
				
				//Query
				String sql = "Select * from response";
				
				rs = stmt.executeQuery(sql);
				
				while(rs.next()) {
					int userId = rs.getInt(1);
					String username = rs.getString(2);
					String firstName = rs.getString(3);
					String lastName = rs.getString(4);
					String responsedDate = rs.getString(5);
					String adminResponse = rs.getString(6);
					
					AdminModel rp = new AdminModel(userId, username, firstName, lastName, responsedDate, adminResponse);
					responses.add(rp);
					
				}
			}
			catch(Exception e) {
				e.printStackTrace();
			}
			return responses;
		}
		
		//Update Data
		public static boolean updateData(String userId, String username, String firstName, String lastName, String responsedDate, String adminResponse) {
			
			try {
				//DBConnection
				con=DBconnection.getConnection();
				stmt=con.createStatement();
				
				//SQL Query
				String sql = "update response set username='"+username+"',firstName='"+firstName+"',lastName='"+lastName+"',responsedDate='"+responsedDate+"',adminResponse='"+adminResponse+"' "
						+ "where userId='"+userId+"' ";
				
				int rs = stmt.executeUpdate(sql);
				
				if(rs > 0) {
					isSuccess = true;
				}
				else {
					isSuccess = false;
				}
			}
			catch(Exception e) {
				e.printStackTrace();	
			}
			return isSuccess;
		}
		//Delete Data
		public static boolean deletedata(String userId) {
			int convID = Integer.parseInt(userId);
		try {
			//DBConnection
			con=DBconnection.getConnection();
			stmt=con.createStatement();
			
			//SQL Query
			String sql = "delete from response where userId='"+convID+"' ";
			
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
		}
		catch(Exception e) {
			e.printStackTrace();	
		}
		return isSuccess;
	}

}
