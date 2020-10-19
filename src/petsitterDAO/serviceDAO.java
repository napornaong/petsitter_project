package petsitterDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import DButil.DBmanager;
import petsitterDTO.serviceDTO;

public class serviceDAO {

	private serviceDAO() {

	}

	private static serviceDAO instance = new serviceDAO();

	public static serviceDAO getInstance() {
		return instance;

	}

	public void insertservice(serviceDTO sDTO) {
		String sql = "insert into service(no,id,name,pnum,stime,servicewhat,com,sdate,area,readcount) values(service_no.nextval,?,?,?,?,?,?,?,?,?)";
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBmanager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, sDTO.getId());
			pstmt.setString(2, sDTO.getName());
			pstmt.setString(3, sDTO.getPnum());
			pstmt.setString(4, sDTO.getSdate());
			pstmt.setString(5, sDTO.getStime());
			pstmt.setString(6, sDTO.getServicewhar());
			pstmt.setString(7, sDTO.getCom());
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBmanager.close(conn, pstmt);
		}
	}

	public List<serviceDTO> selectAllservice() {
		String sql = "select * from service";
		List<serviceDTO> serviceList = new ArrayList<serviceDTO>();
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		try {
			conn = DBmanager.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			while (rs.next()) {
				serviceDTO sDTO = new serviceDTO();
				sDTO.setNo(rs.getInt("no"));
				sDTO.setId(rs.getString("id"));
				sDTO.setName(rs.getString("name"));
				sDTO.setPnum(rs.getString("pnum"));
				sDTO.setSdate(rs.getString("sdate"));
				sDTO.setStime(rs.getString("stime"));
				sDTO.setServicewhar(rs.getString("servicewhat"));
				sDTO.setCom(rs.getString("com"));
				sDTO.setArea(rs.getString("area"));
				sDTO.setMatching(rs.getString("matching"));
				
				
				serviceList.add(sDTO);

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBmanager.close(conn, stmt, rs);
		}
		return serviceList;

	}
}
