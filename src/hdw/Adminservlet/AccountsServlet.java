package hdw.Adminservlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import hdw.bean.User;
import hdw.shopping.UserManager;
import hdw.util.DB;

@WebServlet("/admin/accounts")
public class AccountsServlet extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8") ;
		
		System.out.println(request.getSession().getAttribute("Adminlogin").equals("true"));
		
		String id = request.getParameter("id") ;
		//显示用户列表
		if(request.getSession().getAttribute("Adminlogin").equals("true")) {
			List<User> UserList = UserManager.DisplayUserList() ;
			request.setAttribute("UserList", UserList);
			request.getRequestDispatcher("/admin/accounts.jsp").forward(request, response);
		}else {
			response.sendRedirect("admin/login.html");
			return ;
		}
		//删除用户
		if(id != null && !id.equals("")) {
			System.out.println("删除");
			UserManager.UserDetele(Integer.parseInt(id)) ;
		}
		
	}
	
}
