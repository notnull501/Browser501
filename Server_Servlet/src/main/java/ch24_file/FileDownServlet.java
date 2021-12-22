package ch24_file;

import java.io.FileInputStream;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/ch24_fileupload/FileDown")
public class FileDownServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String fileName = request.getParameter("file_name");
		String sDownloadPath = "c:\\uploadtest\\";
		String sFilePath = sDownloadPath+fileName;
		
		byte[] b = new byte[4096];
		FileInputStream in = new FileInputStream(sFilePath);
		String sMimeType =  getServletContext().getMimeType(sFilePath);
		System.out.println("ssMimeType>>>"+sMimeType);
		if(sMimeType == null) sMimeType="application/octet-stream";
		response.setContentType(sMimeType);
		
		String sEncoding = new String(fileName.getBytes("utf-8"));
		response.setHeader("Content-Disposition", "attachment; filename="+sEncoding);
		ServletOutputStream out =  response.getOutputStream();
		int numRead;
		while((numRead= in.read(b, 0, b.length)) != -1 ) {
			out.write(b,0,numRead);
		}
		out.flush();
		out.close();
		in.close();
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
