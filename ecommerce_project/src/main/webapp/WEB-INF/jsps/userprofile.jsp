<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://fonts.googleapis.com/css?family=Amatic+SC:400,700&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Montserrat:100,200,300,400,500,600,700,800,900&display=swap"
	rel="stylesheet">

<!-- Css Styles -->
<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
<link rel="stylesheet" href="css/nice-select.css" type="text/css">
<link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
<link rel="stylesheet" href="css/magnific-popup.css" type="text/css">
<link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
<link rel="stylesheet" href="css/style.css" type="text/css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css"
	rel="stylesheet">
<style>
body {
	margin-top: 20px;
	color: #1a202c;
	text-align: left;
	background-color: #e2e8f0;
}

.main-body {
	padding: 15px;
}

.card {
	box-shadow: 0 1px 3px 0 rgba(0, 0, 0, .1), 0 1px 2px 0
		rgba(0, 0, 0, .06);
}

.card {
	position: relative;
	display: flex;
	flex-direction: column;
	min-width: 0;
	word-wrap: break-word;
	background-color: #fff;
	background-clip: border-box;
	border: 0 solid rgba(0, 0, 0, .125);
	border-radius: .25rem;
}

.card-body {
	flex: 1 1 auto;
	min-height: 1px;
	padding: 1rem;
}

.gutters-sm {
	margin-right: -8px;
	margin-left: -8px;
}

.gutters-sm>.col, .gutters-sm>[class*=col-] {
	padding-right: 8px;
	padding-left: 8px;
}

.mb-3, .my-3 {
	margin-bottom: 1rem !important;
}

.bg-gray-300 {
	background-color: #e2e8f0;
}

.h-100 {
	height: 100% !important;
}

.shadow-none {
	box-shadow: none !important;
}
</style>

</head>
<body>
	<jsp:include page="usernavbar.jsp"></jsp:include>

	<section class="page-add">
		<div class="container">
			<div class="row">
				<div class="col-lg-4">
					<div class="page-breadcrumb">
						<h2>
							User Details<span>.</span>
						</h2>
					</div>
				</div>

			</div>
		</div>
	</section>


	<div class="container">
		<div class="main-body">
			<div class="row gutters-sm">

				<div class="col-md-8">
					<div class="card mb-3">

						<div class="card-body">

							<div class="row">
								<div class="col-sm-3">
									<h6 class="mb-0">First Name</h6>
								</div>
								<div class="col-sm-9 text-secondary">${fname}</div>
							</div>
							<hr>

							<div class="row">
								<div class="col-sm-3">
									<h6 class="mb-0">Last Name</h6>
								</div>
								<div class="col-sm-9 text-secondary">${lname}</div>
							</div>
							<hr>
							<div class="row">
								<div class="col-sm-3">
									<h6 class="mb-0">Email</h6>
								</div>
								<div class="col-sm-9 text-secondary">${email}</div>
							</div>
							<hr>


							<div class="row">
								<div class="col-sm-3">
									<h6 class="mb-0">Mobile</h6>
								</div>
								<div class="col-sm-9 text-secondary">${phone}</div>
							</div>
							<hr>

						</div>

					</div>


					<%-- <span> <a href="update?eid=${dt.getId()}"
						class="btn btn-primary btn-lg">Update Profile</a>

					</span> --%>

					<a href="update">
						<button type="button" class="btn btn-primary btn-lg">Update
							profile</button>
					</a>
					
					<%-- <c:forEach var="dt" items="${user}">
						<span> <a href="update?eid=${dt.getId()}"
							class="btn btn-primary btn-lg">Update Profile</a>

						</span>

					</c:forEach> --%>



				</div>
			</div>

		</div>
	</div>







	<%-- <table class="table" border="1">
		<tr>
			<th>Id</th>
			<th>FirstName</th>
			<th>LastName</th>
			<th>Email</th>
			<th>Password</th>
			<th>Phone No.</th>
		</tr>

		<c:forEach var="dt" items="${users}">
			<tr>
				<td>${dt.getId()}</td>
				<td>${dt.getFname()}</td>
				<td>${dt.getLname()}</td>
				<td>${dt.getEmail()}</td>
				<td>${dt.getPass()}</td>
				<td>${dt.getPhone()}</td>
			</tr>



		</c:forEach>


	</table> --%>


	<script src="js/jquery-3.3.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/jquery.slicknav.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/jquery.nice-select.min.js"></script>
	<script src="js/mixitup.min.js"></script>
	<script src="js/main.js"></script>
</body>
</html>