package hdw.shopping;

import java.util.List;

import hdw.DAO.CartMysqlDAO;
import hdw.DAO.ProductDAO;
import hdw.DAO.ProductMysqlDAO;
import hdw.bean.CartItem;
import hdw.bean.Product;

public class CartManager {
	
	private static CartManager cm = null;
	
	static {
		if(cm == null) {
			cm = new CartManager();
			cm.setDao(new CartMysqlDAO());
		}
	}
	
	public static CartManager getInstance() {
		return cm;
	}
	
	private CartManager() {}
	
	/*************************************************************************************/
	
	CartMysqlDAO dao = null;
	
	
	public CartMysqlDAO getDao() {
		return dao;
	}

	public void setDao(CartMysqlDAO dao) {
		this.dao = dao;
	}
	
	public void addItem(int userid,int productid,int pcount) {
		this.dao.addItem(userid, productid, pcount);
	}
	
	public List<CartItem> getCartlist(int userid) {
		return this.dao.getCartlist(userid) ;
	}
	
	public List<CartItem> getCartlist() {
		return this.dao.getCartlist() ;
	}
}
