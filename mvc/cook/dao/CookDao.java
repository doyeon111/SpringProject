package yuhan.mvc.cook.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;

import yuhan.mvc.board.dto.BoardDto;
import yuhan.mvc.cook.dto.CookDto;
import yuhan.mvc.cook_image_test.dto.CookImageTestDto;
import yuhan.mvc.cook_ingredient.dto.CookIngredientDto;
import yuhan.mvc.cook_step.dto.CookStepDto;
import yuhan.mvc.ingredient.dto.IngredientDto;

public class CookDao {

	
	private Connection con;
	
	String url = "jdbc:oracle:thin:@localhost:1521:oracle";
    String did = "c##spring";
    String pw = "1234";
    
    public CookDao() {
    	try {
		   	 Class.forName("oracle.jdbc.driver.OracleDriver");
		         
		     
			} catch (Exception e) {
				e.printStackTrace();
			}
    }
    
    public ArrayList<CookDto> CookList(int begin, int end) {
    	ArrayList<CookDto> dtos = new ArrayList<CookDto>();
    	Connection con = null;
    	PreparedStatement preparedStatement = null;
    	ResultSet resultSet = null;
    	
    	try {
			//connection = dataSource.getConnection();
			con = DriverManager.getConnection(url, did, pw);
			//String query = "select no, name, writer, love, c_date from cook order by no desc";
			String query = 
					"select rn, no, name, writer, love, c_date " +
					"  from (select " +
					"  Rownum as rn, no, name, writer, love, c_date " +
					"  from(    " +
					"  select no, name, writer, love, c_date  " +
					"  from cook " +
					"   )" +
					"   )" +
					"where RN >=? and RN <=?";
			preparedStatement = con.prepareStatement(query);
			preparedStatement.setInt(1, begin);
			preparedStatement.setInt(2, end);
			resultSet = preparedStatement.executeQuery();
			
			while(resultSet.next()) {
				int no = resultSet.getInt("no");
				String name = resultSet.getString("name");
				String writer = resultSet.getString("writer");
				int love = resultSet.getInt("love");
				Timestamp c_date = resultSet.getTimestamp("c_date");
			
				CookDto dto = new CookDto(no, name, writer, love, c_date);
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
    
    public int getTotal() {
        int cnt = 0;
       
        String sql = "Select count(*) cnt from cook";
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
    
    
    
	/*
	 * public CookStepDto CookView(String no) {
	 * 
	 * CookStepDto dto = null; Connection con = null; PreparedStatement
	 * preparedStatement = null; ResultSet resultSet = null;
	 * 
	 * try { con = DriverManager.getConnection(url, did, pw); //connection =
	 * dataSource.getConnection(); String query =
	 * "select * from cook_step where cook_no =?";
	 * 
	 * preparedStatement = con.prepareStatement(query);
	 * 
	 * preparedStatement.setInt(1, Integer.parseInt(no));
	 * 
	 * resultSet = preparedStatement.executeQuery();
	 * 
	 * if(resultSet.next()) { int cook_no = resultSet.getInt("cook_no");
	 * 
	 * // String name = resultSet.getString("name"); // String writer =
	 * resultSet.getString("writer"); // int love = resultSet.getInt("love"); //
	 * Timestamp c_date = resultSet.getTimestamp("c_date"); int no1 =
	 * resultSet.getInt("no"); String description =
	 * resultSet.getString("description");
	 * 
	 * dto = new CookStepDto(cook_no,no1,description);
	 * 
	 * } }catch(Exception e) { e.printStackTrace(); }finally { try { if(resultSet !=
	 * null) resultSet.close(); if(preparedStatement != null)
	 * preparedStatement.close(); if(con != null) con.close(); }catch (Exception e2)
	 * { e2.printStackTrace(); } }
	 * 
	 * return dto; }
	 */

	

	public ArrayList<CookStepDto> CookStepList(String no) {
		ArrayList<CookStepDto>dtos = new ArrayList<CookStepDto>();
		Connection con = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		
		ArrayList<CookDto> dtos2 = new ArrayList<CookDto>();
    	Connection con2 = null;
    	PreparedStatement preparedStatement2 = null;
    	ResultSet resultSet2 = null;
    	
    	ArrayList<CookImageTestDto> dtos3 = new ArrayList<CookImageTestDto>();
    	Connection con3 = null;
    	PreparedStatement preparedStatement3 = null;
    	ResultSet resultSet3 = null;
		
		try {
			
			con = DriverManager.getConnection(url, did, pw);
			String query = "select * from cook_step where cook_no =?";
			
			preparedStatement = con.prepareStatement(query);
			preparedStatement.setInt(1, Integer.parseInt(no));
			resultSet = preparedStatement.executeQuery();
			
			
			con3 = DriverManager.getConnection(url, did, pw);
			String query3 = "select * from cook_image_test where cook_no =?";
			
			preparedStatement3 = con3.prepareStatement(query3);
			preparedStatement3.setInt(1, Integer.parseInt(no));
			resultSet3 = preparedStatement3.executeQuery();
			
			
			con2 = DriverManager.getConnection(url, did, pw);
			String query2 = "select name from cook where no =?";		
			preparedStatement2 = con2.prepareStatement(query2);
			preparedStatement2.setInt(1, Integer.parseInt(no));
			resultSet2 = preparedStatement2.executeQuery();
			String name = "";
			String image ="";
			if(resultSet2.next()) {
				name = resultSet2.getString("name");
			}
	
			while(resultSet.next()) {
				if(resultSet3.next()) {
					image = resultSet3.getString("image");
				}
				int cook_no = resultSet.getInt("cook_no");
				int no1 = resultSet.getInt("no");
				String description = resultSet.getString("description");
				CookStepDto dto = new CookStepDto(cook_no,no1,description,name,image);
				
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
   
    
	public ArrayList<CookDto> CookSearchList(String no) {
		IngredientDto dto = null;
		Connection con = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		
		ArrayList<CookDto>dtos = new ArrayList<CookDto>();
		Connection con1 = null;
		PreparedStatement preparedStatement1 = null;
		ResultSet resultSet1 = null;
		
		IngredientDto dto2 = null;
		Connection con2 = null;
		PreparedStatement preparedStatement2 = null;
		ResultSet resultSet2 = null;
		
		try {
			//connection = dataSource.getConnection();
			con = DriverManager.getConnection(url, did, pw);
			String query = "select no from ingredient where name = ?";
			preparedStatement = con.prepareStatement(query);
			preparedStatement.setString(1, no);
			//preparedStatement.setInt(1, Integer.parseInt(no));
			resultSet = preparedStatement.executeQuery();
			
			if(resultSet.next()) {
				String cook_no = resultSet.getString("no");
				con1 = DriverManager.getConnection(url, did, pw);
				String query1 = "select cook_no from cook_ingredient where ingredient_no = ?";
				preparedStatement1 = con1.prepareStatement(query1);
				preparedStatement1.setInt(1, Integer.parseInt(cook_no));
				resultSet1 = preparedStatement1.executeQuery();
				
			while(resultSet1.next()) {
				String cook_no1 = resultSet1.getString("cook_no");
				con2 = DriverManager.getConnection(url, did, pw);
				String query2 = "select * from cook where no =?";																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																									
				preparedStatement2 = con2.prepareStatement(query2);
				preparedStatement2.setInt(1, Integer.parseInt(cook_no1));
				resultSet2 = preparedStatement2.executeQuery();
				
				if(resultSet2.next()) {
					int no1 = resultSet2.getInt("no");
					String name = resultSet2.getString("name");
					String writer = resultSet2.getString("writer");
					int love = resultSet2.getInt("love");
					Timestamp c_date = resultSet2.getTimestamp("c_date");
				
					CookDto dto1 = new CookDto(no1, name, writer, love, c_date);
				
				dtos.add(dto1);
				}
			}
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
	
	
	
    
	public ArrayList<CookImageTestDto> CookImageTestList() {
		ArrayList<CookImageTestDto>dtos = new ArrayList<CookImageTestDto>();
		Connection con = null;
    	PreparedStatement preparedStatement = null;
    	ResultSet resultSet = null;
		
		try {
			con = DriverManager.getConnection(url, did, pw);
			String query = "select * from cook_image_test";
			
			preparedStatement = con.prepareStatement(query);
			resultSet = preparedStatement.executeQuery();
			
			while(resultSet.next()) {
				int cook_no = resultSet.getInt("cook_no");
				int no = resultSet.getInt("no");
				String image = resultSet.getString("image");
			
			
				CookImageTestDto dto = new CookImageTestDto(cook_no, no, image);
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
    
    
    
}
