package ch18.mvc.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import ch18.mvc.vo.EmpDTO;

public class EmpDAO {
		
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:orcl";
	String userid = "scott";
	String passwd = "scott";

	public EmpDAO() {
		try {
			Class.forName(driver);
		} catch (ClassNotFoundException e) {
			
		}
	}
	
	//empno, ename, sal, deptno
	public ArrayList<EmpDTO> select(){
		 ArrayList<EmpDTO> list = new ArrayList<EmpDTO>();
		 Connection con = null;
		 PreparedStatement pstmt = null;
		 ResultSet rs = null;
		
		 try {
			String sql = "select empno,ename,sal,deptno from emp";
			 con = DriverManager.getConnection(url, userid, passwd);
				pstmt= con.prepareStatement(sql);
				rs = pstmt.executeQuery();
				while(rs.next()) {
					String empno = rs.getString("empno");
					String ename = rs.getString("ename");
					int sal = rs.getInt("sal");
					String deptno = rs.getString("deptno");
					
					EmpDTO dto = new EmpDTO(empno,ename,sal,deptno);
					list.add(dto);	
				}
		} catch (SQLException e) {
			
		}finally {
			try {
				pstmt.close();
				con.close();
			} catch (SQLException e) {
				
			}
		}
		return list;	
	}
}
