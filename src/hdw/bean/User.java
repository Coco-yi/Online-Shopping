package hdw.bean;

import java.util.Date;

public class User {

	private int id ;
	private String username ;
	private String password ;
	private String addr ;
	private String phone ;
	private Date rdate ;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public Date getRdate() {
		return rdate;
	}
	public void setRdate(Date l) {
		this.rdate = l;
	}

}
