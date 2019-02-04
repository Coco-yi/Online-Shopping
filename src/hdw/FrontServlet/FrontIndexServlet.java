package hdw.FrontServlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import hdw.bean.Product;
import hdw.shopping.ProductManager;
import hdw.util.OtherUtil;

@WebServlet("/index") 
public class FrontIndexServlet extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8") ;
		
		int count = 7 ;
		int HB = 15 ;
		int SO = 14 ;
		int electr = 13 ;
		int cpnetw = 12 ;
		int book = 16 ;
		int jwelneck = 18 ;
		int camera = 11 ;
		System.out.println("产品显示加");
		
		List<Product> Products = ProductManager.getInstance().getProducts() ;
		List<Product> HBProducts = new ArrayList<Product>() ;
		List<Product> SOProducts = new ArrayList<Product>() ;
		List<Product> electrProducts = new ArrayList<Product>() ;
		List<Product> jwelnectProducts = new ArrayList<Product>() ;
		List<Product> bookProducts = new ArrayList<Product>() ;
		List<Product> cameraProducts = new ArrayList<Product>() ;
		for(int i = 0;i < Products.size(); i++) {
			Product p = Products.get(i) ;
			if(p.getCategoryId() == HB ){
				HBProducts.add(p) ;
			}
			if(p.getCategoryId() == SO) {
				SOProducts.add(p) ;
			}
			if(p.getCategoryId() == jwelneck) {
				jwelnectProducts.add(p) ;
			}
			if(p.getCategoryId() == book) {
				bookProducts.add(p) ;
			}
			if(p.getCategoryId() == camera) {
				cameraProducts.add(p) ;
			}
			if(p.getCategoryId() == electr || p.getCategoryId() == cpnetw) {
				electrProducts.add(p) ;
			}
		}
		Products = OtherUtil.randomTopic(Products, 16) ;
		HBProducts = OtherUtil.randomTopic(HBProducts, 7) ;
		SOProducts = OtherUtil.randomTopic(SOProducts, 7) ;
		electrProducts = OtherUtil.randomTopic(electrProducts, 7) ;
		jwelnectProducts = OtherUtil.randomTopic(jwelnectProducts, 7) ;
		cameraProducts = OtherUtil.randomTopic(cameraProducts, 8) ;
		bookProducts = OtherUtil.randomTopic(bookProducts, 10) ;
		//System.out.println(SOProducts.get(1).getName());
		request.setAttribute("totalproducts", Products);
		request.setAttribute("hbproducts", HBProducts);
		request.setAttribute("soproducts", SOProducts);
		request.setAttribute("electrproducts", electrProducts);
		request.setAttribute("jwelnectProducts", jwelnectProducts); 
		request.setAttribute("bookproducts", bookProducts); 
		request.setAttribute("cameraproducts", cameraProducts); 
		request.getRequestDispatcher("index.jsp").forward(request, response);
		return ;
	}

}
