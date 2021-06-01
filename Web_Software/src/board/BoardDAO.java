package board;

import java.sql.Connection; 
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class BoardDAO {
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public BoardDAO() {
		try {
			String dbURL = "jdbc:mysql://localhost:3306/mql_db";
			String dbID = "root";
			String dbPassword = "7233";
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
		} catch (Exception e) {
			e.printStackTrace(); 
		} 
	} 
	
	public String getDate() {
		String SQL = "SELECT NOW()";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			rs = pstmt.executeQuery();
			// 실제로 실행 했을때의 결과를 가져올 수 있게 해줌
			if(rs.next()){
				//결과가 있는 경우
				return rs.getString(1);
				//현재의 날짜 반환하게 됨
				} 
		}catch (Exception e) {
			e.printStackTrace();
		} 
		return "";
		// 데이터베이스 오류
	}
	
	public int getNext() {
		String SQL = "SELECT BoardID FROM BOARD ORDER BY BoardID DESC";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			rs = pstmt.executeQuery();
			// 실제로 실행 했을때의 결과를 가져올 수 있게 해줌
			if(rs.next()){
				//결과가 있는 경우
				return rs.getInt(1)+1;
				//현재의 날짜 반환하게 됨 
			} return 1;
			//첫번째 게시물 작성시 매겨지는 번호 
		}catch (Exception e) {
			e.printStackTrace(); 
		} return -1; // 데이터베이스 오류 
	} 
	
	public int write(String boardTitle, String userID, String boardContent) {
		String SQL = "INSERT INTO BOARD VALUES(?,?,?,?,?,?,?)";
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1,getNext());
			pstmt.setString(2,boardTitle);
			pstmt.setString(3,userID);
			pstmt.setString(4,getDate());
			pstmt.setString(5,boardContent);
			pstmt.setInt(6,1);
			pstmt.setInt(7,0);
			return pstmt.executeUpdate();
		}catch (Exception e) {
			e.printStackTrace();
		} 
		return -1;
		
	}
	
	public ArrayList<Board> getList(int pageNumber){
		String SQL = "SELECT * FROM BOARD WHERE BOARDID < ? AND BOARDAvailable = 1 ORDER BY BOARDID DESC LIMIT 10";
		ArrayList<Board> list = new ArrayList<Board>();
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, getNext()-(pageNumber-1)*10);
			rs = pstmt.executeQuery();
			// 실제로 실행 했을때의 결과를 가져올 수 있게 해줌 
			while(rs.next()){
				Board board = new Board();
				board.setBoardID(rs.getInt(1));
				board.setBoardTitle(rs.getString(2));
				board.setUserID(rs.getString(3));
				board.setBoardDate(rs.getString(4));
				board.setBoardContent(rs.getString(5));
				board.setBoardAvailable(rs.getInt(6));
				board.setBoardAvailable(rs.getInt(6));
				board.setBoardAvailable(rs.getInt(7));
				list.add(board);
			} 
		}catch (Exception e) {
			e.printStackTrace();
		} return list;
	} 
	
	public boolean nextPage (int pageNumber) {
		String SQL = "SELECT * FROM BOARD WHERE BOARDID < ? AND BOARDAvailable = 1 ";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, getNext()-(pageNumber-1)*10);
			rs = pstmt.executeQuery();
			if(rs.next()){
				return true;
			}
		}catch (Exception e) {
			e.printStackTrace();
		} 
		return false; 
	} 
	
	public Board getBoard(int boardID) {
		String SQL = "SELECT * FROM BOARD WHERE boardID = ? ";
		try { PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, boardID);
			rs = pstmt.executeQuery();
			if(rs.next()){
				Board board = new Board();
				board.setBoardID(rs.getInt(1));
				board.setBoardTitle(rs.getString(2));
				board.setUserID(rs.getString(3));
				board.setBoardDate(rs.getString(4));
				board.setBoardContent(rs.getString(5));
				board.setBoardAvailable(rs.getInt(6));
				board.setBoardBad(rs.getInt(7));
				return board; 
			} 
		}catch (Exception e) {
			e.printStackTrace(); 
		} 
		return null; 
	}
	
	public int update(int boardID, String boardTitle, String boardContent) {
		String SQL = "UPDATE BOARD SET boardTitle = ?, boardContent = ? WHERE boardID = ?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, boardTitle);
			pstmt.setString(2, boardContent);
			pstmt.setInt(3, boardID);
			return pstmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace(); 
		}
		return -1; 
	}
	
	
	public int delete(int boardID) {
		String SQL = "UPDATE BOARD SET boardAvailable = 0 WHERE boardID = ?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);;
			pstmt.setInt(1, boardID);
			return pstmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace(); 
		}
		return -1; 
	}
	

	
	public int report(int boardID, int boardBad) {
		String SQL = "UPDATE BOARD SET boardBad = ? WHERE boardID = ?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);;
			pstmt.setInt(1, boardBad);
			pstmt.setInt(2, boardID);
			return pstmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace(); 
		}
		return -1; 
	}
		
		
		
	
}
		
			
		
	
		
			
	

