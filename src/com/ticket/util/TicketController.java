package com.ticket.util;

import javax.xml.registry.infomodel.User;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ticket.dao.AdminDAO;
import com.ticket.dao.UserDAO;

@Controller
public class TicketController 
{
	@Autowired
	private AdminDAO admin_dao;
	@Autowired
	private UserDAO user_dao;
	
	@RequestMapping("/")
	public String getIndexPage()
	{
		return "index";
	}
	
	@RequestMapping("/reserve")
	public String getReserve()
	{
		return "reserve";
	}
	
	@RequestMapping("/login")
	public String getLoginPage()
	{
		return "login";
	}
	
	@RequestMapping("/logout")
	public String getLogout()
	{
		return "logout";
	}
	
	@RequestMapping("/searchBus")
	public String getSearchBus()
	{
		return "searchBus";
	}
	
	@RequestMapping("/loginHandler")
	public String getLoginHandler()
	{
		return "loginHandler";
	}
	
	@RequestMapping("/home")
	public String getHomePage()
	{
		return "home";
	}
}
