package com.gqt;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class SaveRecord extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int sid=Integer.parseInt(request.getParameter("sid"));
		String name=request.getParameter("fn");
		String gender=request.getParameter("gender");
		String city=request.getParameter("city");
		String course=request.getParameter("course");
		float amount=Float.parseFloat(request.getParameter("amount"));
		
		Student s1=new Student();
		s1.setSid(sid);
		s1.setName(name);
		s1.setGender(gender);
		s1.setCity(city);
		s1.setCourse(course);
		s1.setAmount(amount);
		
		//saving s1 into table using hibernate
		SessionFactory sf=new Configuration().configure().buildSessionFactory();
		Session session=sf.openSession();
		session.beginTransaction();
		session.save(s1);
		session.getTransaction().commit();
		session.close();
		
		//loading save.jsp
		response.sendRedirect("/01-Project1/save.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}