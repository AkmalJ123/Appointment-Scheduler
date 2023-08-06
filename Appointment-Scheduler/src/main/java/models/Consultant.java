package models;

public class Consultant {
	private String username;
	private String password;
	private String email;
	private String mobile;
	
	
	public Consultant(String username, String password, String email, String mobile) {
		super();
		this.username = username;
		this.password = password;
		this.email = email;
		this.mobile = mobile;
	}
	
	public Consultant() {
		super();
	}

	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	
	

}
