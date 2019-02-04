package hdw.bean;

public class CartItem {
	private int userid ;
	private int productid ;
	private String name ;
	private int normalPrice ;
	private int memberPrice ;
	private int pcount ;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getNormalPrice() {
		return normalPrice;
	}
	public void setNormalPrice(int normalPrice) {
		this.normalPrice = normalPrice;
	}
	public int getMemberPrice() {
		return memberPrice;
	}
	public void setMemberPrice(int memberPrice) {
		this.memberPrice = memberPrice;
	}
	public int getPcount() {
		return pcount;
	}
	public void setPcount(int pcount) {
		this.pcount = pcount;
	}
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public int getProductid() {
		return productid;
	}
	public void setProductid(int productid) {
		this.productid = productid;
	}
	
}
