package in.hotel.dao;

import in.hotel.entity.Login;

public interface LoginDAO {
	
	String authenticate(Login login);
	
	Login get(int id);

}
