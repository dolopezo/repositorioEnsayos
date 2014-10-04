package anuncialo

abstract class User {
	private Long id;
	private String email;
	private String username;
	private String password;
	private String name;
	private String publishedAnnouncements;

	String toString(){
		return "$username";
	}
	
	def constraints = {
		id(unique:true)
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
	
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPublishedAnnouncements() {
		return publishedAnnouncements;
	}

	public void setPublishedAnnouncements(String publishedAnnouncements) {
		this.publishedAnnouncements = publishedAnnouncements;
	}

	
}