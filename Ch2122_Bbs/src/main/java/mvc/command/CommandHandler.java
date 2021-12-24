package mvc.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//interface: 일관성, 강제성
public interface CommandHandler {
	// 고정상수
	// 추상메소드
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception;
	// static()
	// Default()
}
