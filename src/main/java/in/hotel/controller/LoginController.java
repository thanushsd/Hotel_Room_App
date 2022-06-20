package in.hotel.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import in.hotel.dao.LoginDAO;
import in.hotel.dao.LoginDAOimpl;
import in.hotel.entity.Login;

public class LoginController extends HttpServlet {
	
	LoginDAO loginDAO = null;
	
	public LoginController() {
	    loginDAO = new LoginDAOimpl();
	}	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		HttpSession  session = req.getSession();
		Login login = new Login();
		login.setEmail(req.getParameter("email"));
		login.setPw(req.getParameter("pw"));
		
		String status = loginDAO.authenticate(login);
		
		if (status.equals("true")) {
			session.setAttribute("email", login.getEmail());
			
			resp.sendRedirect("account.jsp?status=true");
		}
		
		if (status.equals("false")) {
			resp.sendRedirect("login.jsp?status=false");
		}
		
		if (status.equals("error")) {
			resp.sendRedirect("login.jsp?status=false");
		}	
	}
	
	public void getName(HttpServletRequest request , HttpServletResponse response) {
		String id = request.getParameter("id");
		loginDAO.get(Integer.parseInt(id));
	}
}
