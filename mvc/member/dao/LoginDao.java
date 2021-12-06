package yuhan.mvc.member.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import yuhan.mvc.member.dto.LoginDto;

public class LoginDao {

	private Connection con;
	private PreparedStatement ps;
	private ResultSet rs;
	
	 String url = "jdbc:oracle:thin:@localhost:1521:oracle";
     String did = "c##spring";
     String pw = "1234";
	private static DataSource dataSource;
	
	public LoginDao() {
		try {
			Context context = new InitialContext();
			
			//dataSource = (DataSource) context.lookup("java:comp/env/jdbc/oracle");
			//dataSource = (DataSource) context.lookup("java:comp/env/recipe");
		} catch(Exception e) {
			e.printStackTrace();
		}
	
	
     try {
   	 Class.forName("oracle.jdbc.driver.OracleDriver");
         
     
	} catch (Exception e) {
		e.printStackTrace();
	}

	}
	
	public boolean insert(LoginDto dto) {
		
		boolean check = false;
		
		String sql = "insert into yuhan_member values(?,?,?,?,?,?,?)";
		
		try {
			con = DriverManager.getConnection(url, did, pw);
			//con = dataSource.getConnection();
			ps = con.prepareStatement(sql);
			ps.setString(1, dto.getId());
			ps.setString(2, dto.getPassword());
			ps.setString(3, dto.getName());
			ps.setString(4, dto.getEmail());
			ps.setString(5, dto.getTel1());
			ps.setString(6, dto.getTel2());
			ps.setString(7, dto.getTel3());
			if(ps.executeUpdate() != 0) {
				check = true;
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				if(ps != null) ps.close();
				if(con != null) con.close();
			}catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		return check;
	}

	public String checkLogin(String id,String password) {
		
		String name = null;
		
		String sql = "select name from yuhan_member where id = ? and password = ?";
		
		try {
			con = DriverManager.getConnection(url, did, pw);
			//con = dataSource.getConnection();
			ps = con.prepareStatement(sql);
			ps.setString(1, id);
			ps.setString(2, password);
			rs = ps.executeQuery();
			if(rs.next()) {
				name = rs.getString("name");
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs != null) rs.close();
				if(ps != null) ps.close();
				if(con != null) con.close();
			}catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		return name;
	}
	
	public LoginDto memberInfo(String id) {
		
		LoginDto dto = null;
		
		String sql = "select * from yuhan_member where id = ?";
		
		try {
			con = DriverManager.getConnection(url, did, pw);
			//con = dataSource.getConnection();
			ps = con.prepareStatement(sql);
			ps.setString(1, id);
			rs = ps.executeQuery();
			if(rs.next()) {
				dto = new LoginDto(rs.getString("id"),rs.getString("password"),
						rs.getString("name"),rs.getString("email"),rs.getString("tel1"),
						rs.getString("tel2"),rs.getString("tel3"));
			}
				
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs != null) rs.close();
				if(ps != null) ps.close();
				if(con != null) con.close();
			}catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		return dto;
		
	}
	
	public String findID(LoginDto dto) {
		String id = null;
		String sql = "select id from yuhan_member where name = ? and tel1 = ? and tel2 = ? and tel3 = ?";
		
		try {
			con = DriverManager.getConnection(url, did, pw);
			//con = dataSource.getConnection();
			ps = con.prepareStatement(sql);
			ps.setString(1, dto.getName());
			ps.setString(2, dto.getTel1());
			ps.setString(3, dto.getTel2());
			ps.setString(4, dto.getTel3());
			rs = ps.executeQuery();
			if(rs.next()) {
				id = rs.getString("id");
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs != null) rs.close();
				if(ps != null) ps.close();
				if(con != null) con.close();
			}catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		return id;
	}
	
	public boolean updateMember(LoginDto dto) {
		String sql = "update yuhan_member set email = ?,tel1 = ?,tel2 = ?,tel3 = ? where id = ?";
		boolean check = false;
		
		try {
			con = DriverManager.getConnection(url, did, pw);
			//con = dataSource.getConnection();
			ps = con.prepareStatement(sql);
			ps.setString(1, dto.getEmail());
			ps.setString(2, dto.getTel1());
			ps.setString(3, dto.getTel2());
			ps.setString(4, dto.getTel3());
			ps.setString(5, dto.getId());
			if(ps.executeUpdate() != 0) {
				check = true;
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				if(ps != null) ps.close();
				if(con != null) con.close();
			}catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		return check;
	}
	
	public boolean deleteMember(String id) {
		String sql = "delete yuhan_member where id = ?";
		boolean check = false;
		
		try {
			con = DriverManager.getConnection(url, did, pw);
			//con = dataSource.getConnection();
			ps = con.prepareStatement(sql);
			ps.setString(1, id);
			if(ps.executeUpdate() != 0) {
				check = true;
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				if(ps != null) ps.close();
				if(con != null) con.close();
			}catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		return check;
		
	}
	
	
	
}
