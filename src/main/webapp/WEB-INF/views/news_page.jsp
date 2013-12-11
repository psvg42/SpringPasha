<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE HTML">
<html>
<head>
<link href="resources/css/bootstrap.css" rel="stylesheet">

<!-- Add custom CSS here -->
<link href="resources/css/shop-item.css" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Main page</title>
</head>
<body>

	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-ex1-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="${contextPath}/">Univer News</a>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse navbar-ex1-collapse">
				<ul class="nav navbar-nav">
					<li><a href="${contextPath}/news">Show news</a></li>
					<li><a href="${contextPath}/add_news">Add news</a></li>
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container -->
	</nav>

	<div class="container">

		<table class="table">
			<tbody>
				<c:forEach var="item" items="${news}">
					<tr>
						<td><c:out value="${item.title}" /></td>
						<td><c:out value="${item.text}" /></td>
						<td><c:out value="${item.date}" /></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>



	</div>
	<!-- /.container -->

	<div class="container">

		<hr>

		<footer>
			<div class="row">
				<div class="col-lg-12">
					<p>
						Copyright &copy; Kharkov university 2013 - <a
							href="http://www.univer.kharkov.ua/">Univer wep site</a>
					</p>
				</div>
			</div>
		</footer>

	</div>
	<!-- /.container -->


	<!-- JavaScript -->
	<script src="resources/js/jquery-1.10.2.js"></script>
	<script src="resources/js/bootstrap.js"></script>
</body>
</html>