package anUNcialo

import java.util.Date


class Announcement {
	
	private Long id;
	private String content;
	private String title;
	private User owner;
	private Date dateTime;
	
	def constraints = {
		content(blank:false)
		title(blank:false)
		owner(blank:false)
		dateTime(blank:false)
	}
	
	public Long getId() {
		return id;
	}


	public void setId(Long id) {
		this.id = id;
	}


	public String getContent() {
		return content;
	}


	public void setContent(String content) {
		this.content = content;
	}


	public String getTitle() {
		return title;
	}


	public void setTitle(String title) {
		this.title = title;
	}


	public User getOwner() {
		return owner;
	}


	public void setOwner(User owner) {
		this.owner = owner;
	}


	public Date getDateTime() {
		return dateTime;
	}


	public void setDateTime(Date dateTime) {
		this.dateTime = dateTime;
	}
	
}
