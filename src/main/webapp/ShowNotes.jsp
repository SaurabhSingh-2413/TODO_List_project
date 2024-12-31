<%@page import="java.util.Date"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.mypack_Entities.Notes"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="org.hibernate.cfg.Configuration"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
	integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<title>Show-Notes</title>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<a class="navbar-brand" href="index.jsp">TODO-LIST</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link"
					href="index.jsp">Home <span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item"><a class="nav-link" href="AddNotes.jsp">Add
						Notes</a></li>
				<li class="nav-item"><a class="active" href="#">Show Notes</a></li>
			</ul>
			<form class="form-inline my-2 my-lg-0" action="SearchNotes.jsp">
				<input class="form-control mr-sm-2" type="search"
					placeholder="Search" aria-label="Search" name="srch1">
				<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
			</form>
		</div>
	</nav>
	<table class="table table-striped table-dark">
		<thead>
			<tr>
				<th scope="col">ID</th>
				<th scope="col">TITLE</th>
				<th scope="col">LAST_UPDATE</th>
				<th scope="col">CONTENT</th>
				<th scope="col">ACTION</th>
			</tr>
		</thead>
		<%
		Configuration cfg = new Configuration();
		cfg.configure("HiberConfig.xml");

		SessionFactory sf = cfg.buildSessionFactory();

		Session s = sf.openSession();
		Query q = s.createQuery("from Notes");
		List<Notes> list = q.list();

		for (Notes n : list) {
			int id = n.getId();
			String title = n.getTitle();
			Date currentdate = n.getCurrentDate();
			String content = n.getContent();
		%>
		<tbody>
			<tr>
				<td><%=id%></td>
				<td><%=title%></td>
				<td><%=currentdate%></td>
				<td><%=content%></td>
				<td><a href="Edit.jsp?id=<%out.print(id);%>"><i
						class="fa-solid fa-pen-to-square fa-xl icon1"
						style="color: #80cbc4;"></i></a></td>
				<td><a href="Delete.jsp?id=<%out.print(id);%>"><i
						class="fa-solid fa-trash fa-xl icon2" style="color: #e91e63;"></i></a></td>
				<%
				}
				%>
			</tr>
		</tbody>
	</table>
</body>
</html>