package com.aita;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class UserAdrsRowMapper implements RowMapper<UserAddress>
{
	@Override
	public UserAddress mapRow(ResultSet rs, int rowNum) throws SQLException 
	{
		UserAddress user = new UserAddress();
		user.setHouseno(rs.getString("Hno"));
		user.setStreet(rs.getString("street"));
		user.setCity(rs.getString("city"));
		user.setState(rs.getString("state"));
		user.setsId(rs.getString("sId"));
		return user;
	}

}
