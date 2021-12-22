package command_pattern;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class EmpDAO {
		
	DataSource dataFactory;

	public EmpDAO() {
		try {
			
				Context ctx = new InitialContext();
			    dataFactory = (DataSource) ctx.lookup("java:comp/env/jdbc/OracleDB");

		} catch (NamingException e) {
			
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
                con = dataFactory.getConnection();
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
