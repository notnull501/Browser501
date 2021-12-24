package member.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.Date;

import jdbc.JdbcUtil;
import jdbc.connection.ConnectionProvider;
import member.model.Member;
import mvc.dao.MemberDao;

public class JoinService {

	private MemberDao memberDao = new MemberDao();

	public void join(JoinRequest joinReq) {
		Connection conn = null;
		try {
			conn = ConnectionProvider.getConnection();
			
			conn.setAutoCommit(false);//transaction 적용되는 시점
            //기존에 id가 있는지 확인 용도
			Member member = memberDao.selectById(conn, joinReq.getId());//id=abcd
			if (member != null) {
				JdbcUtil.rollback(conn);//철회
				throw new DuplicateIdException();
			}

			memberDao.insert(conn, new Member(joinReq.getId(), joinReq.getName(), joinReq.getPassword(), new Date()));
			conn.commit();//종료
		} catch (SQLException e) {
			JdbcUtil.rollback(conn);
			throw new RuntimeException();
		} finally {
			JdbcUtil.close(conn);
		}
	}
}
