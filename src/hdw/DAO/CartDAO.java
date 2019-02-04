package hdw.DAO;

import java.util.List;

import hdw.bean.CartItem;

public interface CartDAO {
	public void addItem(int userid,int productid,int pcount) ;
	
	public List<CartItem> getCartlist(int userid) ;
	
	public List<CartItem> getCartlist() ;
}
