package com;

 
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
@WebServlet(description = "Upload File To The Server", urlPatterns = { "/fileUploadServlet" })
public class FileUploadServlet extends HttpServlet {
	private final String UPLOAD_DIRECTORY = "/home/feroz/tempfile";
    private static final long serialVersionUID = 1L;
    public static final String UPLOAD_DIR = "uploadedFiles";
 
    /***** This Method Is Called By The Servlet Container To Process A 'POST' Request *****/
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        handleRequest(request, response);
    }
 
    public void handleRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    		PrintWriter pw =response.getWriter();
    	 if(ServletFileUpload.isMultipartContent(request)){
             try {
                 List<FileItem> multiparts = new ServletFileUpload(
                                          new DiskFileItemFactory()).parseRequest(request);
                
                 for(FileItem item : multiparts){
                     if(!item.isFormField()){
                         String name = new File(item.getName()).getName();
                         item.write( new File(UPLOAD_DIRECTORY + File.separator + name));
                     }
                 }
             
                //File uploaded successfully
                 pw.println("message"+ "File Uploaded Successfully");
             } catch (Exception ex) {
            	 pw.println("message"+ "File Upload Failed due to " + ex);
             }          
           
         }else{
        	 pw.println("message"+
                                  "Sorry this Servlet only handles file upload request");
         }
    }
 
  
    
}
