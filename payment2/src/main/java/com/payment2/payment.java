package com.payment2;

public class payment {
	private int pid;
	private String fullname;
	private String email;
	private String address;
	private String cardname ;
	private String cardnumber;
	
	public payment(int pid, String fullname, String email, String address, String cardname, String cardnumber) {
		
		this.pid = pid;
		this.fullname = fullname;
		this.email = email;
		this.address = address;
		this.cardname = cardname;
		this.cardnumber = cardnumber;
	}

	public int getPid() {
		return pid;
	}

	public String getFullname() {
		return fullname;
	}

	public String getEmail() {
		return email;
	}

	public String getAddress() {
		return address;
	}

	public String getCardname() {
		return cardname;
	}

	public String getCardnumber() {
		return cardnumber;
	}
	
	
	
	

}
