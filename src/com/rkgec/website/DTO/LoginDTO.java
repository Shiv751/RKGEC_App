package com.rkgec.website.DTO;

public class LoginDTO {
	private String userid;
	private String password;
	private String Confirmedpassword;
	public LoginDTO() {
		super();
	}

	public String getConfirmedpassword() {
		return Confirmedpassword;
	}

	public void setConfirmedpassword(String confirmedpassword) {
		Confirmedpassword = confirmedpassword;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

}
