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
    
    // 上传文件存储目录
    private static final String UPLOAD_DIRECTORY = "upload";
 
    // 上传配置
    private static final int MEMORY_THRESHOLD   = 1024 * 1024 * 3;  // 3MB
    private static final int MAX_FILE_SIZE      = 1024 * 1024 * 40; // 40MB
    private static final int MAX_REQUEST_SIZE   = 1024 * 1024 * 50; // 50MB
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("进入文件上传Servlet");
		// 检测是否为多媒体上传
        if (!ServletFileUpload.isMultipartContent(request)) {
            // 如果不是则停止
            PrintWriter writer = response.getWriter();
            writer.println("Error: 表单必须包含 enctype=multipart/form-data");
            writer.flush();
            return;
        }
 
        // 配置上传参数
        DiskFileItemFactory factory = new DiskFileItemFactory();
        // 设置内存临界值 - 超过后将产生临时文件并存储于临时目录中
        factory.setSizeThreshold(MEMORY_THRESHOLD);
        // 设置临时存储目录
        factory.setRepository(new File("D:/mytest"));
 
        ServletFileUpload upload = new ServletFileUpload(factory);
         
        // 设置最大文件上传值
        upload.setFileSizeMax(MAX_FILE_SIZE);
         
        // 设置最大请求值 (包含文件和表单数据)
        upload.setSizeMax(MAX_REQUEST_SIZE);

        // 中文处理
        upload.setHeaderEncoding("UTF-8"); 

        // 构造临时路径来存储上传的文件
        // 这个路径相对当前应用的目录
        String uploadPath = request.getSession().getServletContext().getRealPath("") + File.separator + UPLOAD_DIRECTORY;
        System.out.println(uploadPath);
        // 如果目录不存在则创建
        File uploadDir = new File(uploadPath);
        if (!uploadDir.exists()) {
            uploadDir.mkdir();
            System.out.println("创建文件目录");
        }
 
        try {
            // 解析请求的内容提取文件数据
            @SuppressWarnings("unchecked")
            ServletRequestContext context = new ServletRequestContext(request) ;
            List<FileItem> formItems = upload.parseRequest(context);
 
            if (formItems != null && formItems.size() > 0) {
            	System.out.println("迭代表单");
                // 迭代表单数据
            	String fileName = "" ;
                for (FileItem item : formItems) {
                    // 处理不在表单中的字段        	
                	System.out.println(item.isFormField());
                    if (!item.isFormField()) {
                        String RealfileName = new File(item.getName()).getName();
                        fileName += RealfileName.substring(RealfileName.lastIndexOf(".")).toLowerCase().trim();
                        System.out.println(fileName);
                        
                        String filePath = uploadPath + File.separator + fileName;
                        File storeFile = new File(filePath);
                        // 在控制台输出文件的上传路径
                        System.out.println(filePath);
                        // 保存文件到硬盘
                        item.write(storeFile);
                        System.out.println("文件上传成功!");
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
                    "错误信息: " + ex.getMessage());
        }
        // 跳转到 message.jsp
       /* request.getServletContext().getRequestDispatcher("/message.jsp").forward(
                request, response);*/
    }
}
