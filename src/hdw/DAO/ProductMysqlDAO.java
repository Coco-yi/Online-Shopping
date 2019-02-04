package hdw.DAO;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import hdw.bean.Product;
import hdw.util.DB;

public class ProductMysqlDAO implements ProductDAO {

	public Product getProduct(int id) {
		Product p = new Product() ;
		Connection conn = null ;
		ResultSet rs = null;
		String sql = "select * from product where id = " + "'" +id+ "'";
		
		try {
			conn = DB.getConn();
			rs = DB.getRs(conn, sql);
			while (rs.next()) {
				p.setId(rs.getInt("id"));
				p.setName(rs.getString("name"));
				p.setDescr(rs.getString("descr"));
				p.setNormalPrice(rs.getDouble("normalPrice"));
				p.setMemberPrice(rs.getDouble("memberPrice"));
				p.setPdate(rs.getTimestamp("pdate"));
				p.setCategoryId(rs.getInt("categoryId"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return p;
	}
	
	public List<Product> getProducts(int categoryid){
		List<Product> list = new ArrayList<Product>();
		Connection conn = null;
		ResultSet rs = null;
		String sql = "select * from product where categoryid = " +"'" + categoryid + "'" ;

		try {
			conn = DB.getConn();
			rs = DB.getRs(conn, sql);
			while (rs.next()) {
				Product p = new Product();
				p.setId(rs.getInt("id"));
				p.setName(rs.getString("name"));
				p.setDescr(rs.getString("descr"));
				p.setNormalPrice(rs.getDouble("normalPrice"));
				p.setMemberPrice(rs.getDouble("memberPrice"));
				p.setPdate(rs.getTimestamp("pdate"));
				p.setCategoryId(rs.getInt("categoryId"));
				list.add(p);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DB.close(rs);
			DB.close(conn);
		}
		return list;
	}
	
	public Product getProduct(String name) {
		Product p = new Product() ;
		Connection conn = null ;
		ResultSet rs = null;
		String sql = "select * from product where name = " + "'" +name+ "'";
		
		try {
			conn = DB.getConn();
			rs = DB.getRs(conn, sql);
			while (rs.next()) {
				p.setId(rs.getInt("id"));
				p.setName(rs.getString("name"));
				p.setDescr(rs.getString("descr"));
				p.setNormalPrice(rs.getDouble("normalPrice"));
				p.setMemberPrice(rs.getDouble("memberPrice"));
				p.setPdate(rs.getTimestamp("pdate"));
				p.setCategoryId(rs.getInt("categoryId"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return p;
	}
	
	public List<Product> getProducts() {
		List<Product> list = new ArrayList<Product>();
		Connection conn = null;
		ResultSet rs = null;
		String sql = "select * from product";

		try {
			conn = DB.getConn();
			rs = DB.getRs(conn, sql);
			while (rs.next()) {
				Product p = new Product();
				p.setId(rs.getInt("id"));
				p.setName(rs.getString("name"));
				p.setDescr(rs.getString("descr"));
				p.setNormalPrice(rs.getDouble("normalPrice"));
				p.setMemberPrice(rs.getDouble("memberPrice"));
				p.setPdate(rs.getTimestamp("pdate"));
				p.setCategoryId(rs.getInt("categoryId"));
				list.add(p);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DB.close(rs);
			DB.close(conn);
		}
		return list;
	}

	/*public List<Product> getProducts(int pageNo, int pageSize) {

		List<Product> list = new ArrayList<Product>();
		Connection conn = null;
		ResultSet rs = null;
		String sql = "select product.id,product.name,product.descr,product.normalprice,product.memberprice,product.pdate,product.categoryid"
				+ ", category.id cid,category.pid,category.name cname,category.descr cdescr,category.isleaf,category.grade"
				+ " from product join category on (product.categoryid = category.id) limit " + (pageNo - 1) * pageSize
				+ "," + pageSize;

		System.out.println(sql);

		try {
			conn = DB.getConn();
			rs = DB.getRs(conn, sql);
			while (rs.next()) {
				Product p = new Product();
				p.setId(rs.getInt("id"));
				p.setName(rs.getString("name"));
				p.setDescr(rs.getString("descr"));
				p.setNormalPrice(rs.getDouble("normalPrice"));
				p.setMemberPrice(rs.getDouble("memberPrice"));
				p.setPdate(rs.getTimestamp("pdate"));
				p.setCategoryId(rs.getInt("categoryId"));

				Category c = new Category();
				c.setId(rs.getInt("cid"));
				c.setPid(rs.getInt("pid"));
				c.setName(rs.getString("cname"));
				c.setDescr(rs.getString("cdescr"));
				c.setLeaf(rs.getInt("isleaf") == 0 ? true : false);
				c.setGrade(rs.getInt("grade"));

				p.setCategory(c);

				list.add(p);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DB.close(rs);
			DB.close(conn);
		}
		return list;

	}*/

	public void findProducts(  List<Product> list,
							  String keyword,
							  double lowNormalPrice,
							  double highNormalPrice,
							  double lowMemberPrice,
							  double highMemberPrice,
							  Date startPdate,
							  Date endPdate,
							  int categoryId
							 	) {
				
				Connection conn = null;
				ResultSet rs = null;
				String sql = "select * from product where 1=1";
				//int totalPages = 0;
				//String sqlCount = "";
				//ResultSet rsCount = null;
				
				if(categoryId != 0) {
					sql += " and categoryId = " + categoryId;
				}
				if(keyword != null && !keyword.trim().equals("")) {
					sql += " and name like '%" + keyword + "%' or descr like '%" + keyword + "%'";
				}
				if(lowNormalPrice >= 0) {
					sql += " and normalprice > " + lowNormalPrice;
				}
				if(highNormalPrice > 0) {
					sql += " and normalprice < " + highNormalPrice;
				}
				if(lowMemberPrice >= 0) {
					sql += " and memberprice > " + lowMemberPrice;
				}
				if(highMemberPrice >= 0) {
					sql += " and memberprice > " + highMemberPrice;
				}
				if(startPdate != null ) {
					sql += " pdate >" + new SimpleDateFormat("yyyy-MM-dd").format(startPdate);
				}
				if(endPdate != null ) {
					sql += " pdate <" + new SimpleDateFormat("yyyy-MM-dd").format(endPdate);
				}
				//是计算完整个页码之后才进行分页
				//sqlCount = sql.replaceFirst("select \\*", "select count(*)");
				
				//System.out.println("sqlCount = " + sqlCount);
				//fen ye 
				//sql += " limit " + (pageNo-1)*pageSize + "," + pageSize;
				//System.out.println(sql);
				
				try {
					conn = DB.getConn();
					
					//rsCount = DB.getRs(conn, sqlCount);
					//rsCount.next();
					//totalPages = (rsCount.getInt(1) + pageSize - 1) / pageSize;
					
					rs = DB.getRs(conn, sql);
					while(rs.next()) {
						Product p = new Product();
						p.setId(rs.getInt("id"));
						p.setName(rs.getString("name"));
						p.setDescr(rs.getString("descr"));
						p.setNormalPrice(rs.getDouble("normalPrice"));
						p.setMemberPrice(rs.getDouble("memberPrice"));
						p.setPdate(rs.getTimestamp("pdate"));
						p.setCategoryId(rs.getInt("categoryId"));
					list.add(p);
				}
				
				} catch (SQLException e) {
					
				} finally {
					DB.close(rs);
					DB.close(conn);
				}
					return ;

}

	public boolean updateProduct(Product p) {
		Connection conn = null;
		PreparedStatement pStmt = null;
		String sql = "update product set name=?,descr=?,normalPrice=?,memberPrice=?,categoryId=? where id=" + p.getId();

		try {
			conn = DB.getConn();
			pStmt = DB.CreatePStmt(conn, sql);
			pStmt.setString(1, p.getName());
			pStmt.setString(2, p.getDescr());
			pStmt.setDouble(3, p.getNormalPrice());
			pStmt.setDouble(4, p.getMemberPrice());
			pStmt.setInt(5, p.getCategoryId());
			pStmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		} finally {
			DB.close(pStmt);
			DB.close(conn);
		}

		return true;
	}

	public void deleteProductById(int[] idArray) {
		Connection conn = null;
		Statement stmt = null;
		for(int i = 0; i < idArray.length; i++) {
			try {
				conn = DB.getConn();
				stmt = DB.createStmt(conn);
				stmt.executeUpdate("delete from product where id = " + idArray[i]);
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				DB.close(stmt);
				DB.close(conn);
			}
		}
	}

	public boolean deleteProductByCategoryId(int categoryId) {
		return false;
	}

	public boolean addProduct(Product p) {
		Connection conn = null;
		PreparedStatement pStmt = null;
		String sql = "insert into product values(null,?,?,?,?,?,?)";

		try {
			conn = DB.getConn();
			pStmt = DB.CreatePStmt(conn, sql);
			pStmt.setString(1, p.getName());
			pStmt.setString(2, p.getDescr());
			pStmt.setDouble(3, p.getNormalPrice());
			pStmt.setDouble(4, p.getMemberPrice());
			pStmt.setTimestamp(5, p.getPdate());
			pStmt.setInt(6, p.getCategoryId());
			pStmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		} finally {
			DB.close(pStmt);
			DB.close(conn);
		}

		return true;
	}

	/*public int getTotalPages(int pageSize) {
		int totalPages = 1;
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		String sql = "select count(*) from product";

		try {
			conn = DB.getConn();
			stmt = DB.createStmt(conn);
			rs = stmt.executeQuery(sql);
			rs.next();
			int temp = rs.getInt(1);
			// System.out.println(temp);
			totalPages = (temp + pageSize - 1) / pageSize;
			// System.out.println(totalPages);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DB.close(rs);
			DB.close(stmt);
			DB.close(conn);
		}
		return totalPages;
	}*/

	/*
	 * (non-Javadoc)
	 * 
	 * @see cn.sina.ttjava_13.product.ProductDAO#getProduct(java.util.List, int,
	 * int) 閸︺劌绶遍崚棰侀獓閸濅礁鍨悰銊ф畱閸氬本妞傛潻妯垮厴瀵版鍩岄幀鑽ゆ畱妞ょ數鐖滈弫锟�
	 */
	/*public int getProduct(List<Product> products) {
		int totalPages = 0;
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		String sql = "select * from product limit " + (pageNo - 1) * pageSize + "," + pageSize;

		try {
			conn = DB.getConn();
			rs = DB.getRs(conn, sql);
			while (rs.next()) {
				Product p = new Product();
				p.setId(rs.getInt("id"));
				p.setName(rs.getString("name"));
				p.setDescr(rs.getString("descr"));
				p.setNormalPrice(rs.getDouble("normalPrice"));
				p.setMemberPrice(rs.getDouble("memberPrice"));
				p.setPdate(rs.getTimestamp("pdate"));
				p.setCategoryId(rs.getInt("categoryId"));
				products.add(p);
			}
			stmt = DB.createStmt(conn);
			ResultSet rsCount = DB.getRs(stmt, "select count(*) from product");
			rsCount.next();
			int temp = rsCount.getInt(1);
			totalPages = temp % pageSize == 0 ? temp / pageSize : temp / pageSize + 1;
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DB.close(rs);
			DB.close(conn);
		}
		return totalPages;

	}
*/
	
	public void deleteProductById(int id) {
		Connection conn = null;
		Statement stmt = null;
	
		try {
			conn = DB.getConn();
			stmt = DB.createStmt(conn);
			stmt.executeUpdate("delete from product where id = " + id);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DB.close(stmt);
			DB.close(conn);
		}
	}

	public Product loadById(int id) {
		Product product = new Product();
		Connection conn = null;
		ResultSet rs = null;
		String sql = "select * from product where id = " + id;

		try {
			conn = DB.getConn();
			rs = DB.getRs(conn, sql);
			if (rs.next()) {
				product.setId(rs.getInt("id"));
				product.setName(rs.getString("name"));
				product.setDescr(rs.getString("descr"));
				product.setNormalPrice(rs.getDouble("normalPrice"));
				product.setMemberPrice(rs.getDouble("memberPrice"));
				product.setPdate(rs.getTimestamp("pdate"));
				product.setCategoryId(rs.getInt("categoryId"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DB.close(rs);
			DB.close(conn);
		}
		return product;
	}

	/*public int findProducts(List<Product> list, String keyword, double lowNormalPrice, double highNormalPrice,
			double lowMemberPrice, double highMemberPrice, Date startPdate, Date endPdate, int[] categoryIds,
			int pageNo, int pageSize) {
		Connection conn = null;
		ResultSet rs = null;
		String sql = "select * from product where 1=1";

		int totalPages = 0;
		String sqlCount = "";
		ResultSet rsCount = null;

		if (categoryIds != null && categoryIds.length != 0) {
			String strIds = "(";
			for (int i = 0; i < categoryIds.length; i++) {
				if (i < categoryIds.length - 1) {
					strIds += categoryIds[i] + ",";
				} else {
					strIds += categoryIds[i];
				}
			}
			strIds += ")";
			sql += " and categoryId in " + strIds;
		}

		if (keyword != null && !keyword.trim().equals("")) {
			sql += " and name like '%" + keyword + "%' or descr like '%" + keyword + "%'";
		}
		if (lowNormalPrice >= 0) {
			sql += " and normalprice > " + lowNormalPrice;
		}
		if (highNormalPrice > 0) {
			sql += " and normalprice < " + highNormalPrice;
		}
		if (lowMemberPrice >= 0) {
			sql += " and memberprice > " + lowMemberPrice;
		}
		if (highMemberPrice >= 0) {
			sql += " and memberprice > " + highMemberPrice;
		}
		if (startPdate != null) {
			sql += " pdate >" + new SimpleDateFormat("yyyy-MM-dd").format(startPdate);
		}
		if (endPdate != null) {
			sql += " pdate <" + new SimpleDateFormat("yyyy-MM-dd").format(endPdate);
		}
		sqlCount = sql.replaceFirst("select \\*", "select count(*)");
		// System.out.println("sqlCount = " + sqlCount);

		sql += " limit " + (pageNo - 1) * pageSize + "," + pageSize;
		// System.out.println(sql);

		try {
			conn = DB.getConn();

			rsCount = DB.getRs(conn, sqlCount);
			rsCount.next();
			totalPages = (rsCount.getInt(1) + pageSize - 1) / pageSize;

			rs = DB.getRs(conn, sql);
			while (rs.next()) {
				Product p = new Product();
				p.setId(rs.getInt("id"));
				p.setName(rs.getString("name"));
				p.setDescr(rs.getString("descr"));
				p.setNormalPrice(rs.getDouble("normalPrice"));
				p.setMemberPrice(rs.getDouble("memberPrice"));
				p.setPdate(rs.getTimestamp("pdate"));
				p.setCategoryId(rs.getInt("categoryId"));
				list.add(p);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DB.close(rs);
			DB.close(conn);
		}
		return totalPages;
	}

	public List<Product> getLastestProduct(int count) {
		Connection conn = null;
		ResultSet rs = null;
		String sql = "select * from product order by pdate desc limit 0," + count;
		// System.out.println(sql);
		List<Product> list = new ArrayList<Product>();

		try {
			conn = DB.getConn();
			rs = DB.getRs(conn, sql);
			while (rs.next()) {
				list.add(this.initFromRs(rs));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DB.close(rs);
			DB.close(conn);
		}
		return list;
	}
	*/

	/*public int getProduct(List<Product> products) {
		int totalPages = 0;
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		String sql = "select * from product limit " + (pageNo-1)*pageSize + "," + pageSize;
		
		try {
			conn = DB.getConn();
			rs = DB.getRs(conn, sql);
			while(rs.next()) {
				Product p = new Product();
				p.setId(rs.getInt("id"));
				p.setName(rs.getString("name"));
				p.setDescr(rs.getString("descr"));
				p.setNormalPrice(rs.getDouble("normalPrice"));
				p.setMemberPrice(rs.getDouble("memberPrice"));
				p.setPdate(rs.getTimestamp("pdate"));
				p.setCategoryId(rs.getInt("categoryId"));
				products.add(p);
			}
			stmt = DB.createStmt(conn);
			ResultSet rsCount = DB.getRs(stmt, "select count(*) from product");
			rsCount.next();
			int temp = rsCount.getInt(1);
			totalPages = temp % pageSize == 0 ? temp/pageSize : temp/pageSize + 1;
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DB.close(rs);
			DB.close(conn);
		}
		return totalPages;
	
	
	}*/
	
	private Product initFromRs(ResultSet rs) {
		Product p = new Product();
		try {
			p.setId(rs.getInt("id"));
			p.setName(rs.getString("name"));
			p.setDescr(rs.getString("descr"));
			p.setNormalPrice(rs.getDouble("normalprice"));
			p.setMemberPrice(rs.getDouble("memberprice"));
			p.setPdate(rs.getTimestamp("pdate"));
			p.setCategoryId(rs.getInt("categoryid"));
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return p;
	}

	@Override
	public List<Product> simpleFindProduct(String keyword) {
		Connection conn = null ;
		ResultSet rs = null ;
		List<Product> products = new ArrayList<Product>() ;
		System.out.println(products);
		String sql = "select * from product where 1=1" ;
		if(keyword != null && !keyword.trim().equals("")) {
			 sql += " and name like '%" + keyword + "%' or descr like '%" + keyword + "%'";
		}
		
		System.out.println("keyword  " + keyword);
		
		try {
			conn = DB.getConn() ;
			rs = DB.getRs(conn, sql) ;
			while(rs.next()) {
				Product p = new Product();
				p.setId(rs.getInt("id"));
				p.setName(rs.getString("name"));
				p.setDescr(rs.getString("descr"));
				p.setNormalPrice(rs.getDouble("normalPrice"));
				p.setMemberPrice(rs.getDouble("memberPrice"));
				p.setPdate(rs.getTimestamp("pdate"));
				p.setCategoryId(rs.getInt("categoryId"));
				products.add(p) ;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			DB.close(conn);
			DB.close(rs);
		}
		return products;
	}

	
}
