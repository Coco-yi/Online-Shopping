package hdw.FrontServlet;

import java.io.IOException;
import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import hdw.bean.CartItem;
import hdw.bean.SaleOrder;
import hdw.bean.User;
import hdw.shopping.CartManager;
import hdw.shopping.OrderManager;

/**
 * Servlet implementation class OrderAddServelt
 */
@WebServlet("/OrderAddServelt")
public class OrderAddServelt extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8") ;
		
		User user = (User) request.getSession().getAttribute("User") ;
		List<CartItem> cart = CartManager.getInstance().getCartlist(user.getId()) ;
		SaleOrder order = new SaleOrder() ;
		order.setUser(user);
		order.setAddr(user.getAddr());
		order.setStatus(1);
		order.setOdate(new Timestamp(System.currentTimeMillis()));
		order.setCart(cart);
		OrderManager.getInstance().addOrder(order);
		System.out.println("Ìí¼Ó³É¹¦ ");
		request.getRequestDispatcher("/cartlist").forward(request, response);
	}

}
