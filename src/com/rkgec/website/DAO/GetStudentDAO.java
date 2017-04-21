package com.rkgec.website.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.rkgec.website.DTO.GetStudentDTO;

public class GetStudentDAO {
	private ArrayList<String>list=new ArrayList<>();
	public ArrayList<String> getList() {
		return list;
	}

	public void setList(ArrayList<String> list) {
		this.list = list;
	}

	String rollNo=null;
	String nameofstudent=null;
	String branch_student=null;
	String year_student=null;
	String backlog_student=null;
	
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	boolean isFound = false;

	public boolean isfound(GetStudentDTO getStudentDTO ) throws SQLException, ClassNotFoundException {
		boolean isFound = false;
		try {
			con = CommonDAO.getConnection();
			if (con != null) {
				System.out.println("con. created..");
			} else {
				System.out.println("no con. created");
			}
			pstmt = con.prepareStatement("select rollno,name,branch,year,backlog from attendence where rollno=?;");
			pstmt.setLong(1, getStudentDTO.getRoll());
			ResultSet rs= pstmt.executeQuery();
			while(rs.next()){
				isFound = true;
				rollNo=rs.getString("rollno");
				 nameofstudent=rs.getString("name");
				branch_student=rs.getString("branch");
				year_student=rs.getString("year");
			    backlog_student=rs.getString("backlog");
			    ArrayList<String>list=new ArrayList<>();
			    list.add(rollNo);
			    list.add(nameofstudent);
			    list.add(branch_student);
			    list.add(year_student);
			    list.add(backlog_student);
			    GetStudentDAO getStudentDAO=new GetStudentDAO();
			    
			    getStudentDAO.setList(this.list);
			    System.out.println(list);
				System.out.println("Roll no :: "+rollNo);
				System.out.println("Name now ::"+nameofstudent);
				System.out.println("Branch  ::"+branch_student);
				System.out.println("Current Year :: "+year_student);
				System.out.println("BackLog ::"+backlog_student);
				
			}
			return isFound;

		} finally {
			if (rs != null) {
				rs.close();
			}
			if (pstmt != null) {
				pstmt.close();
			}
			if (con != null) {
				con.close();
			}
		}
	}
}
