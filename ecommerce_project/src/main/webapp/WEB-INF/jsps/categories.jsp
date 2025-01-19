<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
<meta charset="UTF-8">
<meta name="description" content="Yoga Studio Template">
<meta name="keywords" content="Yoga, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Violet | Template</title>

<!-- Google Font -->
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
</head>

<body>


	<!-- Search model -->
	<div class="search-model">
		<div class="h-100 d-flex align-items-center justify-content-center">
			<div class="search-close-switch">+</div>
			<form class="search-model-form">
				<input type="text" id="search-input" placeholder="Search here.....">
			</form>
		</div>
	</div>
	<!-- Search model end -->

	<!-- Header Section Begin -->
	<jsp:include page="usernavbar.jsp"></jsp:include>


	<!-- Header End -->

	<!-- Page Add Section Begin -->
	<section class="page-add">
		<div class="container">
			<div class="row">
				<div class="col-lg-4">
					<div class="page-breadcrumb">
						<h2>
							Dresses<span>.</span>
						</h2>
						<a href="#">Home</a> <a href="#">Dresses</a> <a class="active"
							href="#">Night Dresses</a>
					</div>
				</div>

			</div>
		</div>
	</section>
	<!-- Page Add Section End -->

	<!-- Categories Page Section Begin -->
	<section class="categories-page spad">
		<div class="container">

			<div class="row">

				<div class="col-lg-6 col-md-6">
					<div class="row">
						<c:forEach var="dt" items="${categories}">
							<div class="col-lg-6 col-md-6">
								<div class="single-product-item">
									<figure>
										<img src="img/products/img-2.jpg" alt="">
										<div class="p-status sale">sale</div>
									</figure>

									<div class="product-text">
										<a href="#">
											<h6>${dt.getCatname()}</h6>
										</a>

									</div>

								</div>
							</div>
						</c:forEach>



					</div>
				</div>

			</div>
			<div class="more-product">
				<div class="row">
					<div class="col-lg-12 text-center">
						<a href="#" class="primary-btn">Load More</a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Categories Page Section End -->

	<!-- Footer Section Begin -->
	<footer class="footer-section spad">
		<div class="container">
			<div class="newslatter-form">
				<div class="row">
					<div class="col-lg-12">
						<form action="#">
							<input type="text" placeholder="Your email address">
							<button type="submit">Subscribe to our newsletter</button>
						</form>
					</div>
				</div>
			</div>
			<div class="footer-widget">
				<div class="row">
					<div class="col-lg-3 col-sm-6">
						<div class="single-footer-widget">
							<h4>About us</h4>
							<ul>
								<li>About Us</li>
								<li>Community</li>
								<li>Jobs</li>
								<li>Shipping</li>
								<li>Contact Us</li>
							</ul>
						</div>
					</div>
					<div class="col-lg-3 col-sm-6">
						<div class="single-footer-widget">
							<h4>Customer Care</h4>
							<ul>
								<li>Search</li>
								<li>Privacy Policy</li>
								<li>2019 Lookbook</li>
								<li>Shipping & Delivery</li>
								<li>Gallery</li>
							</ul>
						</div>
					</div>
					<div class="col-lg-3 col-sm-6">
						<div class="single-footer-widget">
							<h4>Our Services</h4>
							<ul>
								<li>Free Shipping</li>
								<li>Free Returnes</li>
								<li>Our Franchising</li>
								<li>Terms and conditions</li>
								<li>Privacy Policy</li>
							</ul>
						</div>
					</div>
					<div class="col-lg-3 col-sm-6">
						<div class="single-footer-widget">
							<h4>Information</h4>
							<ul>
								<li>Payment methods</li>
								<li>Times and shipping costs</li>
								<li>Product Returns</li>
								<li>Shipping methods</li>
								<li>Conformity of the products</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="social-links-warp">
			<div class="container">
				<div class="social-links">
					<a href="" class="instagram"><i class="fa fa-instagram"></i><span>instagram</span></a>
					<a href="" class="pinterest"><i class="fa fa-pinterest"></i><span>pinterest</span></a>
					<a href="" class="facebook"><i class="fa fa-facebook"></i><span>facebook</span></a>
					<a href="" class="twitter"><i class="fa fa-twitter"></i><span>twitter</span></a>
					<a href="" class="youtube"><i class="fa fa-youtube"></i><span>youtube</span></a>
					<a href="" class="tumblr"><i class="fa fa-tumblr-square"></i><span>tumblr</span></a>
				</div>
			</div>

			<div class="container text-center pt-5">
				<p>
					<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
					Copyright &copy;
					<script>
						document.write(new Date().getFullYear());
					</script>
					All rights reserved | This template is made with <i
						class="icon-heart color-danger" aria-hidden="true"></i> by <a
						href="https://colorlib.com" target="_blank">Colorlib</a>
					<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
				</p>
			</div>


		</div>
	</footer>
	<!-- Footer Section End -->

	<!-- Js Plugins -->
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