package hdw.Adminservlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import hdw.bean.Category;
import hdw.bean.Product;
import hdw.shopping.CategoryManager;
import hdw.shopping.ProductManager;

@WebServlet("/admin/products")
public class AdminProductsServlet extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		HttpSession session = request.getSession() ;
		String adminlogin = (String) session.getAttribute("Adminlogin") ;
		
		if(adminlogin != null && adminlogin.equals("true")) {
			List<Category> Categories = new ArrayList<Category>() ;
			Categories = CategoryManager.getCategories() ;
			
			List<Product> Products = new ArrayList<Product>() ;
			Products = ProductManager.getInstance().getProducts() ;
			
			//设置右侧目录属性，jsp显示
			request.setAttribute("categories", Categories);
			//设置产品列表，jsp显示
			request.setAttribute("products",Products) ;
			request.getRequestDispatcher("/admin/products.jsp").forward(request, response);
		}else {
			response.sendRedirect("login.html");
			return ;
		}
		
	}

}
