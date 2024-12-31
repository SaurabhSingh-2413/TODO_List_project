package com.mypack.servalets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.mypack_Entities.Notes;

public class DataAction1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
    public DataAction1() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			
			String title = request.getParameter("t1");
			String content = request.getParameter("t2");
			
			System.out.println(title+" "+content);
			
			Configuration cfg = new Configuration();
			cfg.configure("HiberConfig.xml");
			
			SessionFactory sf = cfg.buildSessionFactory();
			
			Session s = sf.openSession();
			
			Notes n = new Notes(title, content, new Date());
			
			
			Transaction tx = s.beginTransaction();
			s.save(n);
	
//			PrintWriter out = response.getWriter();
//			out.print("Data Submit");
			
			response.sendRedirect("ShowNotes.jsp");
			
			tx.commit();
			s.close();
			sf.close();
			
			
		}catch (Exception e) {
			e.printStackTrace();
		}
	}

}
