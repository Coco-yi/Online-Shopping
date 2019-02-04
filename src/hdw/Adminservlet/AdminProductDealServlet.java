package hdw.Adminservlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import hdw.bean.Product;
import hdw.shopping.ProductManager;

@WebServlet("/admin/productdeal")
public class AdminProductDealServlet extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8") ;
		
		
		
		String oper = request.getParameter("req") ;
		System.out.println("oper " + oper);
		if(oper != null && oper.equals("add")) {
			System.out.println("添加产品");
			String name = request.getParameter("name") ;
			String description = request.getParameter("description") ;
			String categoryid = request.getParameter("categoryid") ;
			String normalprice = request.getParameter("normalprice") ;
			String memberprice = request.getParameter("memberprice") ;
			
			Product p = new Product() ;
			p.setName(name);
			p.setDescr(description);
			p.setCategoryId(Integer.parseInt(categoryid));
			p.setNormalPrice(Integer.parseInt(normalprice));
			p.setMemberPrice(Integer.parseInt(memberprice));
			
			ProductManager.getInstance().addProduct(p) ;
			request.getRequestDispatcher("/admin/index.jsp").forward(request, response);
		}else if(oper != null && oper.equals("delete")) {
			int id = Integer.parseInt(request.getParameter("id")) ;
			ProductManager.getInstance().deleteProductById(id) ;
			System.out.println("跳转");
			request.getRequestDispatcher("/admin/index.jsp").forward(request, response);
		}else if(oper != null && oper.equals("selectdelete")) {
			String[] checks = request.getParameterValues("check") ;
			System.out.println(checks[0] +" "+ checks[1]);
			int[] values = new int[checks.length] ;
			for(int i = 0; i < checks.length; i++) values[i] = Integer.parseInt(checks[i]) ;
			System.out.println(values[0] +" "+ values[1]);
			ProductManager.getInstance().deleteProductById(values) ;
			request.getRequestDispatcher("/admin/index.jsp").forward(request, response);
		}else if(oper != null && oper.equals("search")) {
			System.out.println("搜索");
			String keyword = request.getParameter("keyword") ;
			List<Product> Products = ProductManager.getInstance().simpleFindProduct(keyword) ;
			request.setAttribute("products", Products);
			request.getRequestDispatcher("/admin/products.jsp").forward(request, response);
		}
	}
	
}
