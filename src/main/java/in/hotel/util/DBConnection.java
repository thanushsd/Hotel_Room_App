package in.hotel.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
	
	//Define the database properties
		private static final String URL = "jdbc:mysql://localhost:3306/hotel";
		
		private static final String DRIVER = "com.mysql.jdbc.Driver";
		
		private static final String USERNAME = "root";
		
		private static final String PASSWORD = "12345678";
		
		private static Connection connection = null;
		
		//Get the database connection
		public static Connection openConnection() {
			if (connection != null)
	            return connection;
	        else {
	            try {
	                Class.forName(DRIVER);
	                connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);
	            } catch (ClassNotFoundException e) {
	                e.printStackTrace();
	            } catch (SQLException e) {
	                e.printStackTrace();
	            } 
	            return connection;
	        }
		}

}
