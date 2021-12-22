package test_serverprog;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;


public class MemberDao {
// getConnection() 메서드 분리	
	public Connection getConnection(){
		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:orcl";
		String userid = "jsp";
		String pwd = "jsp";
		Connection conn = null;
		try {
			Class.forName(driver);
		} catch (ClassNotFoundException e) {
			System.out.println("드라이버를 찾을 수 없습니다.");
			e.printStackTrace();
		}		
		try {
			conn = DriverManager.getConnection(url, userid, pwd);
		} catch (SQLException e) {
			System.out.println("접속 실패");
			e.printStackTrace();
		} 
		return conn; 
		}	


// 싱글톤으로 작성
		private static MemberDao memberDao;
		private MemberDao() {}
		
		public static MemberDao getInstance() {
			if(memberDao == null) {
				memberDao = new MemberDao();}
			return memberDao; }				

		PreparedStatement pstmt;
		
		public int insert(Member member){

			PreparedStatement pstmt = null;
				
			String sql = "insert into member1(id,password,name,reg_date) "+
						 "values(?,?,?,sysdate)";
			int result = 0;
			try {
				pstmt = getConnection().prepareStatement(sql);
				pstmt.setString(1, member.getId());
				pstmt.setString(2, member.getPassword());
				pstmt.setString(3, member.getName());			
				result = pstmt.executeUpdate();//1
			} catch (SQLException e) {
				
			}
			return result;
		}


}
