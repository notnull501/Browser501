package mvc.controller;

import java.io.FileReader;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Properties;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mvc.command.CommandHandler;
import mvc.command.NullHandler;
//533
//ControllerUsingFile 단점: ?cmd=hello
// 보완 => ControllerUsingURI : 확장자 패턴 사용(main.do)
//http://localhost:8080/Server_Servlet/controllerUsingFile?cmd=hello

//@WebServlet("/controllerUsingFile")
public class ControllerUsingFile extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Map<String,CommandHandler> commandHandlerMap = new HashMap<>();
	
    //1.가장 먼저 실행
	@Override
	public void init() throws ServletException {
		String configFile = getInitParameter("confgFile");// /WEB-INF/commandHandler.properties
		Properties prop = new Properties();//Map계열
		String configFilePath = getServletContext().getRealPath(configFile);
		System.out.println("configFilePath :: "+configFilePath);// C:\ServerSpace\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\Server_Servlet\WEB-INF\commandHandler.properties
		try(FileReader fis = new FileReader(configFilePath)){
			prop.load(fis);
		}catch(IOException e) {
			throw new ServletException(e);
		}
		Iterator<Object> keyIter = prop.keySet().iterator();
		while(keyIter.hasNext()) {
			String command = (String) keyIter.next();
			System.out.println("command:: "+command);//hello
			String handlerClassName = prop.getProperty(command);
			System.out.println("handlerClassName:: "+handlerClassName);//mvc.hello.HelloHandler
			try {
				Class<?> handlerClass = Class.forName(handlerClassName);
				
				CommandHandler handlerInstance = (CommandHandler) handlerClass.newInstance();
				System.out.println("handlerInstance:: "+handlerInstance);//mvc.hello.HelloHandler@5cdf39b2
				//                    hello    mvc.hello.HelloHandler@5cdf39b2
				commandHandlerMap.put(command, handlerInstance);
			
			} catch (ClassNotFoundException | IllegalAccessException | InstantiationException e) {
				
			}
		}
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		process(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		process(request, response);
	}

	//2
	private void process(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String command = request.getParameter("cmd");//hello
		CommandHandler handler =   commandHandlerMap.get(command);// mvc.hello.HelloHandler
		if(handler == null) {
			handler = new NullHandler();		
		}
		String viewPage = null;
		try {
			viewPage = handler.process(request, response);//"/WEB-INF/view/hello.jsp"
		} catch (Exception e) {
			throw new ServletException(e);
		}
		if(viewPage != null) {
			RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
			dispatcher.forward(request, response);	
		}
	}
}
