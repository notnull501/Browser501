package guestbook.service;

import java.sql.Connection;
import java.sql.SQLException;

import guestbook.dao.MessageDao;
import guestbook.model.Message;
import jdbc.JdbcUtil;
import jdbc.connection.ConnectionProvider;

public class DeleteMessageService {
	private static DeleteMessageService instance = new DeleteMessageService();

	public static DeleteMessageService getInstance() {
		return instance;
	}

	private DeleteMessageService() {
	}

	public void deleteMessage(int messageId, String password) throws Exception {
		Connection conn = null;
		try {
			conn = ConnectionProvider.getConnection();
			
			conn.setAutoCommit(false);//자동 커밋 시작점

			MessageDao messageDao = MessageDao.getInstance();
			Message message = messageDao.select(conn, messageId);
			if (message == null) {
				throw new MessageNotFoundException("메시지 없음");
			}
			if (!message.matchPassword(password)) {
				throw new InvalidPasswordException("bad password");
			}
			messageDao.delete(conn, messageId);//////////////////

			conn.commit();//완전 저장(끝점)
			
		} catch (SQLException ex) {
			JdbcUtil.rollback(conn);//취소
			throw new ServiceException("삭제 실패:" + ex.getMessage(), ex);
		} catch (InvalidPasswordException | MessageNotFoundException ex) {
			JdbcUtil.rollback(conn);
			throw ex;
		} finally {
			JdbcUtil.close(conn);
		}
	}
}
