package hdw.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

import hdw.bean.Category;
import hdw.util.DB;

public class CategoryDAO {
	public static void save(Category c) {
		Connection conn = null;
		PreparedStatement pStmt = null;
		String sql = "insert into category values(null,?,?,?,?,?)";
		
		try {
			conn = DB.getConn();
			pStmt = DB.CreatePStmt(conn, sql);
			//pStmt.setInt(1, c.getId());
			pStmt.setInt(1, c.getPid());
			pStmt.setString(2, c.getName());
			pStmt.setString(3, c.getDescr());
			pStmt.setInt(4, c.isLeaf()? 0 : 1);
			pStmt.setInt(5, c.getGrade());
			pStmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DB.close(pStmt);
			DB.close(conn);
		}
	}
	
	public static void addChild(Category c) {
		Connection conn = null;
		PreparedStatement pStmt = null;
		Statement stmt = null;
		String sql = "insert into category values(null,?,?,?,?,?)";
		
		conn = DB.getConn();
		pStmt = DB.CreatePStmt(conn, sql);
		try {
			conn.setAutoCommit(false);
			
			//pStmt.setInt(1, c.getId());
			pStmt.setInt(1, c.getPid());
			pStmt.setString(2, c.getName());
			pStmt.setString(3, c.getDescr());
			pStmt.setInt(4, c.isLeaf()? 0 : 1);
			pStmt.setInt(5, c.getGrade());
			pStmt.executeUpdate();
			
			stmt = DB.createStmt(conn);
			stmt.executeUpdate("update category set isleaf = 1 where id=" + c.getPid());
			
			conn.commit();
			conn.setAutoCommit(true);
			
		} catch (SQLException e) {
			try {
				conn.rollback();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
			e.printStackTrace();
		} finally {
			DB.close(stmt);
			DB.close(pStmt);
			DB.close(conn);
		}
		
	}
	
	public static Category loadById(int id) {
    	Connection conn = null;
    	ResultSet rs = null;
    	Category c = new Category();
    	String sql = "select * from category where id =" + id;
    	//System.out.println(sql);
    	try {
    		conn = DB.getConn();
    		rs = DB.getRs(conn, sql);
    		while(rs.next()) {
				c.setId(rs.getInt("id"));
				c.setPid(rs.getInt("pid"));
				c.setName(rs.getString("name"));
				c.setDescr(rs.getString("descr"));
				c.setLeaf(rs.getInt("isleaf") == 0 ? true:false);
				c.setGrade(rs.getInt("grade"));
    		}
    	} catch (SQLException e) {
    		e.printStackTrace();
    	} finally {
    		DB.close(rs);
    		DB.close(conn);
    	}
    	return c;
    }
	
	public static void getCategories(List<Category> categories,int id) {
		Connection conn = null;
		try {
			conn = DB.getConn();
			getCategories(conn,categories,id);
		} finally {
			DB.close(conn);
		}
		
	}
	
	private static void getCategories(Connection conn,List<Category> categories,int id) {
		ResultSet rs = null;
		String sql = "select * from category where pid = " + id;
		
		try {
			rs = DB.getRs(conn, sql);
			while(rs.next()) {
				Category c = new Category();
				c.setId(rs.getInt(1));
				c.setPid(rs.getInt(2));
				c.setName(rs.getString(3));
				c.setDescr(rs.getString(4));
				c.setLeaf(rs.getInt(5) == 0 ? true:false);
				c.setGrade(rs.getInt(6));
				categories.add(c);
				if(!c.isLeaf()) {
					getCategories(conn,categories,c.getId());
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DB.close(rs);
		}
		
	}
	
	public static void deleteCategory(int id,int pid) {
    	Connection conn = null;
    	Statement stmt = null;
    	ResultSet rs = null;
    	try {
    		conn = DB.getConn();
    		stmt = DB.createStmt(conn);
    		rs = DB.getRs(stmt, "select * from category where pid = " + id);
			while(rs.next()) {
				deleteCategory(rs.getInt("id"),pid);
			}
			DB.executeUpdate(conn, "delete from category where id = " + id);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DB.close(rs);
			DB.close(stmt);
			DB.close(conn);
		}
   
    }
	
	public static void update(int pid) {
    	/*
    	 * 注意什么时候是pid 什么时候是id
    	 * */
    	Connection conn = null;
    	Statement stmt = null;
    	ResultSet rs = null;
    	
    	try {
    		conn = DB.getConn();
    		stmt = DB.createStmt(conn);
    		rs = DB.getRs(stmt, "select count(*) from category where pid = " + pid);
    		rs.next();
    		int count = rs.getInt(1);
    		if(count <= 0) {
    			DB.executeUpdate(conn, "update category set isleaf = 0 where id = " + pid);
    		}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DB.close(rs);
			DB.close(stmt);
			DB.close(conn);
		}
    }

    public static void updateCategory(Category c) {
    	Connection conn = null;
    	PreparedStatement pStmt = null;
    	int id = c.getId();
    	//System.out.println(id);
    	String sql = "update category set name=?,descr=? where id = " + id;
    	
    	try {
    		conn = DB.getConn();
    		pStmt = DB.CreatePStmt(conn, sql);
    		pStmt.setString(1, c.getName());
    		pStmt.setString(2, c.getDescr());
    		pStmt.executeUpdate();
    	} catch (SQLException e) {
    		e.printStackTrace();
    	} finally {
    		DB.close(pStmt);
    		DB.close(conn);
    	}
    }
	
}
