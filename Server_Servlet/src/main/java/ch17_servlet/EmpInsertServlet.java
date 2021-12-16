package ch17_servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/ch17_servlet/EmpInsert.do")
public class EmpInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		String empno = request.getParameter("empno");
		String ename = request.getParameter("ename");
		String sal = request.getParameter("sal");
		String deptno = request.getParameter("deptno");
		
		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:orcl";
		String userid = "scott";
		String passwd = "scott";
		String sql = "insert into emp(empno,ename,sal,deptno) values(?,?,?,?)";
		Connection con = null;
		PreparedStatement pstmt = null;
		
		PrintWriter out = response.getWriter();
		out.println("<html><body>");
		
		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, userid, passwd);
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, empno);
			pstmt.setString(2, ename);
			pstmt.setInt(3, Integer.parseInt(sal));
			pstmt.setString(4, deptno);
			int n = pstmt.executeUpdate();
			if(n == 1)
				out.print("저장성공");
			else
			    out.print("저장실패");
			
		}catch (SQLException e) {
					System.out.println("SQL exception");
		} catch (ClassNotFoundException e) {
			System.out.println("class not!");
		}finally {
			try {
				pstmt.close();
				con.close();
			} catch (SQLException e) {
				
			}
		}
		
		out.println("</body></html>");
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
