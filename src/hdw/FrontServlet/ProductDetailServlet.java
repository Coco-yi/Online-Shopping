package hdw.FrontServlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import hdw.bean.Product;
import hdw.shopping.ProductManager;

@WebServlet("/product-details")
public class ProductDetailServlet extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8") ;
		
		int productId = Integer.parseInt(request.getParameter("id"));
		Product pdetail = ProductManager.getInstance().loadById(productId) ;
		List<Product> pdetailList = ProductManager.getInstance().getProducts(pdetail.getCategoryId());
		
		request.setAttribute("productdetail", pdetail);
		request.setAttribute("productdetaillist", pdetailList);
		request.getRequestDispatcher("product-details.jsp").forward(request, response);
	}

}
