package jdbc.connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

//442
public class ConnectionProvider {
	//pool에 등록된 이름이 guestbook
		public static Connection getConnection() throws SQLException {
			return DriverManager.getConnection("jdbc:apache:commons:dbcp:board");
		}
}
