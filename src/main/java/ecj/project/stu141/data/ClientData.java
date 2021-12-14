package ecj.project.stu141.data;

public class ClientData {
	
	String Emailid;
	String Password;
	String Name;
	String id;
	public ClientData(String emailid, String password, String name, String id) {
		super();
		Emailid = emailid;
		Password = password;
		Name = name;
		this.id = id;
	}
	public String getEmailid() {
		return Emailid;
	}
	public void setEmailid(String emailid) {
		Emailid = emailid;
	}
	public String getPassword() {
		return Password;
	}
	public void setPassword(String password) {
		Password = password;
	}
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	
	

}
