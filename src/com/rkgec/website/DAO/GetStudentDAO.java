package com.rkgec.website.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.http.HttpSession;
import org.apache.struts2.ServletActionContext;
import com.rkgec.website.DTO.GetStudentDTO;

public class GetStudentDAO {

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
			pstmt.setString(1, getStudentDTO.getRoll());
			ResultSet rs= pstmt.executeQuery();
			while(rs.next()){
				isFound = true;
				
			    
			    HttpSession session = ServletActionContext.getRequest().getSession();
                session.setAttribute("sRoll",rs.getString("rollno"));
                session.setAttribute("snameofstudent",rs.getString("name"));
                session.setAttribute("sbranch_student",rs.getString("branch"));
                session.setAttribute("syear_student",rs.getString("year"));
                session.setAttribute("sbacklog_student",rs.getString("backlog"));
                
			 
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
