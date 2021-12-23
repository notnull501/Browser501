package member.dao;

import java.sql.Connection;
import java.sql.Timestamp;
import java.util.Date;

import member.model.Member;

public class MemberDao {

	public Member selectById(Connection con,String id) {
		String sql= "select * from member where memberid=?";
		
		
		return null;
		
	}
	
	private Date toDate(Timestamp date) {
		return date == null? null : new Date(date.getTime());
	}
	
	public void insert(Connection conn, Member mem) {
		String sql = "insert into member values(?,?,?,?)";
	}
}
