package member.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.Date;

import jdbc.connection.ConnectionProvider;
import jdbc.connection.JdbcUtil;
import member.dao.MemberDao;
import member.model.Member;

public class JoinService {

	private MemberDao memberDao = new MemberDao();
	Connection conn = null;
	public void join(JoinRequest joinReq) {
		try {
			conn = ConnectionProvider.getConnection();
			
			conn.setAutoCommit(false);//커밋의 시작점
			Member member = memberDao.selectById(conn, joinReq.getId());
			if(member != null) {
				//중복된id인 경우
				JdbcUtil.rollback(conn);
				throw new DuplicateIdException();
			}
			Member member2 = new Member(joinReq.getId(), joinReq.getName(), joinReq.getPassword(), new Date());
			memberDao.insert(conn, member2);//insert 완료
		
			conn.commit();
			
			
		} catch (SQLException e) {
			
		}
	}
}
