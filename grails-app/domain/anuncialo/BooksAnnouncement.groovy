package anuncialo

class BooksAnnouncement extends Announcement {

	private String bookName;
	private String bookStatus;
	private String author;
	private String publisher;
	private String language;
	private boolean isForSale;
	private boolean isForExchange;
	private Date datePublication;
	private float bookPrice;
	
    def constraints = {
		id(unique:true)
    }

	public String getBookName() {
		return bookName;
	}

	public void setBookName(String bookName) {
		this.bookName = bookName;
	}

	public String getBookStatus() {
		return bookStatus;
	}

	public void setBookStatus(String bookStatus) {
		this.bookStatus = bookStatus;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getPublisher() {
		return publisher;
	}

	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}

	public String getLanguage() {
		return language;
	}

	public void setLanguage(String language) {
		this.language = language;
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

	public Date getDatePublication() {
		return datePublication;
	}

	public void setDatePublication(Date datePublication) {
		this.datePublication = datePublication;
	}

	public float getBookPrice() {
		return bookPrice;
	}

	public void setBookPrice(float bookPrice) {
		this.bookPrice = bookPrice;
	}	
}
