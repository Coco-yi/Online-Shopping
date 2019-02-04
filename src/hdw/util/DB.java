package hdw.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DB {

	static {
		try {
			Class.forName("com.mysql.jdbc.Driver") ;
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	
	public static Connection getConn() {
		Connection conn = null ;
		try {
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ShopOL?serverTimezone=GMT%2B8","root","h123456") ;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return conn ;
	}
	
	public static Statement createStmt(Connection conn) {
		Statement Stmt = null;
		try {
			Stmt = conn.createStatement() ;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return Stmt ;
	}

	public static PreparedStatement CreatePStmt(Connection conn, String sql) {
		PreparedStatement PStmt = null ;
		try {
			PStmt = conn.prepareStatement(sql) ;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return PStmt ;
	}
	
	public static PreparedStatement createPreparedStmt(Connection conn,String sql,boolean generatedKey) {
		PreparedStatement pStmt = null;
		try {
			pStmt = conn.prepareStatement(sql,Statement.RETURN_GENERATED_KEYS);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return pStmt;
	}
	
	public static ResultSet getRs(Statement stmt,String sql) {
		ResultSet rs = null;
		try {
			rs = stmt.executeQuery(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return rs;
	}
	
	public static ResultSet getRs(Connection conn,String sql) {
		ResultSet rs = null;
		try {
			rs = conn.createStatement().executeQuery(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return rs;
	}
	
	public static void executeUpdate(Connection conn,String sql) {
		Statement stmt = null;
		try {
			stmt = conn.createStatement();
			stmt.executeUpdate(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DB.close(stmt);
		}
	}
	
	public static void close(Connection conn) {
		try{
			if(conn != null) {
				conn.close();
				conn = null;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public static void close(Statement stmt) {
		try{
			if(stmt != null) {
				stmt.close();
				stmt = null;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public static void close(PreparedStatement pStmt) {
		try{
			if(pStmt != null) {
				pStmt.close();
				pStmt = null;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public static void close(ResultSet rs) {
		try{
			if(rs != null) {
				rs.close();
				rs = null;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
