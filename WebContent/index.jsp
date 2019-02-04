<%@ page isELIgnored="false" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<jsp:include page="Common.jsp">
	<jsp:param name="pagename" value="login.jsp"/>
</jsp:include>
<%@ page contentType="text/html; charset=utf-8"%>

<!doctype html>
<html class="no-js" lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Home</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="icon" href="img/favicon.png" />
<!-- Place favicon.ico in the root directory -->
		
<!-- all css here -->
<!-- bootstrap.min.css -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<!-- font-awesome.min.css -->
<link rel="stylesheet" href="css/font-awesome.min.css">
<!-- owl.carousel.css -->
<link rel="stylesheet" href="css/owl.carousel.css">
<!-- owl.carousel.css -->
<link rel="stylesheet" href="css/meanmenu.min.css">
<!-- shortcode/shortcodes.css -->
<link rel="stylesheet" href="css/shortcode/shortcodes.css">
<!-- nivo-slider.css -->
<link rel="stylesheet" href="css/nivo-slider.css">
<!-- style.css -->
<link rel="stylesheet" href="style.css">
<!-- responsive.css -->
<link rel="stylesheet" href="css/responsive.css">
<script src="js/vendor/modernizr-2.8.3.min.js"></script>
</head>
<body>

 

<!--[if lt IE 8]>
<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
<![endif]-->
<!-- Add your site or application content here -->
<!-- header -->

<!-- mobile-menu-start -->
<div class="mobile-menu-area hidden-md hidden-lg">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="mobile-menu">
					<nav id="mobile-menu">
						<ul>
							<li><a href="index.html">Home</a></li>
							<li><a href="about.html">About</a></li>
							<li><a href="shop.html">Shop</a></li>
							<li><a href="cartlist">Cart</a></li>
							<li><a href="login.html">Login</a></li>
							<li><a href="account.html">My Account</a></li>								
							<li><a href="contact-us.html">Contact Us</a></li>
						</ul>	
					</nav>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- mobile-menu-end -->		
<!-- mainmenu-area-end -->
<!-- slider-area-start -->
<div class="slider-area">
	<div class="container">
		<div class="row">
			<div class="col-lg-3 col-md-3 hidden-sm hidden-xs"></div>
			<div class="col-lg-6 col-md-6 col-sm-12">
				<div class="main-slider">
					<div class="slider-container">
						<!-- Slider Image -->
						<div id="mainSlider" class="nivoSlider slider-image">
							<img src="img/slider/1.jpg" alt="" title="#htmlcaption1">
							<img src="img/slider/2.jpg" alt="" title="#htmlcaption2">
						</div>
					</div>	
				</div>
				<div class="slider-product dotted-style-1 pt-30">
					<div class="slider-product-active">
						<div class="single-product single-product-sidebar white-bg">
							<div class="product-img product-img-left">
								<a href="#"><img src="img/product/6.jpg" alt="" /></a>
							</div>
							<div class="product-content product-content-right">
								<div class="pro-title">
									<h4><a href="product-details.html">Lounge Chair</a></h4>
								</div>
								<div class="pro-rating ">
									<a href="#"><i class="fa fa-star"></i></a>
									<a href="#"><i class="fa fa-star"></i></a>
									<a href="#"><i class="fa fa-star"></i></a>
									<a href="#"><i class="fa fa-star"></i></a>
									<a href="#"><i class="fa fa-star-o"></i></a>
								</div>
								<div class="price-box">
									<span class="price product-price">$444.00</span>
								</div>
								<div class="product-icon">
									<div class="product-icon-left f-left">
										<a href="#"><i class="fa fa-shopping-cart"></i>Add to Cart</a>
									</div>
								</div>
							</div>					
						</div>	
						<div class="single-product single-product-sidebar white-bg">
							<div class="product-img product-img-left">
								<a href="#"><img src="img/product/9.jpg" alt="" /></a>
							</div>
							<div class="product-content product-content-right">
								<div class="pro-title">
									<h4><a href="product-details.html">imac</a></h4>
								</div>
								<div class="pro-rating ">
									<a href="#"><i class="fa fa-star"></i></a>
									<a href="#"><i class="fa fa-star"></i></a>
									<a href="#"><i class="fa fa-star"></i></a>
									<a href="#"><i class="fa fa-star"></i></a>
									<a href="#"><i class="fa fa-star-o"></i></a>
								</div>
								<div class="price-box">
									<span class="price product-price">$300.00</span>
								</div>
								<div class="product-icon">
									<div class="product-icon-left f-left">
										<a href="#"><i class="fa fa-shopping-cart"></i>Add to Cart</a>
									</div>
								</div>
							</div>					
						</div>							
					</div>
				</div>
			</div>
			<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
				<div class="slider-sidebar">
					<div class="slider-single-img mb-20">
						<a href="#">
							<img class="img_a" src="img/menu-l/1-1.jpg" alt="" />
							<img class="img_b" src="img/menu-l/1-1.jpg" alt="" />
						</a>
					</div>
					<div class="slider-single-img none-sm">
						<a href="#">
						<img class="img_a" src="img/menu-l/1-2.jpg" alt="" />
						<img class="img_b" src="img/menu-l/1-2.jpg" alt="" />
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- slider-area-end -->
<!-- electronic-tab-area-start -->

<!-- 中间动 -->
<div class="electronic-tab-area pt-60 pb-60">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 col-md-12 col-sm-12">
				<div class="tab-title">
					<h2>Electronics</h2>
				</div>
				<div class="tab-menu">
					<ul>
						<li class="active"><a href="#home" data-toggle="tab"><img src="img/electronic/1.png" alt="" />Electronics </a></li>
						<li><a href="#profile" data-toggle="tab"><img src="img/electronic/2.png" alt="" />Jewellery & Necklaces</a></li>
						<li><a href="#messages" data-toggle="tab"><img src="img/electronic/3.png" alt="" />Sports & Outdoors</a></li>
						<li><a href="#settings" data-toggle="tab"><img src="img/electronic/4.png" alt="" />Health & Beauty</a></li>
					</ul>						
				</div>
			</div>
		</div>
		<div class="tab-content tab-content-item">
		<!-- 科技产品 -->
			<div class="tab-pane active" id="home">
				<c:forEach items="${electrproducts }" varStatus="status" step="7">
				<div class="row">
					<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12 pad">
						<div class="single-tab-img">
							<a href="#"><img src="img/electronic/1.jpg" alt="" /></a>
						</div>
					</div>
					
					<div class="col-lg-4 col-md-4 col-sm-6  col-xs-12 pad">
						<div class="single-product pt-30 pb-20 white-bg">
							<div class="product-img pb-40">
								<a href="#"><img src="upload/product${electrproducts[status.index].id}.jpg" alt="" /></a>
							</div>
							<div class="product-content">
								<div class="pro-title">
									<h4><a href="product-details.html">${electrproducts[status.index].name}</a></h4>
								</div>
								<div class="pro-rating ">
									<a href="#"><i class="fa fa-star"></i></a>
									<a href="#"><i class="fa fa-star"></i></a>
									<a href="#"><i class="fa fa-star"></i></a>
									<a href="#"><i class="fa fa-star"></i></a>
									<a href="#"><i class="fa fa-star-o"></i></a>
								</div>
								<div class="price-box">
									<span class="price product-price">$${electrproducts[status.index].memberPrice}</span>
								</div>
								<div class="product-icon">
									<div class="product-icon-left f-left">
										<a href="#"><i class="fa fa-shopping-cart"></i>Add to Cart</a>
									</div>
									<div class="product-icon-right floatright">
										<a href="#" data-toggle="tooltip" title="Compare"><i class="fa fa-exchange"></i></a>
										<a href="#" data-toggle="tooltip" title="Wishlist"><i class="fa fa-heart"></i></a>
									</div>
								</div>
							</div>
							<span class="new">new</span>
						</div>
					</div>
					<div class="col-lg-4 col-md-4 padd-2 col-sm-12  col-xs-12 dotted-style-1">
						<div class="tab-product-active">
							<div class="together-single-product">
								<div class="single-product white-bg">
									<div class="product-img product-container-img">
										<a href="#"><img src="upload/product${electrproducts[status.index+1].id}.jpg" alt="" /></a>
									</div>
									<div class="product-content product-i">
										<div class="pro-title">
											<h4><a href="product-details.html">${electrproducts[status.index+1].name} </a></h4>
										</div>
										<div class="pro-rating ">
											<a href="#"><i class="fa fa-star"></i></a>
											<a href="#"><i class="fa fa-star"></i></a>
											<a href="#"><i class="fa fa-star"></i></a>
											<a href="#"><i class="fa fa-star"></i></a>
											<a href="#"><i class="fa fa-star-o"></i></a>
										</div>
										<div class="price-box">
											<span class="price product-price">$${electrproducts[status.index+1].memberPrice}</span>
											<span class="price-2"><del>$${electrproducts[status.index+1].normalPrice}</del></span>
										</div>
										<div class="product-icon">
											<div class="product-icon-left f-left">
												<a href="#"><i class="fa fa-shopping-cart"></i>Add to Cart</a>
											</div>
											<div class="product-icon-right floatright">
												<a href="#" data-toggle="tooltip" title="Compare"><i class="fa fa-exchange"></i></a>
												<a href="#" data-toggle="tooltip" title="Wishlist"><i class="fa fa-heart"></i></a>
											</div>
										</div>
									</div>
									<span class="new">new</span>
								</div>
								<div class="single-product white-bg">
									<div class="product-img product-container-img">
										<a href="#"><img src="upload/product${electrproducts[status.index+2].id}.jpg" alt="" /></a>
									</div>
									<div class="product-content product-i">
										<div class="pro-title">
											<h4><a href="product-details.html">${electrproducts[status.index+2].name}</a></h4>
										</div>
										<div class="pro-rating ">
											<a href="#"><i class="fa fa-star"></i></a>
											<a href="#"><i class="fa fa-star"></i></a>
											<a href="#"><i class="fa fa-star"></i></a>
											<a href="#"><i class="fa fa-star"></i></a>
											<a href="#"><i class="fa fa-star"></i></a>
										</div>
										<div class="price-box">
											<span class="price product-price">$${electrproducts[status.index+2].memberPrice}</span>
										</div>
										<div class="product-icon">
											<div class="product-icon-left f-left">
												<a href="#"><i class="fa fa-shopping-cart"></i>Add to Cart</a>
											</div>
											<div class="product-icon-right floatright">
												<a href="#" data-toggle="tooltip" title="Compare"><i class="fa fa-exchange"></i></a>
												<a href="#" data-toggle="tooltip" title="Wishlist"><i class="fa fa-heart"></i></a>
											</div>
										</div>
									</div>
									<span class="sale">sale</span>
								</div>										
							</div>
							<div class="together-single-product">
								<div class="single-product white-bg">
									<div class="product-img product-container-img">
										<a href="#"><img src="upload/product${electrproducts[status.index+3].id}.jpg" alt="" /></a>
									</div>
									<div class="product-content product-i">
										<div class="pro-title">
											<h4><a href="product-details.html">${electrproducts[status.index+3].name}</a></h4>
										</div>
										<div class="pro-rating ">
											<a href="#"><i class="fa fa-star"></i></a>
											<a href="#"><i class="fa fa-star"></i></a>
											<a href="#"><i class="fa fa-star"></i></a>
											<a href="#"><i class="fa fa-star"></i></a>
											<a href="#"><i class="fa fa-star-o"></i></a>
										</div>
										<div class="price-box">
											<span class="price product-price">$${electrproducts[status.index+3].memberPrice}</span>
											<span class="price-2"><del>$${electrproducts[status.index+3].normalPrice}</del></span>
										</div>
										<div class="product-icon">
											<div class="product-icon-left f-left">
												<a href="#"><i class="fa fa-shopping-cart"></i>Add to Cart</a>
											</div>
											<div class="product-icon-right floatright">
												<a href="#" data-toggle="tooltip" title="Compare"><i class="fa fa-exchange"></i></a>
												<a href="#" data-toggle="tooltip" title="Wishlist"><i class="fa fa-heart"></i></a>
											</div>
										</div>
									</div>
								</div>
								<div class="single-product white-bg">
									<div class="product-img product-container-img">
										<a href="#"><img src="upload/product${electrproducts[status.index+4].id}.jpg" alt="" /></a>
									</div>
									<div class="product-content product-i">
										<div class="pro-title">
											<h4><a href="product-details.html">${electrproducts[status.index+4].name}</a></h4>
										</div>
										<div class="pro-rating ">
											<a href="#"><i class="fa fa-star"></i></a>
											<a href="#"><i class="fa fa-star"></i></a>
											<a href="#"><i class="fa fa-star"></i></a>
											<a href="#"><i class="fa fa-star"></i></a>
											<a href="#"><i class="fa fa-star"></i></a>
										</div>
										<div class="price-box">
											<span class="price product-price">$${electrproducts[status.index+4].memberPrice}</span>
											<span class="price-2"><del>$${electrproducts[status.index+4].normalPrice}</del></span>
										</div>
										<div class="product-icon">
											<div class="product-icon-left f-left">
												<a href="#"><i class="fa fa-shopping-cart"></i>Add to Cart</a>
											</div>
											<div class="product-icon-right floatright">
												<a href="#" data-toggle="tooltip" title="Compare"><i class="fa fa-exchange"></i></a>
												<a href="#" data-toggle="tooltip" title="Wishlist"><i class="fa fa-heart"></i></a>
											</div>
										</div>
									</div>
									<span class="new">new</span>
								</div>										
							</div>
							<div class="together-single-product">
								<div class="single-product white-bg">
									<div class="product-img product-container-img">
										<a href="#"><img src="upload/product${electrproducts[status.index+5].id}.jpg" alt="" /></a>
									</div>
									<div class="product-content product-i">
										<div class="pro-title">
											<h4><a href="product-details.html">${electrproducts[status.index+5].name} </a></h4>
										</div>
										<div class="pro-rating ">
											<a href="#"><i class="fa fa-star"></i></a>
											<a href="#"><i class="fa fa-star"></i></a>
											<a href="#"><i class="fa fa-star"></i></a>
											<a href="#"><i class="fa fa-star"></i></a>
											<a href="#"><i class="fa fa-star-o"></i></a>
										</div>
										<div class="price-box">
											<span class="price product-price">$${electrproducts[status.index+5].memberPrice}0</span>
										</div>
										<div class="product-icon">
											<div class="product-icon-left f-left">
												<a href="#"><i class="fa fa-shopping-cart"></i>Add to Cart</a>
											</div>
											<div class="product-icon-right floatright">
												<a href="#" data-toggle="tooltip" title="Compare"><i class="fa fa-exchange"></i></a>
												<a href="#" data-toggle="tooltip" title="Wishlist"><i class="fa fa-heart"></i></a>
											</div>
										</div>
									</div>
									<span class="sale">sale</span>
								</div>
								<div class="single-product white-bg">
									<div class="product-img product-container-img">
										<a href="#"><img src="upload/product${electrproducts[status.index+6].id}.jpg" alt="" /></a>
									</div>
									<div class="product-content product-i">
										<div class="pro-title">
											<h4><a href="product-details.html">${electrproducts[status.index+6].name}</a></h4>
										</div>
										<div class="pro-rating ">
											<a href="#"><i class="fa fa-star"></i></a>
											<a href="#"><i class="fa fa-star"></i></a>
											<a href="#"><i class="fa fa-star"></i></a>
											<a href="#"><i class="fa fa-star"></i></a>
											<a href="#"><i class="fa fa-star"></i></a>
										</div>
										<div class="price-box">
											<span class="price product-price">$${electrproducts[status.index+6].memberPrice}</span>
										</div>
										<div class="product-icon">
											<div class="product-icon-left f-left">
												<a href="#"><i class="fa fa-shopping-cart"></i>Add to Cart</a>
											</div>
											<div class="product-icon-right floatright">
												<a href="#" data-toggle="tooltip" title="Compare"><i class="fa fa-exchange"></i></a>
												<a href="#" data-toggle="tooltip" title="Wishlist"><i class="fa fa-heart"></i></a>
											</div>
										</div>
									</div>
									<span class="sale">sale</span>
								</div>										
							</div>
						</div>
					</div>
				</div>
				</c:forEach>
			</div>
			
			<!-- 珠宝喝手表 -->
			<div class="tab-pane" id="profile">
				<c:forEach items="${jwelnectProducts }" step="7" varStatus="status">
				<div class="row">
					<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12 pad">
						<div class="single-tab-img">
							<a href="#"><img src="img/electronic/1.jpg" alt="" /></a>
						</div>
					</div>
					<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12 pad">
						<div class="single-product pt-30 pb-20 white-bg">
							<div class="product-img pb-40">
								<a href="#"><img src="upload/product${jwelnectProducts[status.index].id }.jpg" alt="" /></a>
							</div>
							<div class="product-content">
								<div class="pro-title">
									<h4><a href="product-details.html">${jwelnectProducts[status.index].name }</a></h4>
								</div>
								<div class="pro-rating ">
									<a href="#"><i class="fa fa-star"></i></a>
									<a href="#"><i class="fa fa-star"></i></a>
									<a href="#"><i class="fa fa-star"></i></a>
									<a href="#"><i class="fa fa-star"></i></a>
									<a href="#"><i class="fa fa-star-o"></i></a>
								</div>
								<div class="price-box">
									<span class="price product-price">$${jwelnectProducts[status.index].memberPrice }</span>
								</div>
								<div class="product-icon">
									<div class="product-icon-left f-left">
										<a href="#"><i class="fa fa-shopping-cart"></i>Add to Cart</a>
									</div>
									<div class="product-icon-right floatright">
										<a href="#" data-toggle="tooltip" title="Compare"><i class="fa fa-exchange"></i></a>
										<a href="#" data-toggle="tooltip" title="Wishlist"><i class="fa fa-heart"></i></a>
									</div>
								</div>
							</div>
							<span class="new">new</span>
						</div>
					</div>
					<div class="col-lg-4 col-md-4 padd-2 col-sm-12 col-xs-12 dotted-style-1">
						<div class="tab-product-active">
							<div class="together-single-product">
								<div class="single-product white-bg">
									<div class="product-img product-container-img">
										<a href="#"><img src="upload/product${jwelnectProducts[status.index+1].id }.jpg" alt="" /></a>
									</div>
									<div class="product-content product-i">
										<div class="pro-title">
											<h4><a href="product-details.html">${jwelnectProducts[status.index+1].name }</a></h4>
										</div>
										<div class="pro-rating ">
											<a href="#"><i class="fa fa-star"></i></a>
											<a href="#"><i class="fa fa-star"></i></a>
											<a href="#"><i class="fa fa-star"></i></a>
											<a href="#"><i class="fa fa-star"></i></a>
											<a href="#"><i class="fa fa-star"></i></a>
										</div>
										<div class="price-box">
											<span class="price product-price">$${jwelnectProducts[status.index+1].memberPrice }</span>
											<span class="price-2"><del>$${jwelnectProducts[status.index+1].normalPrice }</del></span>
										</div>
										<div class="product-icon">
											<div class="product-icon-left f-left">
												<a href="#"><i class="fa fa-shopping-cart"></i>Add to Cart</a>
											</div>
											<div class="product-icon-right floatright">
												<a href="#" data-toggle="tooltip" title="Compare"><i class="fa fa-exchange"></i></a>
												<a href="#" data-toggle="tooltip" title="Wishlist"><i class="fa fa-heart"></i></a>
											</div>
										</div>
									</div>
									<span class="new">new</span>
								</div>
								<div class="single-product white-bg">
									<div class="product-img product-container-img">
										<a href="#"><img src="upload/product${jwelnectProducts[status.index+2].id }.jpg" alt="" /></a>
									</div>
									<div class="product-content product-i">
										<div class="pro-title">
											<h4><a href="product-details.html">${jwelnectProducts[status.index+2].name }</a></h4>
										</div>
										<div class="pro-rating ">
											<a href="#"><i class="fa fa-star"></i></a>
											<a href="#"><i class="fa fa-star"></i></a>
											<a href="#"><i class="fa fa-star"></i></a>
											<a href="#"><i class="fa fa-star"></i></a>
											<a href="#"><i class="fa fa-star"></i></a>
										</div>
										<div class="price-box">
											<span class="price product-price">$${jwelnectProducts[status.index+2].memberPrice }</span>
										</div>
										<div class="product-icon">
											<div class="product-icon-left f-left">
												<a href="#"><i class="fa fa-shopping-cart"></i>Add to Cart</a>
											</div>
											<div class="product-icon-right floatright">
												<a href="#" data-toggle="tooltip" title="Compare"><i class="fa fa-exchange"></i></a>
												<a href="#" data-toggle="tooltip" title="Wishlist"><i class="fa fa-heart"></i></a>
											</div>
										</div>
									</div>
									<span class="sale">sale</span>
								</div>										
							</div>
							<div class="together-single-product">
								<div class="single-product white-bg">
									<div class="product-img product-container-img">
										<a href="#"><img src="upload/product${jwelnectProducts[status.index+3].id }.jpg" alt="" /></a>
									</div>
									<div class="product-content product-i">
										<div class="pro-title">
											<h4><a href="product-details.html">${jwelnectProducts[status.index+3].name }</a></h4>
										</div>
										<div class="pro-rating ">
											<a href="#"><i class="fa fa-star"></i></a>
											<a href="#"><i class="fa fa-star"></i></a>
											<a href="#"><i class="fa fa-star"></i></a>
											<a href="#"><i class="fa fa-star"></i></a>
											<a href="#"><i class="fa fa-star"></i></a>
										</div>
										<div class="price-box">
											<span class="price product-price">$${jwelnectProducts[status.index+3].memberPrice }</span>
										</div>
										<div class="product-icon">
											<div class="product-icon-left f-left">
												<a href="#"><i class="fa fa-shopping-cart"></i>Add to Cart</a>
											</div>
											<div class="product-icon-right floatright">
												<a href="#" data-toggle="tooltip" title="Compare"><i class="fa fa-exchange"></i></a>
												<a href="#" data-toggle="tooltip" title="Wishlist"><i class="fa fa-heart"></i></a>
											</div>
										</div>
									</div>
								</div>
								<div class="single-product white-bg">
									<div class="product-img product-container-img">
										<a href="#"><img src="upload/product${jwelnectProducts[status.index+4].id }.jpg" alt="" /></a>
									</div>
									<div class="product-content product-i">
										<div class="pro-title">
											<h4><a href="product-details.html">${jwelnectProducts[status.index+4].name }</a></h4>
										</div>
										<div class="pro-rating ">
											<a href="#"><i class="fa fa-star"></i></a>
											<a href="#"><i class="fa fa-star"></i></a>
											<a href="#"><i class="fa fa-star"></i></a>
											<a href="#"><i class="fa fa-star"></i></a>
											<a href="#"><i class="fa fa-star"></i></a>
										</div>
										<div class="price-box">
											<span class="price product-price">$${jwelnectProducts[status.index+4].memberPrice }</span>
											<span class="price-2"><del>$${jwelnectProducts[status.index+4].normalPrice }</del></span>
										</div>
										<div class="product-icon">
											<div class="product-icon-left f-left">
												<a href="#"><i class="fa fa-shopping-cart"></i>Add to Cart</a>
											</div>
											<div class="product-icon-right floatright">
												<a href="#" data-toggle="tooltip" title="Compare"><i class="fa fa-exchange"></i></a>
												<a href="#" data-toggle="tooltip" title="Wishlist"><i class="fa fa-heart"></i></a>
											</div>
										</div>
									</div>
									<span class="new">new</span>
								</div>										
							</div>
							<div class="together-single-product">
								<div class="single-product white-bg">
									<div class="product-img product-container-img">
										<a href="#"><img src="upload/product${jwelnectProducts[status.index+5].id }.jpg" alt="" /></a>
									</div>
									<div class="product-content product-i">
										<div class="pro-title">
											<h4><a href="product-details.html">${jwelnectProducts[status.index+5].name } </a></h4>
										</div>
										<div class="pro-rating ">
											<a href="#"><i class="fa fa-star"></i></a>
											<a href="#"><i class="fa fa-star"></i></a>
											<a href="#"><i class="fa fa-star"></i></a>
											<a href="#"><i class="fa fa-star"></i></a>
											<a href="#"><i class="fa fa-star-o"></i></a>
										</div>
										<div class="price-box">
											<span class="price product-price">$${jwelnectProducts[status.index+5].normalPrice }</span>
										</div>
										<div class="product-icon">
											<div class="product-icon-left f-left">
												<a href="#"><i class="fa fa-shopping-cart"></i>Add to Cart</a>
											</div>
											<div class="product-icon-right floatright">
												<a href="#" data-toggle="tooltip" title="Compare"><i class="fa fa-exchange"></i></a>
												<a href="#" data-toggle="tooltip" title="Wishlist"><i class="fa fa-heart"></i></a>
											</div>
										</div>
									</div>
									<span class="sale">sale</span>
								</div>
								<div class="single-product white-bg">
									<div class="product-img product-container-img">
										<a href="#"><img src="upload/product${jwelnectProducts[status.index+6].id }.jpg" alt="" /></a>
									</div>
									<div class="product-content product-i">
										<div class="pro-title">
											<h4><a href="product-details.html">${jwelnectProducts[status.index+6].name }</a></h4>
										</div>
										<div class="pro-rating ">
											<a href="#"><i class="fa fa-star"></i></a>
											<a href="#"><i class="fa fa-star"></i></a>
											<a href="#"><i class="fa fa-star"></i></a>
											<a href="#"><i class="fa fa-star"></i></a>
											<a href="#"><i class="fa fa-star"></i></a>
										</div>
										<div class="price-box">
											<span class="price product-price">$${jwelnectProducts[status.index+6].memberPrice }</span>
										</div>
										<div class="product-icon">
											<div class="product-icon-left f-left">
												<a href="#"><i class="fa fa-shopping-cart"></i>Add to Cart</a>
											</div>
											<div class="product-icon-right floatright">
												<a href="#" data-toggle="tooltip" title="Compare"><i class="fa fa-exchange"></i></a>
												<a href="#" data-toggle="tooltip" title="Wishlist"><i class="fa fa-heart"></i></a>
											</div>
										</div>
									</div>
									<span class="sale">sale</span>
								</div>										
							</div>
						</div>
						
					</div>
				</div>		
				</c:forEach>			
			</div>
			
			<!-- 体育与户外 -->
			<div class="tab-pane" id="messages">
			<c:forEach items="${soproducts }" step="7" varStatus="status">
				<div class="row">
					<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12 pad">
						<div class="single-tab-img">
							<a href="#"><img src="img/electronic/1.jpg" alt="" /></a>
						</div>
					</div>
					<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12 pad">
						<div class="single-product pt-30 pb-20 white-bg">
							<div class="product-img pb-40">
								<a href="#"><img src="upload/product${soproducts[status.index].id }.jpg" alt="" /></a>
							</div>
							<div class="product-content">
								<div class="pro-title">
									<h4><a href="product-details.html"></a>${soproducts[status.index].name }</h4>
								</div>
								<div class="pro-rating ">
									<a href="#"><i class="fa fa-star"></i></a>
									<a href="#"><i class="fa fa-star"></i></a>
									<a href="#"><i class="fa fa-star"></i></a>
									<a href="#"><i class="fa fa-star"></i></a>
									<a href="#"><i class="fa fa-star-o"></i></a>
								</div>
								<div class="price-box">
									<span class="price product-price">$${soproducts[status.index].memberPrice }</span>
								</div>
								<div class="product-icon">
									<div class="product-icon-left f-left">
										<a href="#"><i class="fa fa-shopping-cart"></i>Add to Cart</a>
									</div>
									<div class="product-icon-right floatright">
										<a href="#" data-toggle="tooltip" title="Compare"><i class="fa fa-exchange"></i></a>
										<a href="#" data-toggle="tooltip" title="Wishlist"><i class="fa fa-heart"></i></a>
									</div>
								</div>
							</div>
							<span class="new">new</span>
						</div>
					</div>
					<div class="col-lg-4 col-md-4 padd-2 col-sm-12 col-xs-12 dotted-style-1">
						<div class="tab-product-active">
							<div class="together-single-product">
								<div class="single-product white-bg">
									<div class="product-img product-container-img">
										<a href="#"><img src="upload/product${soproducts[status.index+1].id }.jpg" alt="" /></a>
									</div>
									<div class="product-content product-i">
										<div class="pro-title">
											<h4><a href="product-details.html">${soproducts[status.index+1].name}</a></h4>
										</div>
										<div class="pro-rating ">
											<a href="#"><i class="fa fa-star"></i></a>
											<a href="#"><i class="fa fa-star"></i></a>
											<a href="#"><i class="fa fa-star"></i></a>
											<a href="#"><i class="fa fa-star"></i></a>
											<a href="#"><i class="fa fa-star-o"></i></a>
										</div>
										<div class="price-box">
											<span class="price product-price">$${soproducts[status.index+1].memberPrice}</span>
											<span class="price-2"><del>$${soproducts[status.index+1].normalPrice}</del></span>
										</div>
										<div class="product-icon">
											<div class="product-icon-left f-left">
												<a href="#"><i class="fa fa-shopping-cart"></i>Add to Cart</a>
											</div>
											<div class="product-icon-right floatright">
												<a href="#" data-toggle="tooltip" title="Compare"><i class="fa fa-exchange"></i></a>
												<a href="#" data-toggle="tooltip" title="Wishlist"><i class="fa fa-heart"></i></a>
											</div>
										</div>
									</div>
									<span class="new">new</span>
								</div>
								<div class="single-product white-bg">
									<div class="product-img product-container-img">
										<a href="#"><img src="upload/product${soproducts[status.index+2].id }.jpg" alt="" /></a>
									</div>
									<div class="product-content product-i">
										<div class="pro-title">
											<h4><a href="product-details.html">${soproducts[status.index+2].name}</a></h4>
										</div>
										<div class="pro-rating ">
											<a href="#"><i class="fa fa-star"></i></a>
											<a href="#"><i class="fa fa-star"></i></a>
											<a href="#"><i class="fa fa-star"></i></a>
											<a href="#"><i class="fa fa-star"></i></a>
											<a href="#"><i class="fa fa-star"></i></a>
										</div>
										<div class="price-box">
											<span class="price product-price">$${soproducts[status.index+2].memberPrice}</span>
										</div>
										<div class="product-icon">
											<div class="product-icon-left f-left">
												<a href="#"><i class="fa fa-shopping-cart"></i>Add to Cart</a>
											</div>
											<div class="product-icon-right floatright">
												<a href="#" data-toggle="tooltip" title="Compare"><i class="fa fa-exchange"></i></a>
												<a href="#" data-toggle="tooltip" title="Wishlist"><i class="fa fa-heart"></i></a>
											</div>
										</div>
									</div>
									<span class="sale">sale</span>
								</div>										
							</div>
							<div class="together-single-product">
								<div class="single-product white-bg">
									<div class="product-img product-container-img">
										<a href="#"><img src="upload/product${soproducts[status.index+3].id }.jpg" alt="" /></a>
									</div>
									<div class="product-content product-i">
										<div class="pro-title">
											<h4><a href="product-details.html">${soproducts[status.index+3].name}</a></h4>
										</div>
										<div class="pro-rating ">
											<a href="#"><i class="fa fa-star"></i></a>
											<a href="#"><i class="fa fa-star"></i></a>
											<a href="#"><i class="fa fa-star"></i></a>
											<a href="#"><i class="fa fa-star"></i></a>
											<a href="#"><i class="fa fa-star-o"></i></a>
										</div>
										<div class="price-box">
											<span class="price product-price">$${soproducts[status.index+3].memberPrice}</span>
											<span class="price-2"><del>$${soproducts[status.index+3].normalPrice}</del></span>
										</div>
										<div class="product-icon">
											<div class="product-icon-left f-left">
												<a href="#"><i class="fa fa-shopping-cart"></i>Add to Cart</a>
											</div>
											<div class="product-icon-right floatright">
												<a href="#" data-toggle="tooltip" title="Compare"><i class="fa fa-exchange"></i></a>
												<a href="#" data-toggle="tooltip" title="Wishlist"><i class="fa fa-heart"></i></a>
											</div>
										</div>
									</div>
								</div>
								<div class="single-product white-bg">
									<div class="product-img product-container-img">
										<a href="#"><img src="upload/product${soproducts[status.index+4].id }.jpg" alt="" /></a>
									</div>
									<div class="product-content product-i">
										<div class="pro-title">
											<h4><a href="product-details.html">${soproducts[status.index+4].name}</a></h4>
										</div>
										<div class="pro-rating ">
											<a href="#"><i class="fa fa-star"></i></a>
											<a href="#"><i class="fa fa-star"></i></a>
											<a href="#"><i class="fa fa-star"></i></a>
											<a href="#"><i class="fa fa-star"></i></a>
											<a href="#"><i class="fa fa-star"></i></a>
										</div>
										<div class="price-box">
											<span class="price product-price">$${soproducts[status.index+4].memberPrice}</span>
											<span class="price-2"><del>$${soproducts[status.index+4].normalPrice}</del></span>
										</div>
										<div class="product-icon">
											<div class="product-icon-left f-left">
												<a href="#"><i class="fa fa-shopping-cart"></i>Add to Cart</a>
											</div>
											<div class="product-icon-right floatright">
												<a href="#" data-toggle="tooltip" title="Compare"><i class="fa fa-exchange"></i></a>
												<a href="#" data-toggle="tooltip" title="Wishlist"><i class="fa fa-heart"></i></a>
											</div>
										</div>
									</div>
									<span class="new">new</span>
								</div>										
							</div>
							<div class="together-single-product">
								<div class="single-product white-bg">
									<div class="product-img product-container-img">
										<a href="#"><img src="upload/product${soproducts[status.index+5].id }.jpg" alt="" /></a>
									</div>
									<div class="product-content product-i">
										<div class="pro-title">
											<h4><a href="product-details.html">${soproducts[status.index+5].name} </a></h4>
										</div>
										<div class="pro-rating ">
											<a href="#"><i class="fa fa-star"></i></a>
											<a href="#"><i class="fa fa-star"></i></a>
											<a href="#"><i class="fa fa-star"></i></a>
											<a href="#"><i class="fa fa-star"></i></a>
											<a href="#"><i class="fa fa-star-o"></i></a>
										</div>
										<div class="price-box">
											<span class="price product-price">$${soproducts[status.index+5].memberPrice}</span>
										</div>
										<div class="product-icon">
											<div class="product-icon-left f-left">
												<a href="#"><i class="fa fa-shopping-cart"></i>Add to Cart</a>
											</div>
											<div class="product-icon-right floatright">
												<a href="#" data-toggle="tooltip" title="Compare"><i class="fa fa-exchange"></i></a>
												<a href="#" data-toggle="tooltip" title="Wishlist"><i class="fa fa-heart"></i></a>
											</div>
										</div>
									</div>
									<span class="sale">sale</span>
								</div>
								<div class="single-product white-bg">
									<div class="product-img product-container-img">
										<a href="#"><img src="upload/product${soproducts[status.index+6].id }.jpg" alt="" /></a>
									</div>
									<div class="product-content product-i">
										<div class="pro-title">
											<h4><a href="product-details.html">${soproducts[status.index+6].name}</a></h4>
										</div>
										<div class="pro-rating ">
											<a href="#"><i class="fa fa-star"></i></a>
											<a href="#"><i class="fa fa-star"></i></a>
											<a href="#"><i class="fa fa-star"></i></a>
											<a href="#"><i class="fa fa-star"></i></a>
											<a href="#"><i class="fa fa-star"></i></a>
										</div>
										<div class="price-box">
											<span class="price product-price">$${soproducts[status.index+6].memberPrice}</span>
										</div>
										<div class="product-icon">
											<div class="product-icon-left f-left">
												<a href="#"><i class="fa fa-shopping-cart"></i>Add to Cart</a>
											</div>
											<div class="product-icon-right floatright">
												<a href="#" data-toggle="tooltip" title="Compare"><i class="fa fa-exchange"></i></a>
												<a href="#" data-toggle="tooltip" title="Wishlist"><i class="fa fa-heart"></i></a>
											</div>
										</div>
									</div>
									<span class="sale">sale</span>
								</div>										
							</div>
						</div>
					</div>
				</div>	
				</c:forEach>				
			</div>
			<!-- 健康与美容 -->>
			
			<div class="tab-pane" id="settings">
				<div class="row">
					<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12 pad">
						<div class="single-tab-img">
							<a href="#"><img src="img/electronic/1.jpg" alt="" /></a>
						</div>
					</div>
					<c:forEach items="${hbproducts }"  varStatus="status" step="7">
					<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12 pad">
						<div class="single-product pt-30 pb-20 white-bg">
							<div class="product-img pb-40">
								<a href="#"><img src="upload/product${hbproducts[status.index].id }.jpg" alt="" /></a>
							</div>
							<div class="product-content">
								<div class="pro-title">
									<h4><a href="product-details.html">${hbproducts[status.index].name }</a></h4>
								</div>
								<div class="pro-rating ">
									<a href="#"><i class="fa fa-star"></i></a>
									<a href="#"><i class="fa fa-star"></i></a>
									<a href="#"><i class="fa fa-star"></i></a>
									<a href="#"><i class="fa fa-star"></i></a>
									<a href="#"><i class="fa fa-star-o"></i></a>
								</div>
								<div class="price-box">
									<span class="price product-price">$${hbproducts[status.index].memberPrice }</span>
								</div>
								<div class="product-icon">
									<div class="product-icon-left f-left">
										<a href="#"><i class="fa fa-shopping-cart"></i>Add to Cart</a>
									</div>
									<div class="product-icon-right floatright">
										<a href="#" data-toggle="tooltip" title="Compare"><i class="fa fa-exchange"></i></a>
										<a href="#" data-toggle="tooltip" title="Wishlist"><i class="fa fa-heart"></i></a>
									</div>
								</div>
							</div>
							<span class="new">new</span>
						</div>
					</div>
					
					<div class="col-lg-4 col-md-4 padd-2 col-sm-12 col-xs-12 dotted-style-1">
						<div class="tab-product-active">
						
							<div class="together-single-product">
								<div class="single-product white-bg">
									<div class="product-img product-container-img">
										<a href="#"><img src="upload/product${hbproducts[status.index+1].id }.jpg" alt="" /></a>
									</div>
									<div class="product-content product-i">
										<div class="pro-title">
											<h4><a href="product-details.html">${hbproducts[status.index+1].name } </a></h4>
										</div>
										<div class="pro-rating ">
											<a href="#"><i class="fa fa-star"></i></a>
											<a href="#"><i class="fa fa-star"></i></a>
											<a href="#"><i class="fa fa-star"></i></a>
											<a href="#"><i class="fa fa-star"></i></a>
											<a href="#"><i class="fa fa-star-o"></i></a>
										</div>
										<div class="price-box">
											<span class="price product-price">$${hbproducts[status.index+1].memberPrice }</span>
											<span class="price-2"><del>$${hbproducts[status.index+1].normalPrice }</del></span>
										</div>
										<div class="product-icon">
											<div class="product-icon-left f-left">
												<a href="#"><i class="fa fa-shopping-cart"></i>Add to Cart</a>
											</div>
											<div class="product-icon-right floatright">
												<a href="#" data-toggle="tooltip" title="Compare"><i class="fa fa-exchange"></i></a>
												<a href="#" data-toggle="tooltip" title="Wishlist"><i class="fa fa-heart"></i></a>
											</div>
										</div>
									</div>
									<span class="new">new</span>
								</div>
									
								<div class="single-product white-bg">
									<div class="product-img product-container-img">
										<a href="#"><img src="upload/product${hbproducts[status.index+2].id }.jpg" alt="" /></a>
									</div>
									<div class="product-content product-i">
										<div class="pro-title">
											<h4><a href="product-details.html">${hbproducts[status.index+2].name }</a></h4>
										</div>
										<div class="pro-rating ">
											<a href="#"><i class="fa fa-star"></i></a>
											<a href="#"><i class="fa fa-star"></i></a>
											<a href="#"><i class="fa fa-star"></i></a>
											<a href="#"><i class="fa fa-star"></i></a>
											<a href="#"><i class="fa fa-star"></i></a>
										</div>
										<div class="price-box">
											<span class="price product-price">${hbproducts[status.index+2].memberPrice }</span>
										</div>
										<div class="product-icon">
											<div class="product-icon-left f-left">
												<a href="#"><i class="fa fa-shopping-cart"></i>Add to Cart</a>
											</div>
											<div class="product-icon-right floatright">
												<a href="#" data-toggle="tooltip" title="Compare"><i class="fa fa-exchange"></i></a>
												<a href="#" data-toggle="tooltip" title="Wishlist"><i class="fa fa-heart"></i></a>
											</div>
										</div>
									</div>
									<span class="sale">sale</span>
								</div>										
							</div>
						
							<div class="together-single-product">
								<div class="single-product white-bg">
									<div class="product-img product-container-img">
										<a href="#"><img src="upload/product${hbproducts[status.index+3].id }.jpg" alt="" /></a>
									</div>
									<div class="product-content product-i">
										<div class="pro-title">
											<h4><a href="product-details.html">${hbproducts[status.index+3].name}</a></h4>
										</div>
										<div class="pro-rating ">
											<a href="#"><i class="fa fa-star"></i></a>
											<a href="#"><i class="fa fa-star"></i></a>
											<a href="#"><i class="fa fa-star"></i></a>
											<a href="#"><i class="fa fa-star"></i></a>
											<a href="#"><i class="fa fa-star-o"></i></a>
										</div>
										<div class="price-box">
											<span class="price product-price">$${hbproducts[status.index+3].memberPrice}</span>
											<span class="price-2"><del>$${hbproducts[status.index+3].normalPrice}</del></span>
										</div>
										<div class="product-icon">
											<div class="product-icon-left f-left">
												<a href="#"><i class="fa fa-shopping-cart"></i>Add to Cart</a>
											</div>
											<div class="product-icon-right floatright">
												<a href="#" data-toggle="tooltip" title="Compare"><i class="fa fa-exchange"></i></a>
												<a href="#" data-toggle="tooltip" title="Wishlist"><i class="fa fa-heart"></i></a>
											</div>
										</div>
									</div>
								</div>
								<div class="single-product white-bg">
									<div class="product-img product-container-img">
										<a href="#"><img src="upload/product${hbproducts[status.index+4].id }.jpg" alt="" /></a>
									</div>
									<div class="product-content product-i">
										<div class="pro-title">
											<h4><a href="product-details.html">${hbproducts[status.index+4].name}</a></h4>
										</div>
										<div class="pro-rating ">
											<a href="#"><i class="fa fa-star"></i></a>
											<a href="#"><i class="fa fa-star"></i></a>
											<a href="#"><i class="fa fa-star"></i></a>
											<a href="#"><i class="fa fa-star"></i></a>
											<a href="#"><i class="fa fa-star"></i></a>
										</div>
										<div class="price-box">
											<span class="price product-price">$${hbproducts[status.index+4].memberPrice}</span>
											<span class="price-2"><del>$${hbproducts[status.index+4].normalPrice}</del></span>
										</div>
										<div class="product-icon">
											<div class="product-icon-left f-left">
												<a href="#"><i class="fa fa-shopping-cart"></i>Add to Cart</a>
											</div>
											<div class="product-icon-right floatright">
												<a href="#" data-toggle="tooltip" title="Compare"><i class="fa fa-exchange"></i></a>
												<a href="#" data-toggle="tooltip" title="Wishlist"><i class="fa fa-heart"></i></a>
											</div>
										</div>
									</div>
									<span class="new">new</span>
								</div>										
							</div>
							
							<div class="together-single-product">
										<div class="single-product white-bg">
											<div class="product-img product-container-img">
												<a href="#"><img src="upload/product${hbproducts[status.index+5].id }.jpg" alt="" /></a>
											</div>
											<div class="product-content product-i">
												<div class="pro-title">
													<h4><a href="product-details.html">${hbproducts[status.index+5].name} </a></h4>
												</div>
												<div class="pro-rating ">
													<a href="#"><i class="fa fa-star"></i></a>
													<a href="#"><i class="fa fa-star"></i></a>
													<a href="#"><i class="fa fa-star"></i></a>
													<a href="#"><i class="fa fa-star"></i></a>
													<a href="#"><i class="fa fa-star-o"></i></a>
												</div>
												<div class="price-box">
													<span class="price product-price">$${hbproducts[status.index+5].normalPrice}</span>
												</div>
												<div class="product-icon">
													<div class="product-icon-left f-left">
														<a href="#"><i class="fa fa-shopping-cart"></i>Add to Cart</a>
													</div>
													<div class="product-icon-right floatright">
														<a href="#" data-toggle="tooltip" title="Compare"><i class="fa fa-exchange"></i></a>
														<a href="#" data-toggle="tooltip" title="Wishlist"><i class="fa fa-heart"></i></a>
													</div>
												</div>
											</div>
											<span class="sale">sale</span>
										</div>
										<div class="single-product white-bg">
											<div class="product-img product-container-img">
												<a href="#"><img src="upload/product${hbproducts[status.index+6].id }.jpg" alt="" /></a>
											</div>
											<div class="product-content product-i">
												<div class="pro-title">
													<h4><a href="product-details.html">${hbproducts[status.index+6].name}</a></h4>
												</div>
												<div class="pro-rating ">
													<a href="#"><i class="fa fa-star"></i></a>
													<a href="#"><i class="fa fa-star"></i></a>
													<a href="#"><i class="fa fa-star"></i></a>
													<a href="#"><i class="fa fa-star"></i></a>
													<a href="#"><i class="fa fa-star"></i></a>
												</div>
												<div class="price-box">
													<span class="price product-price">$${hbproducts[status.index+6].normalPrice}</span>
												</div>
												<div class="product-icon">
													<div class="product-icon-left f-left">
														<a href="#"><i class="fa fa-shopping-cart"></i>Add to Cart</a>
													</div>
													<div class="product-icon-right floatright">
														<a href="#" data-toggle="tooltip" title="Compare"><i class="fa fa-exchange"></i></a>
														<a href="#" data-toggle="tooltip" title="Wishlist"><i class="fa fa-heart"></i></a>
													</div>
												</div>
											</div>
											<span class="sale">sale</span>
										</div>													
							</div>
						</c:forEach>
						</div>
					</div>
				</div>						
			</div>
		</div>
	</div>
</div>
<!-- electronic-tab-area-end -->
<!-- all-product-area-start -->
<div class="all-product-area pb-60">
	<div class="container">
		<div class="row">
			<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
				<!-- bestseller-area -->
				<div class="bestseller-area dotted-style-2">
					<div class="section-title">
						<h3>Bestseller</h3>
					</div>
					<div class="single-product-items-active border-1">
					
						<div class="single-product-items">
						<c:forEach items="${bookproducts }" var="item" begin="0" end="4" varStatus="status">
							<div class="single-product single-product-sidebar white-bg">
							
								<div class="product-img product-img-left">
									<a href="#"><img src="upload/product${bookproducts[status.index].id }.jpg" alt="" /></a>
								</div>
								<div class="product-content product-content-right">
									<div class="pro-title">
										<h4><a href="product-details.html">${bookproducts[status.index].name }</a></h4>
									</div>
									<div class="pro-rating ">
										<a href="#"><i class="fa fa-star"></i></a>
										<a href="#"><i class="fa fa-star"></i></a>
										<a href="#"><i class="fa fa-star"></i></a>
										<a href="#"><i class="fa fa-star"></i></a>
										<a href="#"><i class="fa fa-star-o"></i></a>
									</div>
									<div class="price-box">
										<span class="price product-price">$${bookproducts[status.index].memberPrice }</span>
									</div>
									<div class="product-icon">
										<div class="product-icon-left f-left">
											<a href="#"><i class="fa fa-shopping-cart"></i>Add to Cart</a>
										</div>
									</div>
								</div>					
							</div>
							</c:forEach>								
						</div>
						
						<div class="single-product-items">
						<c:forEach items="${bookproducts }" var="item" begin="5" end="9" varStatus="status">
							<div class="single-product single-product-sidebar white-bg">
								<div class="product-img product-img-left">
									<a href="#"><img src="upload/product${bookproducts[status.index].id }.jpg" alt="" /></a>
								</div>
								<div class="product-content product-content-right">
									<div class="pro-title">
										<h4><a href="product-details.html">${bookproducts[status.index].name }</a></h4>
									</div>
									<div class="pro-rating ">
										<a href="#"><i class="fa fa-star"></i></a>
										<a href="#"><i class="fa fa-star"></i></a>
										<a href="#"><i class="fa fa-star"></i></a>
										<a href="#"><i class="fa fa-star"></i></a>
										<a href="#"><i class="fa fa-star-o"></i></a>
									</div>
									<div class="price-box">
										<span class="price product-price">$${bookproducts[status.index].memberPrice }</span>
									</div>
									<div class="product-icon">
										<div class="product-icon-left f-left">
											<a href="#"><i class="fa fa-shopping-cart"></i>Add to Cart</a>
										</div>
									</div>
								</div>					
							</div>
							</c:forEach>
																
						</div>						
					</div>						
				</div>
				<!-- special-products-area -->
				<div class="special-products-area dotted-style-2 ptb-50">
					<div class="section-title">
						<h3>special-products</h3>
					</div>
					<div class="special-products-active border-1">
						<div class="single-product white-bg">
							<div class="product-img">
								<a href="#"><img src="img/product/2.jpg" alt="" /></a>
							</div>
							<div class="product-content">
								<div class="pro-title">
									<h4><a href="product-details.html">Lounge Chair Cinema</a></h4>
								</div>
								<div class="pro-rating ">
									<a href="#"><i class="fa fa-star"></i></a>
									<a href="#"><i class="fa fa-star"></i></a>
									<a href="#"><i class="fa fa-star"></i></a>
									<a href="#"><i class="fa fa-star"></i></a>
									<a href="#"><i class="fa fa-star-o"></i></a>
								</div>
								<div class="price-box">
									<span class="price product-price">$262.00</span>
								</div>
								<div class="product-icon">
									<div class="product-icon-left f-left">
										<a href="#"><i class="fa fa-shopping-cart"></i>Add to Cart</a>
									</div>
									<div class="product-icon-right floatright">
										<a href="#" data-toggle="tooltip" title="Compare"><i class="fa fa-exchange"></i></a>
										<a href="#" data-toggle="tooltip" title="Wishlist"><i class="fa fa-heart"></i></a>
									</div>
								</div>
							</div>
						</div>
						<div class="single-product white-bg">
							<div class="product-img">
								<a href="#"><img src="img/product/5.jpg" alt="" /></a>
							</div>
							<div class="product-content">
								<div class="pro-title">
									<h4><a href="product-details.html">Footstool</a></h4>
								</div>
								<div class="pro-rating ">
									<a href="#"><i class="fa fa-star"></i></a>
									<a href="#"><i class="fa fa-star"></i></a>
									<a href="#"><i class="fa fa-star"></i></a>
									<a href="#"><i class="fa fa-star"></i></a>
									<a href="#"><i class="fa fa-star-o"></i></a>
								</div>
								<div class="price-box">
									<span class="price product-price">$150.00</span>
								</div>
								<div class="product-icon">
									<div class="product-icon-left f-left">
										<a href="#"><i class="fa fa-shopping-cart"></i>Add to Cart</a>
									</div>
									<div class="product-icon-right floatright">
										<a href="#" data-toggle="tooltip" title="Compare"><i class="fa fa-exchange"></i></a>
										<a href="#" data-toggle="tooltip" title="Wishlist"><i class="fa fa-heart"></i></a>
									</div>
								</div>
							</div>
						</div>							
					</div>
				</div>
				<!-- client-area-start  -->
				<div class="client-area dotted-style-2">
					<div class="section-title">
						<h3>client says</h3>
					</div>
					<div class="clinet-active border-1">
						<div class="single-client fix white-bg">
							<div class="client-content">
								<a href="#"><p>Praesent dapibus, neque id cursus faucibus, tortor neque egestas augue, eu vulputate magna eros eu erat. Aliquam erat volutpat. ...</p></a>
							</div>
							<div class="clint-img">
								<div class="client-img-left">
									<img src="img/client/1.jpg" alt="" />
								</div>
								<div class="client-name">
									<span>Mr Test</span>
								</div>
							</div>
						</div>
						<div class="single-client fix white-bg">
							<div class="client-content">
								<a href="#"><p>Praesent dapibus, neque id cursus faucibus, tortor neque egestas augue, eu vulputate magna eros eu erat. Aliquam erat volutpat. ...</p></a>
							</div>
							<div class="clint-img">
								<div class="client-img-left">
									<img src="img/client/2.jpg" alt="" />
								</div>
								<div class="client-name">
									<span>Mrs Brown</span>
								</div>
							</div>
						</div>
					</div>	
				</div>
			</div>
			<div class="col-lg-9 col-md-9 col-sm-12 col-xs-12">
				<!-- feature-product-area -->
				<div class="feature-product-area dotted-style-2">
					<div class="section-title">
						<h3>Photography products</h3>
					</div>
					<div class="feature-product-active border-1">
					<c:forEach items="${cameraproducts }" begin="0" end="7" varStatus="status">
						<div class="single-product  white-bg">
							<div class="product-img pt-20">
								<a href="#"><img src="upload/product${cameraproducts[status.index].id }.jpg" alt="" /></a>
							</div>
							<div class="product-content product-i">
								<div class="pro-title">
									<h4><a href="product-details.html">${cameraproducts[status.index].name }</a></h4>
								</div>
								<div class="pro-rating ">
									<a href="#"><i class="fa fa-star"></i></a>
									<a href="#"><i class="fa fa-star"></i></a>
									<a href="#"><i class="fa fa-star"></i></a>
									<a href="#"><i class="fa fa-star"></i></a>
									<a href="#"><i class="fa fa-star-o"></i></a>
								</div>
								<div class="price-box">
									<span class="price product-price">$${cameraproducts[status.index].memberPrice }</span>
								</div>
								<div class="product-icon">
									<div class="product-icon-left f-left">
										<a href="#"><i class="fa fa-shopping-cart"></i>Add to Cart</a>
									</div>
									<div class="product-icon-right floatright">
										<a href="#" data-toggle="tooltip" title="Compare"><i class="fa fa-exchange"></i></a>
										<a href="#" data-toggle="tooltip" title="Wishlist"><i class="fa fa-heart"></i></a>
									</div>
								</div>
							</div>
							<span class="new">new</span>
						</div>
						</c:forEach>
					</div>
				</div>
				<!-- banner-area -->
				<div class="banner-area ptb-40">
					<div class="slider-single-img res">
						<a href="#">
						<img class="img_a" src="img/banner/1.jpg" alt="" />
						<img class="img_b" src="img/banner/1.jpg" alt="" />
						</a>
					</div>
				</div>
				<!-- new-product-area -->
				<div class="new-product-area dotted-style-2">
					<div class="section-title">
						<h3>New Products</h3>
					</div>
					<div class="new-product-active border-1">
					<c:forEach items="${totalproducts }" begin="0" end="15" varStatus="status" step="2">
						<div class="new-product-items">
							<div class="single-product  white-bg">
								<div class="product-img pt-20">
									<a href="#"><img src="upload/product${totalproducts[status.index].id }.jpg" alt="" /></a>
								</div>
								<div class="product-content product-i">
									<div class="pro-title">
										<h4><a href="product-details.html">${totalproducts[status.index].name }</a></h4>
									</div>
									<div class="pro-rating ">
										<a href="#"><i class="fa fa-star"></i></a>
										<a href="#"><i class="fa fa-star"></i></a>
										<a href="#"><i class="fa fa-star"></i></a>
										<a href="#"><i class="fa fa-star"></i></a>
										<a href="#"><i class="fa fa-star-o"></i></a>
									</div>
									<div class="price-box">
										<span class="price product-price">$${totalproducts[status.index].memberPrice }</span>
									</div>
									<div class="product-icon">
										<div class="product-icon-left f-left">
											<a href="#"><i class="fa fa-shopping-cart"></i>Add to Cart</a>
										</div>
										<div class="product-icon-right floatright">
											<a href="#" data-toggle="tooltip" title="Compare"><i class="fa fa-exchange"></i></a>
											<a href="#" data-toggle="tooltip" title="Wishlist"><i class="fa fa-heart"></i></a>
										</div>
									</div>
								</div>
								<span class="new">new</span>
							</div>
							<div class="single-product  white-bg">
								<div class="product-img pt-20">
									<a href="#"><img src="upload/product${totalproducts[status.index+1].id }.jpg" alt="" /></a>
								</div>
								<div class="product-content product-i">
									<div class="pro-title">
										<h4><a href="product-details.html">${totalproducts[status.index+1].name }</a></h4>
									</div>
									<div class="pro-rating ">
										<a href="#"><i class="fa fa-star"></i></a>
										<a href="#"><i class="fa fa-star"></i></a>
										<a href="#"><i class="fa fa-star"></i></a>
										<a href="#"><i class="fa fa-star"></i></a>
										<a href="#"><i class="fa fa-star-o"></i></a>
									</div>
									<div class="price-box">
										<span class="price product-price">$${totalproducts[status.index+1].memberPrice }</span>
									</div>
									<div class="product-icon">
										<div class="product-icon-left f-left">
											<a href="#"><i class="fa fa-shopping-cart"></i>Add to Cart</a>
										</div>
										<div class="product-icon-right floatright">
											<a href="#" data-toggle="tooltip" title="Compare"><i class="fa fa-exchange"></i></a>
											<a href="#" data-toggle="tooltip" title="Wishlist"><i class="fa fa-heart"></i></a>
										</div>
									</div>
								</div>
							</div>
						</div>
						</c:forEach>
					</div>
				</div>
				<!-- banner-area-start -->
				<div class="banner-area pt-40">
					<div class="row">
						<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
							<div class="slider-single-img res">
								<a href="#">
								<img class="img_a" src="img/banner/2.jpg" alt="" />
								<img class="img_b" src="img/banner/2.jpg" alt="" />
								</a>
							</div>
						</div>
						<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
							<div class="slider-single-img">
								<a href="#">
								<img class="img_a" src="img/banner/3.jpg" alt="" />
								<img class="img_b" src="img/banner/3.jpg" alt="" />
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- all-product-area-end -->
<!-- brand-area-start -->
<div class="brand-area pb-60 dotted-style-2">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<div class="section-title">
					<h3>Logo Brands & Clients</h3>
				</div>					
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<div class="brand-active border-1">
					<div class="single-brand">
						<a href="#"><img src="img/brand/1.jpg" alt="" /></a>
					</div>
					<div class="single-brand">
						<a href="#"><img src="img/brand/2.jpg" alt="" /></a>
					</div>
					<div class="single-brand">
						<a href="#"><img src="img/brand/3.jpg" alt="" /></a>
					</div>
					<div class="single-brand">
						<a href="#"><img src="img/brand/4.jpg" alt="" /></a>
					</div>
					<div class="single-brand">
						<a href="#"><img src="img/brand/5.jpg" alt="" /></a>
					</div>
					<div class="single-brand">
						<a href="#"><img src="img/brand/6.jpg" alt="" /></a>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- brand-area-end -->
<!-- blog-area-start -->
<div class="blog-area dotted-style-2  pb-60">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<div class="section-title">
					<h3>latest from blog</h3>
				</div>					
			</div>
		</div>
		<div class="row">
			<div class="blog-active">
				<div class="col-lg-12">
					<div class="single-blog">
						<div class="blog-img">
							<img src="img/blog/1.jpg" alt="" />
						</div>
						<div class="blog-content-inner">
							<div class="blog-content white-bg">
								<a href="#"><h4>LATIN PROFESSOR</h4></a>
								<p class="mb-0">Donec vitae hendrerit arcu, sit amet faucibus nisl..</p>
								<a href="#" class="read-more text-capitalize">Read more <i class="fa fa-arrow-circle-right"></i></a>
							</div>							
						</div>
					</div>
				</div>
				<div class="col-lg-12">
					<div class="single-blog">
						<div class="blog-img">
							<img src="img/blog/2.jpg" alt="" />
						</div>
						<div class="blog-content-inner">
							<div class="blog-content white-bg">
								<a href="#"><h4>LATIN PROFESSOR</h4></a>
								<p class="mb-0">Donec vitae hendrerit arcu, sit amet faucibus nisl..</p>
								<a href="#" class="read-more text-capitalize">Read more <i class="fa fa-arrow-circle-right"></i></a>
							</div>							
						</div>
					</div>
				</div>
				<div class="col-lg-12">
					<div class="single-blog">
						<div class="blog-img">
							<img src="img/blog/3.jpg" alt="" />
						</div>
						<div class="blog-content-inner">
							<div class="blog-content white-bg">
								<a href="#"><h4>welcome to plazathemes</h4></a>
								<p class="mb-0">Donec vitae hendrerit arcu, sit amet faucibus nisl..</p>
								<a href="#" class="read-more text-capitalize">Read more <i class="fa fa-arrow-circle-right"></i></a>
							</div>							
						</div>
					</div>
				</div>					
			</div>
		</div>
	</div>
</div>
<!-- blog-area-end -->
<!-- newletter-area-start -->
<div class="newletter-area ptb-30">
	<div class="container">
		<div class="row">
			<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
				<div class="newletter-logo">
					<a href="#"><img src="img/logo.png" alt="" /></a>
				</div>
			</div>
			<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
				<div class="subscribe-form">
					<form action="#">
						<input placeholder="Email address..." type="text">
						<button class="subscribe">Subscribe</button>							
					</form>
				</div>
			</div>
			<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
				<div class="subscribe-social text-right">
					<a href="#"><i class="fa fa-youtube"></i></a>
					<a href="#"><i class="fa fa-facebook"></i></a>
					<a href="#"><i class="fa fa-google-plus"></i></a>
					<a href="#"><i class="fa fa-twitter"></i></a>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- newletter-area-end -->
<footer>
	<!-- footer-top-area -->
	<div class="footer-top-area border-1 ptb-30 bg-color-3">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
					<div class="footer-title">
						<h4>Store Information</h4>
					</div>
					<div class="footer-widget">
						<div class="contact-info">
							<ul>
								<li>
									<div class="contact-icon">
										<i class="fa fa-home"></i>
									</div>
									<div class="contact-text">
										<span>PO Box 16122 Collins Street West Victoria 8007 Australia</span>
									</div>
								</li>
								<li>
									<div class="contact-icon">
										<i class="fa fa-envelope-o"></i>
									</div>
									<div class="contact-text">
										<a href="#"><span>demo@towerthemes.com</span></a>
									</div>
								</li>
								<li>
									<div class="contact-icon">
										<i class="fa fa-phone"></i>
									</div>
									<div class="contact-text">
										<span>(+1)866-550-3669</span>
									</div>
								</li>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
					<div class="footer-title">
						<h4>Information</h4>
					</div>
					<div class="footer-widget">
						<div class="list-unstyled">
							<ul>
								<li><a href="#">About Us</a></li>
								<li><a href="#">Delivery Information</a></li>
								<li><a href="#">Privacy Policy</a></li>
								<li><a href="#">Terms & Conditions</a></li>
								<li><a href="#">Contact Us</a></li>
								<li><a href="#">Site Map</a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
					<div class="footer-title">
						<h4>My Account</h4>
					</div>
					<div class="footer-widget">
						<div class="list-unstyled">
							<ul>
								<li><a href="#">My Account</a></li>
								<li><a href="#">Order History</a></li>
								<li><a href="#">Wish List</a></li>
								<li><a href="#">Newsletter</a></li>
								<li><a href="#">Specials</a></li>
								<li><a href="#">Brands</a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
					<div class="footer-title">
						<h4>Instagram</h4>
					</div>
					<div class="footer-widget">	
						<div class="footer-widget-img">
							<div class="single-img">
								<a href="#"><img src="img/footer/1.jpg" alt="" /></a>
							</div>
							<div class="single-img">
								<a href="#"><img src="img/footer/2.jpg" alt="" /></a>
							</div>
							<div class="single-img">
								<a href="#"><img src="img/footer/3.jpg" alt="" /></a>
							</div>
							<div class="single-img">
								<a href="#"><img src="img/footer/4.jpg" alt="" /></a>
							</div>
							<div class="single-img">
								<a href="#"><img src="img/footer/5.jpg" alt="" /></a>
							</div>
							<div class="single-img">
								<a href="#"><img src="img/footer/6.jpg" alt="" /></a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</footer>
<!-- copyright-area-start -->
<div class="copyright-area text-center bg-color-3">
	<div class="container"> 
		<div class="copyright-border ptb-30">
			<div class="row">
				<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
					<div class="copyright text-left">
						<p>Copyright &copy; 2017.Company name All rights reserved.</p>
					</div>
				</div>
				<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
					<div class="payment text-right">
						<a href="#"><img src="img/payment.png" alt="" /></a>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- copyright-area-end -->
<!-- social_block-start -->
<div id="social_block">
	<ul>
		<li class="facebook"><a href="#">Facebook</a></li>
		<li class="twitter"><a href="#">twitter</a></li>
		<li class="rss"><a href="#">rss</a></li>
		<li class="youtube"><a href="#">youtube</a></li>
		<li class="google-plus"><a href="#">google plus</a></li>
		<li class="pinterest"><a href="#">pinterest</a></li>
	</ul>
</div>
<!-- social_block-end -->


<!-- all js here -->
<!-- jquery-1.12.0 -->
<script src="js/vendor/jquery-1.12.0.min.js"></script>
<!-- bootstrap.min.js -->
<script src="js/bootstrap.min.js"></script>
<!-- nivo.slider.js -->
<script src="js/jquery.nivo.slider.pack.js"></script>
<!-- jquery-ui.min.js -->
<script src="js/jquery-ui.min.js"></script>
<!-- jquery.magnific-popup.min.js -->
<script src="js/jquery.magnific-popup.min.js"></script>
<!-- jquery.meanmenu.min.js -->
<script src="js/jquery.meanmenu.js"></script>
<!-- jquery.scrollup.min.js-->
<script src="js/jquery.scrollup.min.js"></script>
<!-- owl.carousel.min.js -->
<script src="js/owl.carousel.min.js"></script>		
<!-- plugins.js -->
<script src="js/plugins.js"></script>
<!-- main.js -->
<script src="js/main.js"></script>
</body>
</html>