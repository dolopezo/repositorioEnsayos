package anuncialo

 class User {
	private Long id;
	private String email;
	private String username;
	private String password;
	private String name;
	private int publishedAnnouncements;

	String toString(){
		return "$username";
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

	public int getPublishedAnnouncements() {
		return publishedAnnouncements;
	}

	public void setPublishedAnnouncements(int publishedAnnouncements) {
		this.publishedAnnouncements = publishedAnnouncements;
	}

	
}