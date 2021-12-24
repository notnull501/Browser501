package mvc.controller;
//Http://localhost:8080/Ch2121_Bbs/join.do
import java.io.FileReader;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Properties;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mvc.command.CommandHandler;
import mvc.command.NullHandler;

//@WebServlet(urlPatterns = { "/ControllerUsingURI", "*.do" })
public class ControllerUsingURI extends HttpServlet {
	private static final long serialVersionUID = 1L;

	// <커맨드, 핸들러 인스턴스> 매핑정보 저장
	private Map<String, CommandHandler> commandHandlerMap = new HashMap<>();
//1
	public void init() throws ServletException {
		String configFile = getInitParameter("configFile");// /WEB-INF/commandHandlerURI.properties
		Properties prop = new Properties();// Map계열
		String configFilePath = getServletContext().getRealPath(configFile);// 파일의 절대 경로, 파일을 File 등올 읽을 때 유용
//		System.out.println(configFile);// /WEB-INF/commandHandlerURI.properties
//		System.out.println(configFilePath);// C:\ServerSpace\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\Ch21_BbsCc\WEB-INF\commandHandlerURI.properties

		try (FileReader fis = new FileReader(configFilePath)) {
			prop.load(fis);
		} catch (IOException e) {
			throw new ServletException();
		}
		Iterator<?> keyIter = prop.keySet().iterator();
		while (keyIter.hasNext()) {
			String command = (String) keyIter.next();// /join.do
//			System.out.println(command);
			String handlerClassName = prop.getProperty(command);// member.command.JoinHandler
//			System.out.println(handlerClassName);
			try {
				Class<?> handlerClass = Class.forName(handlerClassName);
				CommandHandler handlerInstance = (CommandHandler) handlerClass.newInstance();
				commandHandlerMap.put(command, handlerInstance);
			} catch (ClassNotFoundException | InstantiationException | IllegalAccessException e) {
				throw new ServletException(e);
			}
		}
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		process(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		process(request, response);
	}
//2
	private void process(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String command = request.getRequestURI();// /Ch21_BbsCc/*.do
//		System.out.println(command);

		if (command.indexOf(request.getContextPath()) == 0) {
			command = command.substring(request.getContextPath().length());// /*.do
		}
//		System.out.println(command);
		CommandHandler handler = commandHandlerMap.get(command);// member.command.JoinHandler
		if (handler == null) {
			handler = new NullHandler();
		}
		String viewPage = null;
		try {
			// member.command.JoinHandler 안에 있는 메소드를 수행 process()
			viewPage = handler.process(request, response);// "/WEB-INF/view/joinSuccess.jsp"
		} catch (Exception e) {
			throw new ServletException(e);
		}
		if (viewPage != null) {
			RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);///WEB-INF/view/joinForm.jsp
			dispatcher.forward(request, response);
		}
	}
}
