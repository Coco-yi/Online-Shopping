package hdw.FrontServlet;

import java.io.IOException;
import java.sql.Connection;
import java.util.Date;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;

import hdw.bean.User;
import hdw.util.DB;

@WebServlet("/servlet/RegisterTo")
public class RegisterToServlet extends HttpServlet {
	@Override
	public void service(ServletRequest Request, ServletResponse Response) throws ServletException, IOException {
		System.out.println("Servlet类成功") ;
		Request.setCharacterEncoding("UTF-8");
		Response.setCharacterEncoding("UTF-8");
		//用户注册成功后，保存进数据库
		String username = Request.getParameter("username") ;
		String password = Request.getParameter("pwd") ;
		String phone = Request.getParameter("phone") ;
		String addr = Request.getParameter("addr") ;
		User u = new User() ;
		u.setUsername(username);
		u.setPassword(password);
		u.setPhone(phone);
		u.setAddr(addr);
		
		Date date = new Date() ;
		SimpleDateFormat f=new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		f.format(date);
		u.setRdate(new Date());
		
		Connection conn = null ;
		String sql = "insert into user values(null,?,?,?,?,?)" ;
		PreparedStatement pstmt = null ;
		
		try {
			conn = DB.getConn() ;
			pstmt = DB.CreatePStmt(conn, sql) ;
			pstmt.setString(1, username);
			pstmt.setString(2, password);
			pstmt.setString(3, phone);
			pstmt.setString(4, addr);
			
			pstmt.setDate(5,new java.sql.Date(u.getRdate().getTime()));
			pstmt.executeUpdate() ;
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			DB.close(conn);
		}
		
		
		Request.getRequestDispatcher("/register.jsp").forward(Request,Response);
		
	}
}
