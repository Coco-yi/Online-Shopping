package hdw.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import hdw.bean.CartItem;
import hdw.bean.Product;
import hdw.shopping.ProductManager;
import hdw.util.DB;

public class CartMysqlDAO implements CartDAO{

	@Override
	public void addItem(int userid, int productid,int pcount) {
		Connection conn = null;
		PreparedStatement pStmt = null;
		Product p = ProductManager.getInstance().getProduct(productid) ;
		System.out.println(p.getName());
		String sql = "insert into cartlist values(?,?,?,?,?,?)";

		try {
			conn = DB.getConn();
			pStmt = DB.CreatePStmt(conn, sql);
			pStmt.setInt(1, userid);
			pStmt.setString(2, p.getName());
			pStmt.setDouble(3, p.getNormalPrice());
			pStmt.setDouble(4, p.getMemberPrice());
			pStmt.setInt(5, pcount);
			pStmt.setInt(6, p.getId());
			pStmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DB.close(pStmt);
			DB.close(conn);
		}
		
	}

	@Override
	public List<CartItem> getCartlist(int userid) {
		List<CartItem> list = new ArrayList<CartItem>();
		Connection conn = null;
		ResultSet rs = null;
		String sql = "select * from cartlist where userid = " +"'" + userid + "'" ;

		try {
			conn = DB.getConn();
			rs = DB.getRs(conn, sql);
			while (rs.next()) {
				CartItem c = new CartItem();
				//int userid = rs.getInt("userid") ;
				String name = rs.getString("name") ;
				int normalPrice = rs.getInt("normalPrice") ;
				int memberPrice = rs.getInt("memberPrice") ;
				int pcount = rs.getInt("pcount") ;
				int productid = rs.getInt("productid") ;
				c.setUserid(userid);
				c.setName(name);
				c.setNormalPrice(normalPrice);
				c.setMemberPrice(memberPrice);
				c.setPcount(pcount);
				c.setProductid(productid);
				list.add(c) ;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DB.close(rs);
			DB.close(conn);
		}
		return list;
	}

	@Override
	public List<CartItem> getCartlist() {
		List<CartItem> list = new ArrayList<CartItem>();
		Connection conn = null;
		ResultSet rs = null;
		String sql = "select * from cartlist" ;

		try {
			conn = DB.getConn();
			rs = DB.getRs(conn, sql);
			while (rs.next()) {
				CartItem c = new CartItem();
				int userid = rs.getInt("userid") ;
				String name = rs.getString("name") ;
				int normalPrice = rs.getInt("normalPrice") ;
				int memberPrice = rs.getInt("memberPrice") ;
				int pcount = rs.getInt("pcount") ;
				int productid = rs.getInt("productid") ;
				c.setUserid(userid);
				c.setName(name);
				c.setNormalPrice(normalPrice);
				c.setMemberPrice(memberPrice);
				c.setPcount(pcount);
				c.setProductid(productid);
				list.add(c) ;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DB.close(rs);
			DB.close(conn);
		}
		return list;
	}

}
