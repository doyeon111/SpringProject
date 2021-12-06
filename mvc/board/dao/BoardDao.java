package yuhan.mvc.board.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import yuhan.mvc.board.dto.BoardDto;

public class BoardDao {

	private Connection con;
	private PreparedStatement ps;
	private ResultSet rs;
	
	 String url = "jdbc:oracle:thin:@localhost:1521:oracle";
     String did = "c##spring";
     String pw = "1234";
	
	private static DataSource dataSource;
	
	
	public BoardDao() {
		try {
			Context context = new InitialContext();
			
			dataSource = (DataSource) context.lookup("java:comp/env/jdbc/oracle");
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		try {
		   	 Class.forName("oracle.jdbc.driver.OracleDriver");
		         
		     
			} catch (Exception e) {
				e.printStackTrace();
			}

	}
		
	
	
	
	public ArrayList<BoardDto> list(int begin, int end) {
		ArrayList<BoardDto>dtos = new ArrayList<BoardDto>();
		Connection con = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		
		try {
			//connection = dataSource.getConnection();
			con = DriverManager.getConnection(url, did, pw);
			//String query = "select b_no, b_name, b_subject, b_content, b_date from yuhan_board1 order by b_no desc";
			String query = 
					"select rn, b_no, b_name, b_subject, b_content, b_date " +
					"from (select " +
					"Rownum as rn, b_no, b_name, b_subject, b_content, b_date " +
					"from(    " +
					"select b_no, b_name, b_subject, b_content, b_date  " +
					"from yuhan_board1 " +
					"order by b_no desc" +
					")" +
					")" +
					"where RN >=? and RN <=? ";
			preparedStatement = con.prepareStatement(query);
			preparedStatement.setInt(1, begin);
			preparedStatement.setInt(2, end);
			
			resultSet = preparedStatement.executeQuery();
			
			while(resultSet.next()) {
				int b_no = resultSet.getInt("b_no");
				String b_name = resultSet.getString("b_name");
				String b_subject = resultSet.getString("b_subject");
				String b_content = resultSet.getString("b_content");
				Timestamp b_date = resultSet.getTimestamp("b_date");
			
				BoardDto dto = new BoardDto(b_no, b_name, b_subject, b_content,b_date);
				dtos.add(dto);
			}
			
		} catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(resultSet != null) resultSet.close();
				if(preparedStatement != null) preparedStatement.close();
				if(con != null) con.close();
				
			}catch (Exception e2) {
				e2.printStackTrace();
			}
		}
	
		return dtos;
	}
	
	public void write(String b_name, String b_subject, String b_content) {
		
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		
		try {
			con = DriverManager.getConnection(url, did, pw);
			//connection = dataSource.getConnection();
			String query="insert into yuhan_board1(b_no, b_name, b_subject, b_content ) values(board_seq.nextval,?,?,?)";

			
			preparedStatement = con.prepareStatement(query);
			
			preparedStatement.setString(1, b_name);
			preparedStatement.setString(2, b_subject);
			preparedStatement.setString(3, b_content);
			
			
			int rn = preparedStatement.executeUpdate();
		
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(preparedStatement != null) preparedStatement.close();
				if(con != null) con.close();
				
			}catch (Exception e2) {
				e2.printStackTrace();
			}
			
		}
				
		
	}


	public BoardDto contentView(String bno) {
		
		BoardDto dto = null;
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		
		try {
			con = DriverManager.getConnection(url, did, pw);
			//connection = dataSource.getConnection();
			String query = "select * from yuhan_board1 where b_no =?";
			
			preparedStatement = con.prepareStatement(query);
			
			preparedStatement.setInt(1, Integer.parseInt(bno));
			
			resultSet = preparedStatement.executeQuery();
			
			if(resultSet.next()) {
				int b_no = resultSet.getInt("b_no");
				
				String b_name = resultSet.getString("b_name");
				String b_subject = resultSet.getString("b_subject");
				String b_content = resultSet.getString("b_content");
				Timestamp b_date = resultSet.getTimestamp("b_date");
			
				dto = new BoardDto(b_no, b_name, b_subject, b_content, b_date);
				
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(resultSet != null)
					resultSet.close();
				if(preparedStatement != null)
					preparedStatement.close();
				if(con != null)
					con.close();
			}catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		
		return dto;
	}

	public void delete(String b_no) {
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		
		try {
			//connection = dataSource.getConnection();
			con = DriverManager.getConnection(url, did, pw);
			String query = "delete from yuhan_board1 where b_no = ?";
			preparedStatement = con.prepareStatement(query);
			
			preparedStatement.setInt(1, Integer.parseInt(b_no));
			
			int rn = preparedStatement.executeUpdate();
		
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(preparedStatement != null)
					preparedStatement.close();
				if(con != null)
					con.close();
			}catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		
	}

	public void modify(String b_no, String b_name, String b_subject, String b_content) {
		
		
		//Connection connection = null;
		PreparedStatement preparedStatement = null;
		
		try {
			con = DriverManager.getConnection(url, did, pw);
			//connection = dataSource.getConnection();
			String query = "update yuhan_board1 set b_name =?, b_subject=?, b_content=? where b_no=?";
			preparedStatement = con.prepareStatement(query);
			preparedStatement.setString(1, b_name);
			preparedStatement.setString(2, b_subject);
			preparedStatement.setString(3, b_content);
			preparedStatement.setInt(4, Integer.parseInt(b_no));
			
			int rn = preparedStatement.executeUpdate();
			
			
	}catch (Exception e) {
		e.printStackTrace();
	}finally {
	}try {
			if(preparedStatement != null)
				preparedStatement.close();
			if(con != null)
				con.close();
		}catch (Exception e2) {
			e2.printStackTrace();
		}
		
	}
	
	public int getTotal() {
        int cnt = 0;
       
        String sql = "Select count(*) cnt from yuhan_board1";
        Connection con = null;
        PreparedStatement preparedStatement = null;
        ResultSet rs = null;
       
        try {
           
        	con = DriverManager.getConnection(url, did, pw);
        	preparedStatement = con.prepareStatement(sql);
            rs = preparedStatement.executeQuery();
            if(rs.next()) {
                cnt = rs.getInt("cnt");
            }//if          
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
        }try {
			if(preparedStatement != null)
				preparedStatement.close();
			if(con != null)
				con.close();
		}catch (Exception e2) {
			e2.printStackTrace();
		}
        return cnt;
       
    }
}
	
	
