package hdw.DAO;

import java.sql.Date;
import java.util.List;

import hdw.bean.Product;

public interface ProductDAO {
	
	public Product getProduct(int id);
	
	public Product getProduct(String name) ;
	
	public List<Product> getProducts();
	
	public List<Product> getProducts(int categoryid);
	
	//public List<Product> getProducts(int pageNo,int pageSize);
	
	public void findProducts(List<Product> list,
							String keyword,
							double lowNormalPrice,
							double highNormalPrice,
							double lowMemberPrice,
							double highMemberPrice,
							Date startPdate,
							Date endPdate,
							int categoryId
									) ;
	/*public int findProducts( List<Product> list,
							 String keyword,
							 double lowNormalPrice,
							 double highNormalPrice,
							 double lowMemberPrice,
							 double highMemberPrice,
							 Date startPdate,
							 Date endPdate,
							 int[] categoryIds
			) ;
	*/
	public boolean updateProduct(Product p);
	
	public void deleteProductById(int[] idArray) ;
	
	public boolean deleteProductByCategoryId(int categoryId) ;

	public boolean addProduct(Product p);

	//public int getTotalPages(int pageSize);

	//public int getProduct(List<Product> products);

	public void deleteProductById(int id);

	public Product loadById(int id);

	public List<Product> simpleFindProduct(String keyword) ;
	
	//public List<Product> getLastestProduct(int count);
}
