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
<title>Add-Notes-Page</title>
</head>
<body>
	<!-- <form action="DataAction1" method="post"> -->
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
					href="index.jsp">Home <span class="sr-only">(current)</span></a></li>
				<li class="nav-item"><a class="active" href="#">Add Notes</a></li>
				<li class="nav-item"><a class="nav-link" href="ShowNotes.jsp">Show
						Notes</a></li>
			</ul>
			<form class="form-inline my-2 my-lg-0" action="SearchNotes.jsp">
				<input class="form-control mr-sm-2" type="search"
					placeholder="Search" aria-label="Search" name="srch1">
				<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
			</form>
		</div>
	</nav>

	<form action="DataAction1" method="post">
		<div class="container-fluid p-100 m-100">
			<div class="form-group">
				<div class="container text-center">
					<h1>Fill Your Notes Details</h1>
				</div>
				<label for="exampleInputEmail1">Title</label> <input type="text"
					class="form-control" id="exampleInputEmail1"
					aria-describedby="emailHelp" placeholder="Enter Title" name="t1"
					required="required">
			</div>
			<div class="form-group">
				<label for="exampleInputPassword1">Content</label>
				<textarea rows="9" cols="" class="form-control" name="t2"
					required="required"></textarea>
			</div>
			<div class="container text-center">
				<button type="submit" class="btn btn-primary">Add</button>
			</div>
		</div>
	</form>
</body>
</html>