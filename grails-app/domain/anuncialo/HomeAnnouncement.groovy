package anuncialo

class HomeAnnouncement extends Announcement {

	private Long id;
	private String location;
	private String type;
	private float area;
	private float price;
	private String description;
	private boolean isForRent;
	private boolean isForSale;
	
	def constraints = {
		id(unique:true)
    }

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public float getArea() {
		return area;
	}

	public void setArea(float area) {
		this.area = area;
	}

	public float getPrice() {
		return price;
	}

	public void setPrice(float price) {
		this.price = price;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public boolean isForRent() {
		return isForRent;
	}

	public void setForRent(boolean isForRent) {
		this.isForRent = isForRent;
	}

	public boolean isForSale() {
		return isForSale;
	}

	public void setForSale(boolean isForSale) {
		this.isForSale = isForSale;
	}	
	
}
