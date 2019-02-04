package hdw.shopping;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import hdw.bean.User;
import hdw.util.DB;

public class UserManager {

	public static List<User> DisplayUserList() {
		List<User> UserList = new ArrayList<User>() ;
		String sql = "select * from user" ;
		Connection conn = null ;
		ResultSet rs = null ;
		try {
			conn = DB.getConn() ;
			rs = DB.getRs(conn, sql) ;
			while(rs.next()) {
				User u = new User() ;
				u.setId(rs.getInt("id"));
				u.setUsername(rs.getString("username"));
				u.setPhone(rs.getString("phone"));
				u.setPassword(rs.getString("password"));
				u.setAddr(rs.getString("addr"));
				u.setRdate(rs.getTimestamp("rdate"));
				UserList.add(u) ;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			DB.close(conn) ;
			DB.close(rs) ;
		}
		
		return UserList ;
	}
	
	public static void UserDetele(int id) {
		Connection conn = null ;
		Statement stmt = null ;
		try {
			conn = DB.getConn() ;
			stmt = DB.createStmt(conn);
			stmt.executeUpdate("delete from user where id = " + id);
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			DB.close(stmt);
			DB.close(conn);
		}
	}

	public static User isCorrectUser(String username,String password) throws UserNotFoundException, PasswordErrException {
			
		Connection conn = null;
		ResultSet rs = null;
		String sql = "select * from user where username= '" + username + "'";
		User u = null;
		
		try {
			conn = DB.getConn();
			rs = DB.getRs(conn, sql);
			if(!rs.next()) {
				throw new UserNotFoundException();
			}else if(!rs.getString("password").equals(password)) {
				throw new PasswordErrException();
			}else {
				u = new User();
				u.setId(rs.getInt("id"));
				u.setUsername(rs.getString("username"));
				u.setPassword(rs.getString("password"));
				u.setPhone(rs.getString("phone"));
				u.setAddr(rs.getString("addr"));
				u.setRdate(rs.getTimestamp("rdate"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DB.close(rs);
			DB.close(conn);
		}
		return u;
		}

	public static void UpdateUser(User u) {
		Connection conn = null;
		PreparedStatement pStmt = null;
		String sql = "update user set username=?,phone=?,addr=? where id=" + u.getId() ;
		try {
			conn = DB.getConn();
			pStmt = DB.CreatePStmt(conn, sql);
			//System.out.println(u.getUsername() + "haha");
			pStmt.setString(1,u.getUsername());
			pStmt.setString(2,u.getPhone());
			pStmt.setString(3,u.getAddr());
			pStmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DB.close(pStmt);
			DB.close(conn);
		}
	}
}
