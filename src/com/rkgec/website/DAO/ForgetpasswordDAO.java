package com.rkgec.website.DAO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.rkgec.website.DAO.CommonDAO;
import com.rkgec.website.DTO.LoginDTO;
public class ForgetpasswordDAO {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		boolean isFound = false;

		public boolean isPasswordUpadted(LoginDTO loginDTO) throws SQLException, ClassNotFoundException {
			boolean isUpdated = false;
			try {
				con = CommonDAO.getConnection();
				if (con != null) {
					System.out.println("con. created..");
				} else {
					System.out.println("no con. created");
				}
				pstmt = con.prepareStatement("update login_mst set password=? where userid=?;");
				pstmt.setString(1, loginDTO.getConfirmedpassword());
				pstmt.setString(2, loginDTO.getUserid());
				int recordEffected = pstmt.executeUpdate();
				if (recordEffected > 0) {
					isUpdated = true;
					return isUpdated;
				} else {

					return isUpdated;
				}

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


