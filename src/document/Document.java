package document;

public class Document {
	private int documentID;
	private String Oid;
	private String productName;
	private String documentStatement;
	
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
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getDocumentStatement() {
		return documentStatement;
	}
	public void setDocumentStatement(String documentStatement) {
		this.documentStatement = documentStatement;
	}
	
}