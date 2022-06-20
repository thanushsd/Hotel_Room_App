package in.hotel.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.hotel.dao.BookingDAO;
import in.hotel.dao.BookingDAOimpl;
import in.hotel.dao.UserDAO;
import in.hotel.dao.UserDAOimpl;
import in.hotel.entity.Booking;

/**
 * Servlet implementation class BookingController
 */
@WebServlet("/BookingController")
public class BookingController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	BookingDAO bookingDAO = null;
	public BookingController() {
		bookingDAO = new BookingDAOimpl();
	}
		
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String action = request.getParameter("action");
		
		if (action == "DELETE") {
		    action = "DELETE";
		}
		
		switch (action) {
		
		case "DELETE":
		deleteBooking(request , response);
		break;
		}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String indate = request.getParameter("indate");
		String outdate = request.getParameter("outdate");
		String room = request.getParameter("room");
		String persons = request.getParameter("persons");
		String hotel = request.getParameter("hotel");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		
		Booking e = new Booking();
		e.setIndate(indate);
		e.setOutdate(outdate);
		e.setRtype(room);
		e.setPersons(persons);
		e.setHotel(hotel);
		e.setPhone(phone);
		e.setEmail(email);
		
		if(bookingDAO.BookingSave(e)) {
			request.setAttribute("BookMessege", "Booking Confirmed !");
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("account.jsp");
		dispatcher.forward(request, response);
	}
	
	public void deleteBooking( HttpServletRequest request , HttpServletResponse response ) throws ServletException , IOException {
		String bid = request.getParameter("bid");
		if ( bookingDAO.delete(Integer.parseInt(bid))) {
			request.setAttribute("messege" , "Booking Cenceled Successfully");
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("account.jsp");
			dispatcher.forward(request, response);
		}
	}
}
