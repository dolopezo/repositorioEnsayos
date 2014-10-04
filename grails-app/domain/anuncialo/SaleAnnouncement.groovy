package anuncialo

class SaleAnnouncement extends Announcement {

	private Long id;
	private String ietmType;
	private String itemStatus;
	private String itemDescription;
	private float itemPrice;
	private String itemWarranty;
	private boolean isForSale;
	private boolean isForExchange;
	
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

	public String getIetmType() {
		return ietmType;
	}

	public void setIetmType(String ietmType) {
		this.ietmType = ietmType;
	}

	public String getItemStatus() {
		return itemStatus;
	}

	public void setItemStatus(String itemStatus) {
		this.itemStatus = itemStatus;
	}

	public String getItemDescription() {
		return itemDescription;
	}

	public void setItemDescription(String itemDescription) {
		this.itemDescription = itemDescription;
	}

	public float getItemPrice() {
		return itemPrice;
	}

	public void setItemPrice(float itemPrice) {
		this.itemPrice = itemPrice;
	}

	public String getItemWarranty() {
		return itemWarranty;
	}

	public void setItemWarranty(String itemWarranty) {
		this.itemWarranty = itemWarranty;
	}

	public boolean isForSale() {
		return isForSale;
	}

	public void setForSale(boolean isForSale) {
		this.isForSale = isForSale;
	}

	public boolean isForExchange() {
		return isForExchange;
	}

	public void setForExchange(boolean isForExchange) {
		this.isForExchange = isForExchange;
	}	
		
}
