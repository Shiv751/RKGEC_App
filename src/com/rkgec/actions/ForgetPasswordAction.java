package com.rkgec.actions;

import com.opensymphony.xwork2.Action;
import com.rkgec.website.DAO.ForgetpasswordDAO;
import com.rkgec.website.DTO.LoginDTO;

public class ForgetPasswordAction implements Action{
	private ForgetpasswordDAO forgetpasswordDAO = new ForgetpasswordDAO();
	private LoginDTO loginDTO = new LoginDTO();
	
	
	private String username;
	private String newpassword;
	private String conpassword;
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getNewpassword() {
		return newpassword;
	}
	public void setNewpassword(String newpassword) {
		this.newpassword = newpassword;
	}
	public String getConpassword() {
		return conpassword;
	}
	public void setConpassword(String conpassword) {
		this.conpassword = conpassword;
	}
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}
	public String forgetPassword() throws Exception {
		loginDTO.setConfirmedpassword(this.getConpassword());
		loginDTO.setUserid(this.getUsername());
		boolean isPasswordUpdated = forgetpasswordDAO.isPasswordUpadted(loginDTO);
		if (isPasswordUpdated) {
			System.out.println(" Your password is  successfully changed ..");
			return SUCCESS;
		} else {
			System.out.println("password not changed..There is some error updating your data...");
			return ERROR;
		}
	}
}
