<%@page import="com.mypack_Entities.Notes"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="org.hibernate.cfg.Configuration"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete-stage</title>
</head>
<body>
	<%
	Configuration cfg = new Configuration();
	cfg.configure("HiberConfig.xml");

	SessionFactory sf = cfg.buildSessionFactory();

	Session s = sf.openSession();

	String id1 = request.getParameter("id");
	int id = Integer.parseInt(id1);

	Notes n = (Notes) s.get(Notes.class, id);

	Transaction tx = s.beginTransaction();
	s.delete(n);

	tx.commit();
	response.sendRedirect("ShowNotes.jsp");
	s.close();
	sf.close();
	%>
</body>
</html>