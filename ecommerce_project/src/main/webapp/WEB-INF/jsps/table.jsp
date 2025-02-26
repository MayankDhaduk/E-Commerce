<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<title>DASHMIN - Bootstrap Admin Template</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="" name="keywords">
<meta content="" name="description">

<!-- Favicon -->
<link href="/admin/img/favicon.ico" rel="icon">

<!-- Google Web Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600;700&display=swap"
	rel="stylesheet">

<!-- Icon Font Stylesheet -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css"
	rel="stylesheet">

<!-- Libraries Stylesheet -->
<link href="/admin/lib/owlcarousel/assets/owl.carousel.min.css"
	rel="stylesheet">
<link
	href="/admin/lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css"
	rel="stylesheet" />

<!-- Customized Bootstrap Stylesheet -->
<link href="/admin/css/bootstrap.min.css" rel="stylesheet">

<!-- Template Stylesheet -->
<link href="/admin/css/style.css" rel="stylesheet">
</head>

<body>
	<div class="container-xxl position-relative bg-white d-flex p-0">

		<!-- Sidebar Start -->
		<jsp:include page="adminsidebar.jsp"></jsp:include>
		<!-- Sidebar End -->


		<!-- Content Start -->
		<div class="content">
			<!-- Navbar Start -->
			<jsp:include page="adminnavbar.jsp"></jsp:include>
			<!-- Navbar End -->


			<!-- Table Start -->
			<div class="container-fluid pt-4 px-4">
				<div class="row g-4">
					<div class="col-sm-12 col-xl-6">
						<div class="bg-light rounded h-100 p-4">
							<h6 class="mb-4">Basic Table</h6>
							<table class="table">
								<thead>
									<tr>
										<th scope="col">#</th>
										<th scope="col">First Name</th>
										<th scope="col">Last Name</th>
										<th scope="col">Email</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<th scope="row">1</th>
										<td>John</td>
										<td>Doe</td>
										<td>jhon@email.com</td>
									</tr>
									<tr>
										<th scope="row">2</th>
										<td>Mark</td>
										<td>Otto</td>
										<td>mark@email.com</td>
									</tr>
									<tr>
										<th scope="row">3</th>
										<td>Jacob</td>
										<td>Thornton</td>
										<td>jacob@email.com</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
					<div class="col-sm-12 col-xl-6">
						<div class="bg-light rounded h-100 p-4">
							<h6 class="mb-4">Accented Table</h6>
							<table class="table table-striped">
								<thead>
									<tr>
										<th scope="col">#</th>
										<th scope="col">First Name</th>
										<th scope="col">Last Name</th>
										<th scope="col">Email</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<th scope="row">1</th>
										<td>John</td>
										<td>Doe</td>
										<td>jhon@email.com</td>
									</tr>
									<tr>
										<th scope="row">2</th>
										<td>Mark</td>
										<td>Otto</td>
										<td>mark@email.com</td>
									</tr>
									<tr>
										<th scope="row">3</th>
										<td>Jacob</td>
										<td>Thornton</td>
										<td>jacob@email.com</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
					<div class="col-sm-12 col-xl-6">
						<div class="bg-light rounded h-100 p-4">
							<h6 class="mb-4">Hoverable Table</h6>
							<table class="table table-hover">
								<thead>
									<tr>
										<th scope="col">#</th>
										<th scope="col">First Name</th>
										<th scope="col">Last Name</th>
										<th scope="col">Email</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<th scope="row">1</th>
										<td>John</td>
										<td>Doe</td>
										<td>jhon@email.com</td>
									</tr>
									<tr>
										<th scope="row">2</th>
										<td>Mark</td>
										<td>Otto</td>
										<td>mark@email.com</td>
									</tr>
									<tr>
										<th scope="row">3</th>
										<td>Jacob</td>
										<td>Thornton</td>
										<td>jacob@email.com</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
					<div class="col-sm-12 col-xl-6">
						<div class="bg-light rounded h-100 p-4">
							<h6 class="mb-4">Color Table</h6>
							<table class="table table-dark">
								<thead>
									<tr>
										<th scope="col">#</th>
										<th scope="col">First Name</th>
										<th scope="col">Last Name</th>
										<th scope="col">Email</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<th scope="row">1</th>
										<td>John</td>
										<td>Doe</td>
										<td>jhon@email.com</td>
									</tr>
									<tr>
										<th scope="row">2</th>
										<td>Mark</td>
										<td>Otto</td>
										<td>mark@email.com</td>
									</tr>
									<tr>
										<th scope="row">3</th>
										<td>Jacob</td>
										<td>Thornton</td>
										<td>jacob@email.com</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
					<div class="col-sm-12 col-xl-6">
						<div class="bg-light rounded h-100 p-4">
							<h6 class="mb-4">Bordered Table</h6>
							<table class="table table-bordered">
								<thead>
									<tr>
										<th scope="col">#</th>
										<th scope="col">First Name</th>
										<th scope="col">Last Name</th>
										<th scope="col">Email</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<th scope="row">1</th>
										<td>John</td>
										<td>Doe</td>
										<td>jhon@email.com</td>
									</tr>
									<tr>
										<th scope="row">2</th>
										<td>Mark</td>
										<td>Otto</td>
										<td>mark@email.com</td>
									</tr>
									<tr>
										<th scope="row">3</th>
										<td>Jacob</td>
										<td>Thornton</td>
										<td>jacob@email.com</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
					<div class="col-sm-12 col-xl-6">
						<div class="bg-light rounded h-100 p-4">
							<h6 class="mb-4">Table Without Border</h6>
							<table class="table table-borderless">
								<thead>
									<tr>
										<th scope="col">#</th>
										<th scope="col">First Name</th>
										<th scope="col">Last Name</th>
										<th scope="col">Email</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<th scope="row">1</th>
										<td>John</td>
										<td>Doe</td>
										<td>jhon@email.com</td>
									</tr>
									<tr>
										<th scope="row">2</th>
										<td>Mark</td>
										<td>Otto</td>
										<td>mark@email.com</td>
									</tr>
									<tr>
										<th scope="row">3</th>
										<td>Jacob</td>
										<td>Thornton</td>
										<td>jacob@email.com</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
					<div class="col-12">
						<div class="bg-light rounded h-100 p-4">
							<h6 class="mb-4">Responsive Table</h6>
							<div class="table-responsive">
								<table class="table">
									<thead>
										<tr>
											<th scope="col">#</th>
											<th scope="col">First Name</th>
											<th scope="col">Last Name</th>
											<th scope="col">Email</th>
											<th scope="col">Country</th>
											<th scope="col">ZIP</th>
											<th scope="col">Status</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<th scope="row">1</th>
											<td>John</td>
											<td>Doe</td>
											<td>jhon@email.com</td>
											<td>USA</td>
											<td>123</td>
											<td>Member</td>
										</tr>
										<tr>
											<th scope="row">2</th>
											<td>Mark</td>
											<td>Otto</td>
											<td>mark@email.com</td>
											<td>UK</td>
											<td>456</td>
											<td>Member</td>
										</tr>
										<tr>
											<th scope="row">3</th>
											<td>Jacob</td>
											<td>Thornton</td>
											<td>jacob@email.com</td>
											<td>AU</td>
											<td>789</td>
											<td>Member</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- Table End -->


			<!-- Footer Start -->
			<div class="container-fluid pt-4 px-4">
				<div class="bg-light rounded-top p-4">
					<div class="row">
						<div class="col-12 col-sm-6 text-center text-sm-start">
							&copy; <a href="#">Your Site Name</a>, All Right Reserved.
						</div>
						<div class="col-12 col-sm-6 text-center text-sm-end">
							<!--/*** This template is free as long as you keep the footer author’s credit link/attribution link/backlink. If you'd like to use the template without the footer author’s credit link/attribution link/backlink, you can purchase the Credit Removal License from "https://htmlcodex.com/credit-removal". Thank you for your support. ***/-->
							Designed By <a href="https://htmlcodex.com">HTML Codex</a>
						</div>
					</div>
				</div>
			</div>
			<!-- Footer End -->
		</div>
		<!-- Content End -->


		<!-- Back to Top -->
		<a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i
			class="bi bi-arrow-up"></i></a>
	</div>

	<!-- JavaScript Libraries -->
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
	<script src="/admin/lib/chart/chart.min.js"></script>
	<script src="/admin/lib/easing/easing.min.js"></script>
	<script src="/admin/lib/waypoints/waypoints.min.js"></script>
	<script src="/admin/lib/owlcarousel/owl.carousel.min.js"></script>
	<script src="/admin/lib/tempusdominus/js/moment.min.js"></script>
	<script src="/admin/lib/tempusdominus/js/moment-timezone.min.js"></script>
	<script
		src="/admin/lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script>

	<!-- Template Javascript -->
	<script src="/admin/js/main.js"></script>
</body>

</html>