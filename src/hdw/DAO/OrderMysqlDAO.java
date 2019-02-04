package hdw.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import hdw.bean.CartItem;
import hdw.bean.SaleOrder;
import hdw.shopping.CartManager;
import hdw.util.DB;

public class OrderMysqlDAO {
	
	public void addOrder(SaleOrder order) {
		Connection conn = null;
		PreparedStatement pStmt = null;
		String sql = "insert into salesorder values(null,?,?,?,?)";
		ResultSet rs = null;
		
		try {
			conn = DB.getConn();
			
			conn.setAutoCommit(false);
			
			pStmt = DB.createPreparedStmt(conn, sql,true);
			pStmt.setInt(1,order.getUser().getId());
			pStmt.setString(2,order.getAddr());
			pStmt.setTimestamp(3,order.getOdate());
			pStmt.setDouble(4, order.getStatus());
			pStmt.executeUpdate();
			
			rs = pStmt.getGeneratedKeys();
			rs.next();
			int key = rs.getInt(1);
			
			String sqlItem = "insert into salesitem values(null,?,?,?,?)";
			pStmt = DB.CreatePStmt(conn, sqlItem);
			
			//CartItem cart = order.getCart();
			List<CartItem> list = CartManager.getInstance().getCartlist() ;
			for(int i=0;i<list.size();i++) {
				CartItem ci = list.get(i);
				
				pStmt.setInt(1, ci.getProductid());
				pStmt.setDouble(2, ci.getNormalPrice());
				pStmt.setInt(3, ci.getPcount());
				pStmt.setInt(4,key);
				pStmt.addBatch();
			}
			pStmt.executeBatch();
			
			conn.commit();
			conn.setAutoCommit(true);
			
		} catch (SQLException e) {
			e.printStackTrace();
			try {
				conn.setAutoCommit(true);
				conn.rollback();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
		} finally {
			DB.close(rs);
			DB.close(pStmt);
			DB.close(conn);
		}
		
	}

	
}
