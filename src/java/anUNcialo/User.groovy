package anUNcialo

class User {
	private Long id;
	private String email;
	private String username;
	private String password;

	String toString(){
		return "$email"
	}
	
	def constraints = {
		email(blank:false, email:true, unique:true)
		password(blank:false, password:true)
		username(blank:false, unique:true)
	}
	
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}
}