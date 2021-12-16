package ch18.mvc.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ch18.mvc.dao.EmpDAO;
import ch18.mvc.vo.EmpDTO;


@WebServlet("/ch18/emp")
public class EmpSelectServletDAO extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		PrintWriter out = response.getWriter();
		out.println("<html><body>");
		
		EmpDAO dao = new EmpDAO();
		ArrayList<EmpDTO> list = dao.select();
		for(EmpDTO dto : list) {
			String empno = dto.getEmpno();
			String ename = dto.getEname();
			int sal = dto.getSal();
			String deptno = dto.getDeptno();
			out.print(empno+"\t"+ename+"\t"+sal+"\t"+deptno+"<br>");			
		}
		
		out.println("</body></html>");
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
