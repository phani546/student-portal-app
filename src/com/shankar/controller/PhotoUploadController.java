package com.shankar.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import com.shankar.util.ReadPropertyFile;
/**
 * Servlet implementation class PhotoUpload
 */
@WebServlet("/PhotoUpload")
public class PhotoUploadController extends HttpServlet {
	static org.apache.log4j.Logger logger = org.apache.log4j.Logger.getLogger(PhotoUploadController.class);
	private static final long serialVersionUID = 1L;
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String photoPath = ReadPropertyFile.getInstance().readProperties().get("photoDirPath");
		int studentId = Integer.parseInt(request.getParameter("studentid"));
		if (ServletFileUpload.isMultipartContent(request)) {
			try {
				@SuppressWarnings("unchecked")
				List<FileItem> multiparts = new ServletFileUpload(new DiskFileItemFactory()).parseRequest(request);
				File pPath = null;
				for (FileItem item : multiparts) {
					if (!item.isFormField()) {
						String name = new File(item.getName()).getName();
					    String[] renameFile = name.split("\\.");
						String newFileName = studentId +"."+renameFile[1];
						pPath = new File(photoPath + File.separator + newFileName);
						item.write(pPath);
					}
				}
				response.getWriter().print(pPath.getName());
			} catch (Exception ex) {
				try {
				  response.getWriter().print("File Upload Failed due to " + ex);
				}catch(Exception e) {
				  logger.error("exception : " + e);
				}
			}
		} else {
			logger.error("No File found");
			response.getWriter().print("No File found");
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
}