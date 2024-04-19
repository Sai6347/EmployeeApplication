package com.aita;
import com.aita.UserDao;
import com.aita.UserData;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class UserController
{
	
	@Autowired
	private UserService userService;
	
	@GetMapping(value="/home")
	public String home()
	{
		return "Home";
		
	}
	
	@GetMapping(value="/viewUser")
	public String UserData(Model model)
	{
		//calling service to load user
		List<UserData> userList = userService.loadUsers();
		
//		for(UserData userInfo : userList)
//		{
//			System.out.println(userInfo);
//		}
		model.addAttribute("users",userList);
		return "ViewUser";
	}
	
	@GetMapping(value="/register")
	public String UserDataLogin(Model model)
	{
		UserData user = new UserData();	
		model.addAttribute("user", user);
		return "RegisterUser";
	}
	
	
	@PostMapping("/saveUser")
	public String saveUserData(UserData user)
	{	
		//System.out.println(user);
		//do a service call to save user
		
		userService.saveUser(user);
		
		return "redirect:/viewUser";
	}
	
	@GetMapping("/updateUser")
	public String updateUserData(@RequestParam("mobile") String mobile,Model model)
	{
		UserData myUser = userService.getUser(mobile);
		//System.out.println(myUser);
		
		model.addAttribute("user", myUser);
		
		return "UpdateUser";
	}
	
	@PostMapping("/updateUserData")
	public String updateUserData(UserData user)
	{	
		//System.out.println(user);
		//do a service call to update user
		
		userService.updateUserData(user);
		//System.out.println(user);
		return "redirect:/home";
	}
	
	@GetMapping(value="/login")
	public String login(Model model)
	{
		UserData user = new UserData();
		model.addAttribute(user);
		return "Login";
	}
	
	@PostMapping("/loginUser")
	public String getUserData(@RequestParam("mobile")String mobile,@RequestParam("password")String password,Model model)
	{
		
		UserData user = userService.getUserData(mobile,password);
		
		model.addAttribute("userInfo", user);
		//System.out.println(user);
		return "GetLoginData";
	}
	
	@GetMapping(value="/getUserAddress")
	public String loadAddress(@RequestParam("mobile") String mobile,Model model)
	{
		System.out.println(mobile);
		//calling service to load user
		List<UserAddress> userAdrs = userService.loadAddress(mobile);
	
//		for(UserAddress user : userAdrs)
//		{
//			System.out.println(user);
//		}
		model.addAttribute("userAdrs",userAdrs);
		return "ShowAddress";
	}
	
	@GetMapping("/registerAdrs")
	public String registerAdrs(@RequestParam("mobile") String mobile,Model model)
	{
		UserAddress user = new UserAddress();
		model.addAttribute("mobile",mobile);
		return "RegisterAddress";
	}
	
	@PostMapping("/saveAddress")
	public String saveUserAdrs(UserAddress user)
	{	
		//System.out.println(user);
		//do a service call to save userAddress
		
		userService.saveUserAdrs(user);
		System.out.println("Address Inserted");
		return "redirect:/home";
	}
}
