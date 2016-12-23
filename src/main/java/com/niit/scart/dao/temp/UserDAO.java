package com.niit.scart.dao.temp;

public class UserDAO {

	
	public boolean isValidCredentials(String id,String password)
	{
		if(id.equals("mukesh")&&password.equals("yuga"))
		{
			return true;
		}
		else
		{
			return false;
		}
	}
}
