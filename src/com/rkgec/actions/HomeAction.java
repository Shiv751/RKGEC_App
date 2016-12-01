package com.rkgec.actions;

import java.sql.SQLException;

import com.opensymphony.xwork2.Action;
import com.rkgec.website.DAO.LoginDAO;
import com.rkgec.website.DTO.LoginDTO;

public class HomeAction implements Action {
	private LoginDAO loginDAO = new LoginDAO();
	private	LoginDTO loginDTO = new LoginDTO();
	
	private String userid;
	private String password;
	
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
	@Override
	public String execute() throws Exception {
		return null;
		
	}
	public String checkLogin() throws ClassNotFoundException, SQLException{
		 // String uid=this.getUserid();
		 // String pwd=	this.getPassword();
		  loginDTO.setUserid(this.getUserid());
		  loginDTO.setPassword(this.getPassword());
			boolean yesExist=loginDAO.isUserExist(loginDTO);
				if(yesExist)
				{
					
					return SUCCESS;
				}
				else
				{
					return ERROR;
				}
		
		}


}
