package command_pattern;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SelectService {

	public ArrayList<EmpDTO> execute(HttpServletRequest req, HttpServletResponse res){
		EmpDAO dao = new EmpDAO();
	    return dao.select();
	}
	
}
