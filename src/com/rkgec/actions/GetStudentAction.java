package com.rkgec.actions;


import com.opensymphony.xwork2.Action;
import com.rkgec.website.DAO.GetStudentDAO;
import com.rkgec.website.DTO.GetStudentDTO;

public class GetStudentAction implements Action{
	
private long roll;

private GetStudentDTO getStudentDTO=new GetStudentDTO();
private GetStudentDAO getStudentDAO=new GetStudentDAO();

	public long getRoll() {
		return roll;
	}

	public void setRoll(long roll) {
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
