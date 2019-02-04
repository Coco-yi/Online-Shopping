package hdw.shopping;

import java.sql.Date;
import java.util.List;

import hdw.DAO.ProductDAO;
import hdw.DAO.ProductMysqlDAO;
import hdw.bean.Product;

public class ProductManager {
	//单例设计
	public Product getProduct(String name) {
		return dao.getProduct(name) ;
	}
	
	private static ProductManager pm = null;
	
	static {
		if(pm == null) {
			pm = new ProductManager();
			pm.setDao(new ProductMysqlDAO());
		}
	}
	
	public static ProductManager getInstance() {
		return pm;
	}
	
	private ProductManager() {}
	
	/*************************************************************************************/
	
	ProductDAO dao = null;
	
	
	public ProductDAO getDao() {
		return dao;
	}

	public void setDao(ProductDAO dao) {
		this.dao = dao;
	}

	/*******************************************************************************************/
	public List<Product> getProducts() {
		return dao.getProducts();
	}
	
	/*public List<Product> getProducts(int pageNo,int pageSize) {
		return this.dao.getProducts(pageNo, pageSize);
	}*/
	
	public void findProducts(		  List<Product> list,
									  String keyword,
									  double lowNormalPrice,
									  double highNormalPrice,
									  double lowMemberPrice,
									  double highMemberPrice,
									  Date startPdate,
									  Date endPdate,
									  int categoryId,
									  int pageNo,
									  int pageSize) {
		dao.findProducts(list,keyword, lowNormalPrice, highNormalPrice, lowMemberPrice, highMemberPrice, startPdate, endPdate, categoryId);
		return ;
	}
	//这是多个类别的搜索
	/*public int findProducts(		
			  List<Product> list,
			  String keyword,
			  double lowNormalPrice,
			  double highNormalPrice,
			  double lowMemberPrice,
			  double highMemberPrice,
			  Date startPdate,
			  Date endPdate,
			  int[] categoryIds,
			  int pageNo,
			  int pageSize) {
	 return dao.findProducts(list,keyword, lowNormalPrice, highNormalPrice, lowMemberPrice, highMemberPrice, startPdate, endPdate, categoryIds, pageNo, pageSize);
	}*/
	
	public List<Product> findProducts(String name) {
		return null;
	}
	
	public boolean updateProduct(Product p) {
		return this.dao.updateProduct(p);
	}
	
	public void deleteProductById(int[] idArray) {
		this.dao.deleteProductById(idArray);
	}
	
	public boolean deleteProductById(int id) {
		this.dao.deleteProductById(id);
		return true;
	}
	
	public boolean deleteProductByCategoryId(int categoryId) {
		return false;
	}
	
	public boolean addProduct(Product p) {
		return dao.addProduct(p);
	}
	/*************两个有关页码的方法，第二个是新的方法*************//*
	public int getTotalPages(int pageSize) {
		return this.dao.getTotalPages(pageSize);
	}
	
	public int getProduct(List<Product> products ,int pageNo,int pageSize) {
		return this.dao.getProduct(products,pageNo,pageSize);
	}
	*//******************************************************************************************/
	
	public Product loadById(int id) {
		return this.dao.loadById(id);
	}
	
	/*public List<Product> getLastestProduct(int count) {
		return this.dao.getLastestProduct(count);
	}*/
	public List<Product> simpleFindProduct(String keyword){
		return dao.simpleFindProduct(keyword) ;
	}
	
	public List<Product> getProducts(int categoryid){
		return dao.getProducts(categoryid) ;
	}
	
	public Product getProduct(int id) {
		return dao.getProduct(id) ;
	}
}
