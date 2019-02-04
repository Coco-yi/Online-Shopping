package hdw.FrontServlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import hdw.bean.Product;
import hdw.shopping.ProductManager;

@WebServlet("/search")
public class SearchAjaxServlet extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		// »ñÈ¡ËÑË÷¹Ø¼ü×Ö
		String key = request.getParameter("key");
		if(!key.equals("")) {
			List<Product> products = ProductManager.getInstance().simpleFindProduct(key) ;
			String str = "" ;
			for(int i = 0; i < products.size(); i++) {
				str += products.get(i).getName() + ",";
			}
			System.out.println("ajaxservlet");
			
			PrintWriter out = response.getWriter() ;
			out.write(str);
			out.flush();
			out.close();
		}

	}

}
