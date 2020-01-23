package com.ticket.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.jspiders.configurations.SingletonFactory;
import org.springframework.stereotype.Component;

import com.ticket.dto.AdminDTO;

@Component
public class AdminDAO 
{
	public void addBus(AdminDTO admin_dto)
	{
		SessionFactory factory = SingletonFactory.getSessionFactory();
		Session session = factory.openSession();
		
		Transaction txn = session.beginTransaction();
		session.save(admin_dto);

		session.close();
		factory.close();
	}
}
