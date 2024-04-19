package com.aita;

import java.util.List;

public interface UserDao 
{
	public List<UserData> loadUsers();
	
	void saveUser(UserData user);
	
	UserData getUser(String mobile);
	
	void updateUser(UserData user);
	
	UserData getUserData(String mobile,String password);
	
	
	List<UserAddress> loadAddress(String mobile);

	void saveUserAdrs(UserAddress user);
}
