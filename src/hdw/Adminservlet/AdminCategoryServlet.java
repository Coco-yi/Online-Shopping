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
		//获得关于对目录的操作
		String oper = request.getParameter("req") ;
		//System.out.println(AdminLogin);
		if(oper.equals("update") && AdminLogin != null && AdminLogin.equals("true")) {
			int id = Integer.parseInt(request.getParameter("id")) ;
			int pid = Integer.parseInt(request.getParameter("pid")) ;
			CategoryManager.deleteCategory(id, pid);
			System.out.println("类别删除成功");
			request.getRequestDispatcher("/admin/index.jsp").forward(request, response);
			return;
			
		}else if(oper.equals("insert") && AdminLogin != null && AdminLogin.equals("true")) {
			String categoryname = request.getParameter("categoryname") ;
			String decription = request.getParameter("description") ;
			int pid = Integer.parseInt(request.getParameter("pid") );
			//增加根类别
			if(pid == 0) {
				CategoryManager.addTop(categoryname, decription);
				System.out.println("插入目录成功" + categoryname + decription);
				request.getRequestDispatcher("/admin/index.jsp").forward(request, response);
				return ;
			}else {
				//增加子类别
				Category parent = CategoryManager.loadById(pid);
				Category child = new Category();
				child.setPid(parent.getId());
				//System.out.println(child.getPid() + "dfasfasaf");
				child.setName(categoryname);
				child.setDescr(decription);
				child.setGrade(parent.getGrade());//后面方法已经加1了
				CategoryManager.addChild(child);
				
				System.out.println("子类别增加成功");
				request.getRequestDispatcher("/admin/index.jsp").forward(request, response);
				return;
			}
		}else {
			response.sendRedirect("login.html");
			return ;
		}
	}
	
}
