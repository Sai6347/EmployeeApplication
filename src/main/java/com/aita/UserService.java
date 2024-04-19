package com.aita;

import java.util.List;

public interface UserService 
{
	List<UserData> loadUsers();

	void saveUser(UserData user);
	
	UserData getUser(String mobile);

	void updateUserData(UserData user);

	UserData getUserData(String mobile, String password);

	List<UserAddress> loadAddress(String mobile);

	void saveUserAdrs(UserAddress user);
}
