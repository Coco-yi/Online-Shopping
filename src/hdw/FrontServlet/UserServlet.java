package hdw.FrontServlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import hdw.bean.User;
import hdw.shopping.PasswordErrException;
import hdw.shopping.UserManager;
import hdw.shopping.UserNotFoundException;

@WebServlet("/UserServlet")
public class UserServlet extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8") ;
		
		System.out.println("用户服务Servlet启动");
		
		String username = request.getParameter("username") ;
		String password = request.getParameter("password") ;
		if(username != null && password != null) {
			boolean isUser = false ;
			User user = null ;
			try {
				user = UserManager.isCorrectUser(username, password) ;
			}catch(UserNotFoundException | PasswordErrException e){
				response.getWriter().print("<script>alert(\"用户名或密码错误\");</script>");
				response.sendRedirect("login.jsp");
				System.out.println("用户登陆失败");
				return ;
			}
			request.getSession().setAttribute("User", user);
			request.getSession().setAttribute("UserLogin", "true");
			request.getSession().setMaxInactiveInterval(30*60);
			request.getRequestDispatcher("/account.jsp").forward(request, response);
			System.out.println("用户登陆成功");
			return ;
		}
		if(request.getParameter("req").equals("update")) {
			System.out.println("用户更新");
			User u = (User)request.getSession().getAttribute("User") ;
			//int id = Integer.parseInt(request.getParameter("id"));
			String uusername = request.getParameter("accusername");
			String phone = request.getParameter("phone");
			String addr = request.getParameter("addr") ;
			String npassword = request.getParameter("password") ;
			//System.out.println(u);
			//u.setId(id);
			
			System.out.println(addr);
			
			u.setUsername(uusername);
			//System.out.println(user.getUsername());
			u.setPhone(phone);
			u.setAddr(addr);
			u.setPassword(npassword);
			UserManager.UpdateUser(u);
			request.getRequestDispatcher("/account.jsp").forward(request, response);
		}else {
			request.getRequestDispatcher("/account.jsp").forward(request, response);
		}
		
		
	}

}
