package AdminPackage;

public class AdminModel {
	private int userId;
	private String username;
	private String firstName;
	private String lastName;
	private String responsedDate;
	private String adminResponse;
	public AdminModel(int userId, String username, String firstName, String lastName, String responsedDate,
			String adminResponse) {
		super();
		this.userId = userId;
		this.username = username;
		this.firstName = firstName;
		this.lastName = lastName;
		this.responsedDate = responsedDate;
		this.adminResponse = adminResponse;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getResponsedDate() {
		return responsedDate;
	}
	public void setResponsedDate(String responsedDate) {
		this.responsedDate = responsedDate;
	}
	public String getAdminResponse() {
		return adminResponse;
	}
	public void setAdminResponse(String adminResponse) {
		this.adminResponse = adminResponse;
	}
	
}
