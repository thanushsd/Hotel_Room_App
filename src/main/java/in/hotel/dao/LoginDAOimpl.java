package in.hotel.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import in.hotel.entity.Login;
import in.hotel.util.DBConnection;

public class LoginDAOimpl implements LoginDAO {

	@Override
	public String authenticate(Login login) {
		String sql = "SELECT * FROM user WHERE email=? AND password=?";
		
		try {
			
			Connection connection = DBConnection.openConnection();
			PreparedStatement ps = connection.prepareStatement(sql);
			ps.setString(1, login.getEmail());
			ps.setString(2, login.getPw());
			ResultSet rs = ps.executeQuery();
			
			if (rs.next()) {
				return "true";
			} else {
				return "false";
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "error";
	}

	@Override
	public Login get(int id) {
		Login login = null;
		try {
			login = new Login();
			String sql = "SELECT FROM user WHERE id="+id;
			Connection connection = DBConnection.openConnection();
			Statement statement = connection.createStatement();
			ResultSet resultset = statement.executeQuery(sql);
			while (resultset.next()) {
				login.setId(resultset.getInt("id"));
				login.setEmail(resultset.getString("email"));
				login.setName(resultset.getString("name"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		System.out.println(login.getName());
		return login;
	}
}
