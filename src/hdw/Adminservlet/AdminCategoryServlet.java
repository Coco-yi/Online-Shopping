package hdw.Adminservlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import hdw.bean.Category;
import hdw.shopping.CategoryManager;

@WebServlet("/admin/category")
public class AdminCategoryServlet extends HttpServlet{

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8") ;
		
		HttpSession session = request.getSession() ;
		String AdminLogin = (String) session.getAttribute("Adminlogin") ;
		//��ù��ڶ�Ŀ¼�Ĳ���
		String oper = request.getParameter("req") ;
		//System.out.println(AdminLogin);
		if(oper.equals("update") && AdminLogin != null && AdminLogin.equals("true")) {
			int id = Integer.parseInt(request.getParameter("id")) ;
			int pid = Integer.parseInt(request.getParameter("pid")) ;
			CategoryManager.deleteCategory(id, pid);
			System.out.println("���ɾ���ɹ�");
			request.getRequestDispatcher("/admin/index.jsp").forward(request, response);
			return;
			
		}else if(oper.equals("insert") && AdminLogin != null && AdminLogin.equals("true")) {
			String categoryname = request.getParameter("categoryname") ;
			String decription = request.getParameter("description") ;
			int pid = Integer.parseInt(request.getParameter("pid") );
			//���Ӹ����
			if(pid == 0) {
				CategoryManager.addTop(categoryname, decription);
				System.out.println("����Ŀ¼�ɹ�" + categoryname + decription);
				request.getRequestDispatcher("/admin/index.jsp").forward(request, response);
				return ;
			}else {
				//���������
				Category parent = CategoryManager.loadById(pid);
				Category child = new Category();
				child.setPid(parent.getId());
				//System.out.println(child.getPid() + "dfasfasaf");
				child.setName(categoryname);
				child.setDescr(decription);
				child.setGrade(parent.getGrade());//���淽���Ѿ���1��
				CategoryManager.addChild(child);
				
				System.out.println("��������ӳɹ�");
				request.getRequestDispatcher("/admin/index.jsp").forward(request, response);
				return;
			}
		}else {
			response.sendRedirect("login.html");
			return ;
		}
	}
	
}
