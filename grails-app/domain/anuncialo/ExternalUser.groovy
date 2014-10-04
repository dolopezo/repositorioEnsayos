package anuncialo

class ExternalUser extends User {

	private Long id
	private boolean isEmployer;
	private boolean isLessor;
	private float rank;
	
    def constraints = {
		id(unique:true)
		rank(range:0..5, scale:1)
    }

	public boolean isEmployer() {
		return isEmployer;
	}

	public void setEmployer(boolean isEmployer) {
		this.isEmployer = isEmployer;
	}

	public boolean isLessor() {
		return isLessor;
	}

	public void setLessor(boolean isLessor) {
		this.isLessor = isLessor;
	}

	public float getRank() {
		return rank;
	}

	public void setRank(float rank) {
		this.rank = rank;
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
	
	private void comment(){
		throw UnsupportedOperationException;
	}
	
	private void rateUser(){
		throw UnsupportedOperationException;
	}
	
}
