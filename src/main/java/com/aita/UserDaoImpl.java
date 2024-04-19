package com.aita;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class UserDaoImpl implements UserDao
{
	@Autowired
	private JdbcTemplate jdbcTemplate;
	@Override
	public List<UserData> loadUsers() 
	{
		String sql = "select * from aita.userData";
		
		List<UserData> userList = jdbcTemplate.query(sql, new UserRowMapper());
		
		return userList;
	}
	
	@Override
	public void saveUser(UserData user) 
	{
		//logic store data in database
		Object[] userParameters = {user.getName(),user.getMobile(),user.getEmail(),user.getPassword(),user.getcPassword()};
		
		String query = "insert into userData(name,mobile,email,password,cPassword) values(?,?,?,?,?)";
		jdbcTemplate.update(query, userParameters);
		
		System.out.println("Record Inserted");
	}

	@Override
	public UserData getUser(String mobile) 
	{
		String query = "select * from userData where mobile=?";
		UserData userData = jdbcTemplate.queryForObject(query, new UserRowMapper(), mobile);
		return userData;
	}

	@Override
	public void updateUser(UserData user) 
	{
		Object[] userParameters = {user.getName(),user.getEmail(),user.getPassword(),user.getcPassword(),user.getMobile()};
		String query = "update userData set name=?,email=?,password=?,cPassword=? where mobile=?";
		jdbcTemplate.update(query, userParameters);
		System.out.println("Record Updated");
	}

	@Override
	public UserData getUserData(String mobile, String password) 
	{
		//Object[] userParameters = {user.getName(),user.getEmail(),user.getPassword(),user.getcPassword(),user.getMobile()};
		String query = "select * from userData where mobile=? and password=?";
		UserData userData=jdbcTemplate.queryForObject(query, new UserRowMapper(), mobile,password);
		//System.out.println(userData);
		return userData;
	}

	@Override
	public List<UserAddress> loadAddress(String mobile) 
	{
		
		String sql = "select * from userAddress where mobile="+mobile;
		//System.out.println(mobile);
		List<UserAddress> userAdrs = jdbcTemplate.query(sql, new UserAdrsRowMapper());
		
		return userAdrs;	
	}

	@Override
	public void saveUserAdrs(UserAddress user) 
	{
		Object[] userParameters = {user.getHouseno(),user.getStreet(),user.getCity(),user.getState(),user.getMobile(),user.getsId()};
		
		String query = "insert into userAddress(HNo,street,city,state,mobile,sId) values(?,?,?,?,?,?)";
		jdbcTemplate.update(query, userParameters);
		
		System.out.println("Address Inserted");	
		
	}

	

	

} 	
