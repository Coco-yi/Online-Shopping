package hdw.Adminservlet;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.FileItem;
import org.apache.tomcat.util.http.fileupload.disk.DiskFileItemFactory;
import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;
import org.apache.tomcat.util.http.fileupload.servlet.ServletRequestContext;

import com.sun.xml.internal.ws.client.RequestContext;

import hdw.shopping.ProductManager;

@WebServlet("/admin/Upload")
public class AdminFileUploadServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
    
    // �ϴ��ļ��洢Ŀ¼
    private static final String UPLOAD_DIRECTORY = "upload";
 
    // �ϴ�����
    private static final int MEMORY_THRESHOLD   = 1024 * 1024 * 3;  // 3MB
    private static final int MAX_FILE_SIZE      = 1024 * 1024 * 40; // 40MB
    private static final int MAX_REQUEST_SIZE   = 1024 * 1024 * 50; // 50MB
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("�����ļ��ϴ�Servlet");
		// ����Ƿ�Ϊ��ý���ϴ�
        if (!ServletFileUpload.isMultipartContent(request)) {
            // ���������ֹͣ
            PrintWriter writer = response.getWriter();
            writer.println("Error: ��������� enctype=multipart/form-data");
            writer.flush();
            return;
        }
 
        // �����ϴ�����
        DiskFileItemFactory factory = new DiskFileItemFactory();
        // �����ڴ��ٽ�ֵ - �����󽫲�����ʱ�ļ����洢����ʱĿ¼��
        factory.setSizeThreshold(MEMORY_THRESHOLD);
        // ������ʱ�洢Ŀ¼
        factory.setRepository(new File("D:/mytest"));
 
        ServletFileUpload upload = new ServletFileUpload(factory);
         
        // ��������ļ��ϴ�ֵ
        upload.setFileSizeMax(MAX_FILE_SIZE);
         
        // �����������ֵ (�����ļ��ͱ�����)
        upload.setSizeMax(MAX_REQUEST_SIZE);

        // ���Ĵ���
        upload.setHeaderEncoding("UTF-8"); 

        // ������ʱ·�����洢�ϴ����ļ�
        // ���·����Ե�ǰӦ�õ�Ŀ¼
        String uploadPath = request.getSession().getServletContext().getRealPath("") + File.separator + UPLOAD_DIRECTORY;
        System.out.println(uploadPath);
        // ���Ŀ¼�������򴴽�
        File uploadDir = new File(uploadPath);
        if (!uploadDir.exists()) {
            uploadDir.mkdir();
            System.out.println("�����ļ�Ŀ¼");
        }
 
        try {
            // ���������������ȡ�ļ�����
            @SuppressWarnings("unchecked")
            ServletRequestContext context = new ServletRequestContext(request) ;
            List<FileItem> formItems = upload.parseRequest(context);
 
            if (formItems != null && formItems.size() > 0) {
            	System.out.println("������");
                // ����������
            	String fileName = "" ;
                for (FileItem item : formItems) {
                    // �����ڱ��е��ֶ�        	
                	System.out.println(item.isFormField());
                    if (!item.isFormField()) {
                        String RealfileName = new File(item.getName()).getName();
                        fileName += RealfileName.substring(RealfileName.lastIndexOf(".")).toLowerCase().trim();
                        System.out.println(fileName);
                        
                        String filePath = uploadPath + File.separator + fileName;
                        File storeFile = new File(filePath);
                        // �ڿ���̨����ļ����ϴ�·��
                        System.out.println(filePath);
                        // �����ļ���Ӳ��
                        item.write(storeFile);
                        System.out.println("�ļ��ϴ��ɹ�!");
                    }else {
                    	System.out.println(item.getString("UTF-8"));
                    	String name = "product" + ProductManager.getInstance().getProduct(item.getString("UTF-8")).getId() ;
                    	fileName = new File(name).getName() ;
                    	//fileName = new File(item.getFieldName()).getName() ;
                    	System.out.println(fileName);
                    }
                }
            }
        } catch (Exception ex) {
            request.setAttribute("message",
                    "������Ϣ: " + ex.getMessage());
        }
        // ��ת�� message.jsp
       /* request.getServletContext().getRequestDispatcher("/message.jsp").forward(
                request, response);*/
    }
}
