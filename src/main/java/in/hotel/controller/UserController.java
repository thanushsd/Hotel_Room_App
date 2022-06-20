package in.hotel.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.Multipart;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.hotel.dao.UserDAO;
import in.hotel.dao.UserDAOimpl;
import in.hotel.entity.Users;

@WebServlet("/UserController")
public class UserController extends HttpServlet {
	
	private String host;
    private String port;
    private String user;
    private String pass;
 
    public void init() {
        // reads SMTP server setting from web.xml file
        ServletContext context = getServletContext();
        host = context.getInitParameter("host");
        port = context.getInitParameter("port");
        user = context.getInitParameter("user");
        pass = context.getInitParameter("pass");
    }
	
	private static final long serialVersionUID = 102831973239L;
	
	UserDAO userDAO = null;
	public UserController() {
		userDAO = new UserDAOimpl();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String pw = request.getParameter("pw");
		String email = request.getParameter("email");
		
		Users e = new Users();
		e.setFname(fname);
		e.setLname(lname);
		e.setEmail(email);
		e.setPassword(pw);
		
		if(userDAO.save(e)) {
			request.setAttribute("messege", "Registered Successfully");
		}
		
		// reads form fields
        String recipient = request.getParameter("email");
        String subject = "Registration Successfull";
        String content = "You Have Successfully Created Your Account";
 
        String resultMessage = "";
 
        try {
            EmailUtility.sendEmail(host, port, user, pass, recipient, subject,
                    content);
            resultMessage = "The e-mail was sent successfully";
        } catch (Exception ex) {
            ex.printStackTrace();
            resultMessage = "There were an error: " + ex.getMessage();
        } finally {
            request.setAttribute("Message", resultMessage);
            getServletContext().getRequestDispatcher("/login.jsp").forward(
                    request, response);
        }
		
	    
		
//		RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
//		dispatcher.forward(request, response);
	}
}
