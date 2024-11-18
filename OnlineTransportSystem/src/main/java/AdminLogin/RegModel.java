package AdminLogin;

public class RegModel {
	private  int id;
	private  String Aname;
	private  String Aemail;
	private  String Aphon;
	private  String Apassword;
	
	public RegModel(int id, String aname, String aemail, String aphon, String apassword) {
		super();
		this.id = id;
		Aname = aname;
		Aemail = aemail;
		Aphon = aphon;
		Apassword = apassword;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getAname() {
		return Aname;
	}
	public void setAname(String aname) {
		Aname = aname;
	}
	public String getAemail() {
		return Aemail;
	}
	public void setAemail(String aemail) {
		Aemail = aemail;
	}
	public String getAphon() {
		return Aphon;
	}
	public void setAphon(String aphon) {
		Aphon = aphon;
	}
	public String getApassword() {
		return Apassword;
	}
	public void setApassword(String apassword) {
		Apassword = apassword;
	}
	
}
