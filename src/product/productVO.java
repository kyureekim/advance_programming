package product;

public class productVO {
    private int productID;
    private String oid;
    private int productNumber;
    private String productName;

    public int getProductID() {
        return this.productID;
    }

    public void setProductID(int productID) {
        this.productID = productID;
    }

    public String getoid() {
        return this.oid;
    }

    public void setoid(String Oid) {
        this.oid = Oid;
    }

    public int getProductNumber() {
        return this.productNumber;
    }

    public void setProductNumber(int productNumber) {
        this.productNumber = productNumber;
    }

    public String getProductName() {
        return this.productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

}