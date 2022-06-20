package in.hotel.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import in.hotel.entity.Booking;
import in.hotel.entity.Users;
import in.hotel.util.DBConnection;

public class BookingDAOimpl implements BookingDAO {

	@Override
	public boolean BookingSave(Booking e) {
		boolean flag = false;
		try {
			
			String sql = "INSERT INTO book( email , indate , outdate , type , persons , hotel , tel ) VALUES ( '"+e.getEmail()+"' , '"+e.getIndate()+"' , '"+e.getOutdate()+"' , '"+e.getRtype()+"' , '"+e.getPersons()+"' , '"+e.getHotel()+"' , '"+e.getPhone()+"')";
			Connection connection = DBConnection.openConnection();
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			preparedStatement.executeUpdate();
			flag = true;
		} catch (SQLException e2) {
			e2.printStackTrace();
		}
		return flag;
	}
	
	public boolean delete(int bid) {
		boolean flag = false;
		try {
			String sql = "DELETE FROM book WHERE bid="+bid;
			Connection connection = DBConnection.openConnection();
			PreparedStatement preparedstatement = connection.prepareStatement(sql);
			preparedstatement.executeUpdate();
			flag = true;
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return flag;
	}
	
	}
