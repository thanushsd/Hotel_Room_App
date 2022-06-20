package in.hotel.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import org.apache.catalina.User;

import in.hotel.entity.Users;
import in.hotel.util.DBConnection;

public class UserDAOimpl implements UserDAO {
	
	Connection connection = null;
	Statement statement = null;
	ResultSet resultset = null;
	PreparedStatement preparedStatement = null;

	public boolean save( Users e) {
		boolean flag = false;
		try {
			
			String sql = "INSERT INTO user( fname , lname , email , password ) VALUES ( '"+e.getFname()+"' , '"+e.getLname()+"' , '"+e.getEmail()+"' , '"+e.getPassword()+"')";
			connection = DBConnection.openConnection();
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.executeUpdate();
			flag = true;
		} catch (SQLException e2) {
			e2.printStackTrace();
		}
		return flag;
	}
}
