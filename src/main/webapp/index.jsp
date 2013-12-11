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

	<nav class="navbar navbar-inverse navbar-fixed-top">
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



		<div class="col-md-9">

			<div class="thumbnail">
				<img class="img-responsive" src="resources/img/1.jpg">
				Historical Background V.N. Karazin Kharkiv National University is
				one of the oldest universities in Eastern Europe. It was founded in
				November 1804, on the initiative of the prominent educator V.N.
				Karazin and in accordance with the charter of Tsar Alexander I. The
				opening ceremony was held on January 29, 1805. The University made
				an important contribution to the Ukrainian national renaissance of
				the XIX-XXth centuries. It gave a powerful impetus to the emergence
				of Kharkiv as a major scientific and cultural center and an academic
				hub of Ukraine. Today the University justly rates among the best
				Ukrainian classical universities and is known in many countries. The
				history of Kharkiv National University is part and parcel of the
				intellectual, cultural and spiritual history of Ukraine. The names
				of many world famous researchers, scholars and educators are
				associated with Kharkiv University, among them are P.
				Hulak-Artemovskyi, O. Lyapunov, M. Kostomarov, M. Barabashov, M.
				Beketov, D. Bahaliy, A. Krasnov, M. Ostrohradskyi, V. Steklov, O.
				Potebnya, O. Pohorelov and many others. Kharkiv University is the
				only university in Ukraine that has trained and employed three Nobel
				Prize laureates: the biologist I. Mechnikov, the economist S.
				Kuznets, and the physicist L. Landau. At different times titles of
				Kharkiv University Honorary Members and Doctors were conferred on
				outstanding scholars and public figures of many countries, including
				J.W. Goethe and A. Humboldt, I. Franko and L. Tolstoy, P.
				Semenov-Tyanshanskiy, and others. The title of Honorary Doctor of
				Kharkiv University was conferred on the first President of Ukraine
				Mykhailo Hrushevskyi. Kharkiv University is associated with the
				first Ukrainian newspapers and journals and the first scientific
				societies. Since its foundation, the University has graduated over
				130,000 students. The names of the University graduates are
				commemorated in geographical names, names of space objects, plants
				and minerals, laws and formulae. Almost 60 University graduates have
				become academicians and corresponding members of the Ukrainian
				National Academy of Sciences (UNAS).
			</div>
		</div>



	</div>
	<!-- /.container -->

	<div class="container">

		<hr>

		<footer>
			<div class="row">
				<div class="col-lg-12">
					<p>
						Copyright &copy; Company 2013
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