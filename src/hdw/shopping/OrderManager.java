package hdw.shopping;

import hdw.DAO.OrderMysqlDAO;
import hdw.bean.SaleOrder;

public class OrderManager {
	
	private static OrderMysqlDAO dao = null;
	
	private static OrderManager om = null;
	
	private OrderManager() {}
	
	static {
		if(om == null) {
			om = new OrderManager();
			om.setDao(new OrderMysqlDAO());
		}
	}
	
	public void addOrder(SaleOrder order) {
		dao.addOrder(order);
	}
	
	public static OrderManager getInstance() {
		return om;
	}
	
	public OrderMysqlDAO getDao() {
		return dao;
	}

	public void setDao(OrderMysqlDAO dao) {
		this.dao = dao;
	}
	
	
}
