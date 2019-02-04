package hdw.Adminservlet;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import hdw.bean.User;
import hdw.util.DB;

@WebServlet("/admin/login")
public class AdminServlet extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8") ;
		
		System.out.println("登入后台");
		String username = request.getParameter("username") ;
		String password = request.getParameter("password") ;
		
		//System.out.println(username + password);
		//System.out.println(username.equals(username) && password.equals(password));
		
		if(username.equals("admin") && password.equals("password")) {
			System.out.println("登入后台2");
			HttpSession session = request.getSession() ;
			session.setAttribute("Adminlogin","true");
			session.setMaxInactiveInterval(30*60);
			request.getRequestDispatcher("/admin/index.jsp").forward(request, response);
			
		}
		else {
			System.out.println("登入失败");
			request.getRequestDispatcher("/admin/login.html").forward(request, response);
		}
		
	}
	
}
