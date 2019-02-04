package hdw.FrontServlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import hdw.bean.CartItem;
import hdw.bean.User;
import hdw.shopping.CartManager;

@WebServlet("/cartlist")
public class CartListServlet extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8") ;
		
		String islogin = (String) request.getSession().getAttribute("UserLogin") ;
		if(islogin != null && islogin.equals("true")) {
			User user = (User) request.getSession().getAttribute("User") ;
			int userid = user.getId() ;
			List<CartItem> CartList = CartManager.getInstance().getCartlist(userid) ;
			//System.out.println("");
			request.getSession().setAttribute("cartlist", CartList);
			request.getRequestDispatcher("/cart.jsp").forward(request, response);
		}else {
			response.sendRedirect("/login.jsp");
		}
	}
	
}
