package document;

public class Document {
	private int documentID;
	private String Oid;
	private String documentURL;
	private String documentStatement;
	
	public String getDocumentStatement() {
		return documentStatement;
	}
	public void setDocumentStatement(String documentStatement) {
		this.documentStatement = documentStatement;
	}
	public int getDocumentID() {
		return documentID;
	}
	public void setDocumentID(int documentID) {
		this.documentID = documentID;
	}
	public String getOid() {
		return Oid;
	}
	public void setOid(String oid) {
		Oid = oid;
	}
	public String getDocumentURL() {
		return documentURL;
	}
	public void setDocumentURL(String documentURL) {
		this.documentURL = documentURL;
	}
	
}