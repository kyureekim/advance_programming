package point;

public class Point {
	private String Oid;
	private String MPid;
	private int point;
	private String pointproduct;
	public String getOid() {
		return Oid;
	}
	public void setOid(String oid) {
		Oid = oid;
	}
	public String getMPid() {
		return MPid;
	}
	public void setMPid(String mPid) {
		MPid = mPid;
	}
	public int getPoint() {
		return point;
	}
	public void setPoint(int point) {
		this.point = point;
	}
	public String getPointproduct() {
		return pointproduct;
	}
	public void setPointproduct(String pointproduct) {
		this.pointproduct = pointproduct;
	}
}
