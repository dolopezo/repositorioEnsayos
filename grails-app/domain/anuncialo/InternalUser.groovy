package anuncialo

class InternalUser extends User {
	
	private Long id
	private String role;
	private float buyerRank;
	private float sellerRank;

    static constraints = {
		id(unique:true)
		buyerRank(range:0..5, scale:1)
		sellerRank(range:0..5, scale:1)
    }

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public float getBuyerRank() {
		return buyerRank;
	}

	public void setBuyerRank(float buyerRank) {
		this.buyerRank = buyerRank;
	}

	public float getSellerRank() {
		return sellerRank;
	}

	public void setSellerRank(float sellerRank) {
		this.sellerRank = sellerRank;
	}	
	
	private Announcement createSaleAnnouncement(){
		throw UnsupportedOperationException;
	}
	
	private Announcement createBooksAnnouncement(){
		throw UnsupportedOperationException;
	}
	
	private Announcement createServiceAnnouncement(){
		throw UnsupportedOperationException;
	}
	
	private Announcement createHomeAnnouncement(){
		throw UnsupportedOperationException;
	}
	
	private Announcement createJobAnnouncement(){
		throw UnsupportedOperationException;
	}
	
	private Announcement closeAnnouncement(){
		throw UnsupportedOperationException;
	}
	
	private void searchAnnouncement(){
		throw UnsupportedOperationException;
	}
	
	private void buyAnnouncement(){
		throw UnsupportedOperationException;
	}
	
	private void comment(){
		throw UnsupportedOperationException;
	}
	
	private void rateUser(){
		throw UnsupportedOperationException;
	}
	
}
