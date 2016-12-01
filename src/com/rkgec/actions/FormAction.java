package com.rkgec.actions;

import java.sql.SQLException;

import com.opensymphony.xwork2.Action;
import com.rkgec.website.DAO.RegistrationDAO;
import com.rkgec.website.DTO.RegistrationDTO;

public class FormAction implements Action {
	
	private RegistrationDAO registrationDAO = new RegistrationDAO();
	private RegistrationDTO registrationDTO = new RegistrationDTO();
private String name;
private String roll;
private String branch;
private int year;
private double percentage_10;
private double percentage_12;
private double percentage_btech;
private int backs;
private String email;
private String phone;
private String quiery;
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getRoll() {
	return roll;
}
public void setRoll(String roll) {
	this.roll = roll;
}
public String getBranch() {
	return branch;
}
public void setBranch(String branch) {
	this.branch = branch;
}
public int getYear() {
	return year;
}
public void setYear(int year) {
	this.year = year;
}
public double getPercentage_10() {
	return percentage_10;
}
public void setPercentage_10(double percentage_10) {
	this.percentage_10 = percentage_10;
}
public double getPercentage_12() {
	return percentage_12;
}
public void setPercentage_12(double percentage_12) {
	this.percentage_12 = percentage_12;
}
public double getPercentage_btech() {
	return percentage_btech;
}
public void setPercentage_btech(double percentage_btech) {
	this.percentage_btech = percentage_btech;
}
public int getBacks() {
	return backs;
}
public void setBacks(int backs) {
	this.backs = backs;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getPhone() {
	return phone;
}
public void setPhone(String phone) {
	this.phone = phone;
}
public String getQuiery() {
	return quiery;
}
public void setQuiery(String quiery) {
	this.quiery = quiery;
}
@Override
public String execute() throws Exception {
	return null;
 }


public String register() throws ClassNotFoundException, SQLException{
	
    registrationDTO.setName(this.getName());
	registrationDTO.setRoll(this.getRoll());
	registrationDTO.setBranch(this.getBranch());
	registrationDTO.setYear(this.getYear());
	registrationDTO.setPercentage_10(this.getPercentage_10());
	registrationDTO.setPercentage_12(this.getPercentage_12());
	registrationDTO.setPercentage_btech(this.getPercentage_btech());
	registrationDTO.setBacks(this.getBacks());
	registrationDTO.setEmail(this.getEmail());
	registrationDTO.setPhone(this.getPhone());
	registrationDTO.setQuiery(this.getQuiery());
	boolean isUpdated = registrationDAO.isRegistered(registrationDTO);
	if (isUpdated) {
		System.out.println(" Your Data is updated successfully...");
		return SUCCESS;
	} else {
		System.out.println("Your Data is not updated in Database...");
		return ERROR;
	}
} 
}

