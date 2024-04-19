package com.aita;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService
{
	@Autowired
	private UserDao userDao;
	
	@Override
	public List<UserData> loadUsers() 
	{
		List<UserData> userList = userDao.loadUsers();
		return userList;
	}
	@Override
	public void saveUser(UserData user) 
	{
		userDao.saveUser(user);
	}
	@Override
	public UserData getUser(String mobile) 
	{
		return userDao.getUser(mobile);
	}
	@Override
	public void updateUserData(UserData user) 
	{
		// TODO Auto-generated method stub
		userDao.updateUser(user);
	}
	@Override
	public UserData getUserData(String mobile, String password) 
	{
		return userDao.getUserData(mobile,password);
		
	}

	@Override
	public List<UserAddress> loadAddress(String mobile) 
	{
		List<UserAddress> userAdrs = userDao.loadAddress(mobile);
		return userAdrs;
	}
	@Override
	public void saveUserAdrs(UserAddress user) 
	{
		userDao.saveUserAdrs(user);
		
	}
	
	
	

}
