package hdw.FrontServlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import hdw.bean.User;
import hdw.shopping.CartManager;

@WebServlet("/cartdeal")
public class CartServlet extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8") ;
		
		System.out.println("Ω¯»ÎCartServlet") ;
		
		String islogin = (String) request.getSession().getAttribute("UserLogin") ;
		User user = (User) request.getSession().getAttribute("User") ;
		
		if(islogin != null && islogin.equals("true")) {
			int id = Integer.parseInt(request.getParameter("productid")) ;
			System.out.println(id);
			CartManager.getInstance().addItem(user.getId(), id, 1);
			
			System.out.println("jiarugongwc");
			request.getRequestDispatcher("index").forward(request, response);
		}else {
			response.sendRedirect("login.jsp");
		}
	}

}
