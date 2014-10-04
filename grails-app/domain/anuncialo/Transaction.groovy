package anuncialo

class Transaction {
	
	private Long transactionId;
	private User buyer;
	private User seller;
	private Announcement announcement;
	private String comment;
	private float ratingBuyer;
	private float ratingSeller;
	private Date transactionDate;
	
    def constraints = {
		transactionId(unique:true)
    }

	public Long getTransactionId() {
		return transactionId;
	}

	public void setTransactionId(Long transactionId) {
		this.transactionId = transactionId;
	}

	public User getBuyer() {
		return buyer;
	}

	public void setBuyer(User buyer) {
		this.buyer = buyer;
	}

	public User getSeller() {
		return seller;
	}

	public void setSeller(User seller) {
		this.seller = seller;
	}

	public Announcement getAnnouncement() {
		return announcement;
	}

	public void setAnnouncement(Announcement announcement) {
		this.announcement = announcement;
	}

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	public float getRatingBuyer() {
		return ratingBuyer;
	}

	public void setRatingBuyer(float ratingBuyer) {
		this.ratingBuyer = ratingBuyer;
	}

	public float getRatingSeller() {
		return ratingSeller;
	}

	public void setRatingSeller(float ratingSeller) {
		this.ratingSeller = ratingSeller;
	}

	public Date getTransactionDate() {
		return transactionDate;
	}

	public void setTransactionDate(Date transactionDate) {
		this.transactionDate = transactionDate;
	}	
	
}
