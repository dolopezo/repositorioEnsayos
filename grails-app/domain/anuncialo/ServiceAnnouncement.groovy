package anuncialo

class ServiceAnnouncement extends Announcement {

	private Long id;
	private String serviceType;
	private String serviceWarranty;
	private float rate;
	private String serviceDescription;
	
    static constraints = {
		id(unique:true)
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

	public String getServiceType() {
		return serviceType;
	}

	public void setServiceType(String serviceType) {
		this.serviceType = serviceType;
	}

	public String getServiceWarranty() {
		return serviceWarranty;
	}

	public void setServiceWarranty(String serviceWarranty) {
		this.serviceWarranty = serviceWarranty;
	}

	public float getRate() {
		return rate;
	}

	public void setRate(float rate) {
		this.rate = rate;
	}

	public String getServiceDescription() {
		return serviceDescription;
	}

	public void setServiceDescription(String serviceDescription) {
		this.serviceDescription = serviceDescription;
	}	
	
}
