package petsitterDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import DButil.DBmanager;
import petsitterDTO.memberDTO;

public class memberDAO {
	private memberDAO() {
		
	}
	private static memberDAO instance=new memberDAO();
	
	public static memberDAO getInstance() {
		return instance;
	}
	
	public void insertMember(memberDTO mDTO) {
		String sql="insert into member0(id,pw,name,area,pnum) values(?,?,?,?,?))";
		Connection conn=null;
		PreparedStatement pstmt=null;
		try {
			conn=DBmanager.getConnection();
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1,mDTO.getId() );
			pstmt.setString(2, mDTO.getPw());
			pstmt.setString(3, mDTO.getName());
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBmanager.close(conn,pstmt);
		}
	}
	public memberDTO getOne(String id) {
		memberDTO getUser=new memberDTO();
		String sql="select * from member0 where id=?";
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs = null;
		try {
			conn=DBmanager.getConnection();
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				getUser.setId(rs.getString("id"));
				getUser.setPw(rs.getString("pw"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBmanager.close(conn, pstmt,rs);
		}
		return getUser;
		
	}
}
