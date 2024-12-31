package com.mypack.servalets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.mypack_Entities.Notes;

public class EditAction1 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public EditAction1() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			Configuration cfg = new Configuration();
			cfg.configure("HiberConfig.xml");

			SessionFactory sf = cfg.buildSessionFactory();

			Session s = sf.openSession();

			String Id1 = request.getParameter("id1");
			int id = Integer.parseInt(Id1);
			String title = request.getParameter("t1");
			String content = request.getParameter("t2");

			Notes n = (Notes) s.get(Notes.class, id);
			n.setTitle(title);
			n.setContent(content);

			Transaction tx = s.beginTransaction();
			s.update(n);

			tx.commit();
			response.sendRedirect("ShowNotes.jsp");
			s.close();
			sf.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
