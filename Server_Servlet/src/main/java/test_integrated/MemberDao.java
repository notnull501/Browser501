package test_integrated;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;


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
	
	public int LoginCheck(String id, String password) {

		int result = 3;
		String sql= "select password from member2 where id=?";
		try {
			PreparedStatement pstmt = getConnection().prepareStatement(sql);
			pstmt.setString(1,id);

			ResultSet rs = pstmt.executeQuery();			
			if(rs.next()) {				

				if(rs.getString("password").equals(password)) {	
					//DB의 password와 입력받은 password가 동일하다면
					System.out.println("로그인 성공");	//콘솔 표시
					result = 1;
				} else {
					System.out.println("패스워드 불일치");
					result = 0;
				}			
			} else {
				System.out.println("데이터 존재하지 않음");
				result = -1;
			}
		} catch (SQLException e) {
			System.out.println("오류 발생");
			e.printStackTrace();
			result = 2;
		}
		return result;
	}
	public ArrayList<Member> select(String id)	  
	    {
	        // 리스트 생성
		  	ArrayList<Member> list = new ArrayList<Member>();			
			PreparedStatement pstmt = null;
			ResultSet rs = null;
	        // 데이터베이스에서 유저 목록을 가져온다.
			try {
				String sql = "select * from member2 where id=?";		 
				pstmt= getConnection().prepareStatement(sql);
				pstmt.setString(1,id);//id와 일치하는 행 가져오기(main.do용)
				rs = pstmt.executeQuery();
				while(rs.next()) {
					Member member = new Member();
					// 디폴트 생성자이므로 setter를 이용해 저장
					member.setId(rs.getString("id"));
					member.setPassword(rs.getString("password"));
					member.setName(rs.getString("name"));
					member.setAddress(rs.getString("address"));
					member.setTel(rs.getString("tel"));
					member.setReg_date(rs.getDate("reg_date"));

					list.add(member);	
					}

			} catch (SQLException e) {
				e.printStackTrace();
			}finally {
				try {
					pstmt.close();
				} catch (SQLException e) {				
					e.printStackTrace();
				}
				
			}
	        return list;
	    }

}
