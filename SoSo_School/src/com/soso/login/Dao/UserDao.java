package com.soso.login.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.soso.login.Dto.UserDto;

import common.JDBCTemplate;

public class UserDao extends JDBCTemplate{
	
	//로그인
	public UserDto login(String id,String pw) {
		Connection con = getConnection();
		PreparedStatement pstm = null;
		ResultSet rs = null;
		
		UserDto res = new UserDto();
		
		String sql = "SELECT * FROM SOSO_USER WHERE USER_ID=? AND USER_PW=?";
		
		try {
			pstm=con.prepareStatement(sql);
			pstm.setString(1, id);
			pstm.setString(2, pw);
			System.out.println("03.query 준비:" + sql);
			
			rs = pstm.executeQuery();
			System.out.println("04.query 실행 및 리턴");
			while(rs.next()) {
				res.setUser_no(rs.getInt(1));
				res.setUser_pr(rs.getString(2));
				res.setUser_name(rs.getString(3));
				res.setUser_id(rs.getString(4));
				res.setUser_pw(rs.getString(5));
				res.setUser_nn(rs.getString(6));
				res.setGrade(rs.getInt(7));
				res.setAddr(rs.getString(8));
				res.setPhone(rs.getInt(9));
				res.setEmail(rs.getString(10));
				res.setUser_point(rs.getInt(11));
				res.setSub_yn(rs.getString(12));
				res.setEnabled_yn(rs.getString(13));
				res.setUser_type(rs.getString(14));
			}
			
		} catch (SQLException e) {
			System.out.println("3/4단계 오류");
			e.printStackTrace();
		}finally {
			close(rs);
			close(pstm);
			close(con);
			System.out.println("05.db종료\n");
		}
		return res;
	}

}
