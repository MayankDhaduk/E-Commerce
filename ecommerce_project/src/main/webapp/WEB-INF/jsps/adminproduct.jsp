<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
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

			<div class="container-fluid pt-4 px-4">
				<div class="row g-4">
					<div class="col-sm-12 col-xl-6">
						<div class="bg-light rounded h-100 p-4">
							<h6 class="mb-4">Basic Form</h6>

							<form:form method="post" modelAttribute="product"
								action="addproduct">
								<form:hidden path="id" />

								<div class="mb-3">
									<form:label path="pname" class="form-label">Product Name</form:label>
									<form:input path="pname" class="form-control" />
								</div>

								<div class="mb-3">
									<select class="form-control" name="catid">
										<c:forEach var="dt" items="${categories}">
											<option value="${dt.getId()}">${dt.getCatname()}</option>
										</c:forEach>


									</select>

								</div>

								<div class="mb-3">
									<form:label path="price" class="form-label">Price</form:label>
									<form:input path="price" class="form-control" />
								</div>

								<div class="mb-3">
									<form:label path="qty" class="form-label">Quantity</form:label>
									<form:input path="qty" class="form-control" />
								</div>



								<button type="submit" class="btn btn-primary m-2">Submit</button>





							</form:form>




							<%-- <form>
								<div class="mb-3">
									<label for="exampleInputEmail1" class="form-label">Email
										address</label> <input type="email" class="form-control"
										id="exampleInputEmail1" aria-describedby="emailHelp">
									<div id="emailHelp" class="form-text">We'll never share
										your email with anyone else.</div>
								</div>
								<div class="mb-3">
									<label for="exampleInputPassword1" class="form-label">Password</label>
									<input type="password" class="form-control"
										id="exampleInputPassword1">
								</div>
								<div class="mb-3 form-check">
									<input type="checkbox" class="form-check-input"
										id="exampleCheck1"> <label class="form-check-label"
										for="exampleCheck1">Check me out</label>
								</div>
								<button type="submit" class="btn btn-primary">Sign in</button>
							</form> --%>
						</div>
					</div>
				</div>
			</div>

			<div class="container-fluid pt-4 px-4">
				<div class="row g-4">

					<div class="col-8">
						<div class="bg-light rounded h-100 p-4">
							<h6 class="mb-4">Responsive Table</h6>
							<div class="table-responsive">
								<table class="table">
									<thead>
										<tr>
											<th scope="col">Id</th>
											<th scope="col">Product Name</th>
											<th scope="col">Category Name</th>
											<th scope="col">Product Price</th>
											<th scope="col">Product QTY</th>
											<th scope="col" colspan="2">Action</th>

										</tr>
									</thead>
									<tbody>
										<c:forEach var="dt" items="${products}">
											<tr>
												<th scope="row">${dt.getId()}</th>
												<td>${dt.getPname()}</td>
												<td>${dt.getCategory().getCatname()}</td>
												<td>${dt.getPrice()}</td>
												<td>${dt.getQty()}</td>
												<td><a href="productdelete?did=${dt.getId()}"
													class="btn btn-danger m-2">Delete</a></td>
												<td><a href="productupdate?eid=${dt.getId()}"
													class="btn btn-primary m-2">Edit</a></td>

											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
						</div>
					</div>

				</div>
			</div>

		</div>
	</div>

</body>
</html>