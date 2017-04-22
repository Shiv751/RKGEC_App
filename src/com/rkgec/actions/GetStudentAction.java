package com.rkgec.actions;


import com.opensymphony.xwork2.Action;
import com.rkgec.website.DAO.GetStudentDAO;
import com.rkgec.website.DTO.GetStudentDTO;

public class GetStudentAction implements Action{
	private GetStudentDTO getStudentDTO=new GetStudentDTO();
	private GetStudentDAO getStudentDAO=new GetStudentDAO();
	
private String roll;


	public String getRoll() {
		return roll;
	}

	public void setRoll(String roll) {
		this.roll = roll;
	}
	

	@Override
	public String execute() throws Exception {
		getStudentDTO.setRoll(this.getRoll());
		boolean isGotInDB=getStudentDAO.isfound(getStudentDTO);
		if(isGotInDB)
			return SUCCESS;
		else
			return ERROR;
	}
}
