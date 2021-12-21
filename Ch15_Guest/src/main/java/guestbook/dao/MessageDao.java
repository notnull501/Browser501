package guestbook.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import guestbook.model.Message;
import jdbc.JdbcUtil;
//450
public class MessageDao {
	
	//Singleton
	private static MessageDao messageDao = new MessageDao();
	
	public static MessageDao getInstance() {
		return messageDao;
	}
	
	private MessageDao() {}
	
	public int insert(Connection conn, Message message) throws SQLException {
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement(
					"insert into guestbook_message " + 
					"(message_id, guest_name, password, message) values (message_id_seq.NEXTVAL,?, ?, ?)");
			pstmt.setString(1, message.getGuestName());
			pstmt.setString(2, message.getPassword());
			pstmt.setString(3, message.getMessage());
			return pstmt.executeUpdate();
		} finally {
			JdbcUtil.close(pstmt);
		}
	}

	public Message select(Connection conn, int messageId) throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement(
					"select * from guestbook_message where message_id = ?");
			pstmt.setInt(1, messageId);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				return makeMessageFromResultSet(rs);
			} else {
				return null;
			}
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
	}
//ResultSet에서데이터를 읽어와서 메시지 생성: select(), selectLIst() 에서 사용됨
	private Message makeMessageFromResultSet(ResultSet rs) throws SQLException {
		Message message = new Message();//DTO
		message.setId(rs.getInt("message_id"));
		message.setGuestName(rs.getString("guest_name"));
		message.setPassword(rs.getString("password"));
		message.setMessage(rs.getString("message"));
		return message;
	}
//guestbook_message테이블의 전체 레코드 갯수
	public int selectCount(Connection conn) throws SQLException {
		Statement stmt = null;
		ResultSet rs = null;
		try {
			stmt = conn.createStatement();
			rs = stmt.executeQuery("select count(*) from guestbook_message");
			rs.next();
			return rs.getInt(1);
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(stmt);
		}
	}
    //한 페이지의 메시지
	public List<Message> selectList(Connection conn, int firstRow, int endRow) 
			throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement(
					"select message_id, guest_name, password, message from ( "
							+ " select rownum rnum, message_id, guest_name, password, message from ( "
							+ " select * from guestbook_message m order by m.message_id desc "
							+ "    ) where rownum <= ? "
							+ ") where rnum >= ?");
//한줄로 표시한 경우
			//			pstmt = conn.prepareStatement(
//					"select message_id, guest_name, password, message from (select rownum rnum, message_id, guest_name, password, message from (select * from guestbook_message m order by m.message_id desc) where rownum <= ? ) where rnum >= ?");
//
//	나누어서 표시한 경우		
//			select * from guestbook_message order by message_id desc
//			select rownum rnum, message_id, guest_name, password, message from  where rownum <= ?
//		    select message_id, guest_name, password, message from where rnum >= ?
			
						pstmt.setInt(1, endRow);
						pstmt.setInt(2, firstRow);	//읽어올 첫번째 행번호
			rs = pstmt.executeQuery();
			if (rs.next()) {
				List<Message> messageList = new ArrayList<Message>();
				do {
					messageList.add(makeMessageFromResultSet(rs));
				} while (rs.next());
				return messageList;
			} else {
				return Collections.emptyList();
			}
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
	}

	public int delete(Connection conn, int messageId) throws SQLException {
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement(
					"delete from guestbook_message where message_id = ?");
			pstmt.setInt(1, messageId);
			return pstmt.executeUpdate();
		} finally {
			JdbcUtil.close(pstmt);
		}
	}
}
