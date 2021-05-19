package donation;

public class Donation {
	private String MPid;
	private String Oid;
	private int use_point;
	private String inform;
	private int documentID;
	
	public String getMPid() {
		return MPid;
	}
	public void setMPid(String mPid) {
		MPid = mPid;
	}
	public String getOid() {
		return Oid;
	}
	public void setOid(String oid) {
		Oid = oid;
	}
	public int getUse_point() {
		return use_point;
	}
	public void setUse_point(int use_point) {
		this.use_point = use_point;
	}
	public String getInform() {
		return inform;
	}
	public void setInform(String inform) {
		this.inform = inform;
	}
	public int getDocumentID() {
		return documentID;
	}
	public void setDocumentID(int documentID) {
		this.documentID = documentID;
	}
}
