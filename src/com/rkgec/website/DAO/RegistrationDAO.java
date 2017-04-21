package com.rkgec.website.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.rkgec.website.DTO.RegistrationDTO;

public class RegistrationDAO {
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	boolean isFound = false;

	public boolean isRegistered(RegistrationDTO registrationDTO) throws SQLException, ClassNotFoundException {
		boolean isUpdated = false;
		try {
			con = CommonDAO.getConnection();
			if (con != null) {
				System.out.println("con. created..");
			} else {
				System.out.println("no con. created");
			}
			pstmt = con.prepareStatement("insert into registration_mst VALUES (?,?,?,?,?,?,?,?,?,?,?);");
			
			pstmt.setString(1, registrationDTO.getName());
			pstmt.setString(2, registrationDTO.getRoll());
			pstmt.setString(3, registrationDTO.getBranch());
			pstmt.setInt(4, registrationDTO.getYear());
			pstmt.setDouble(5, registrationDTO.getPercentage_10());
			pstmt.setDouble(6, registrationDTO.getPercentage_12());
			pstmt.setDouble(7, registrationDTO.getPercentage_btech());
			pstmt.setInt(8, registrationDTO.getBacks());
			pstmt.setString(9, registrationDTO.getEmail());
			pstmt.setString(10, registrationDTO.getPhone());
			pstmt.setString(11, registrationDTO.getQuiery());
			int recordEffected = pstmt.executeUpdate();
			if (recordEffected > 0) {
				isUpdated = true;
				return isUpdated;
			} else {

				return isUpdated;
			}

		} finally {
			
			if (pstmt != null) {
				pstmt.close();
			}
			if (con != null) {
				con.close();
			}
		}
	}

}
