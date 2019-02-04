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
        <title>Product Details</title>
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
		<!-- jquery-ui.min.css -->
		<!-- magnific-popup.css -->
        <link rel="stylesheet" href="css/magnific-popup.css">
		<!-- jquery-ui.min.css -->
        <link rel="stylesheet" href="css/jquery-ui.min.css">
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

		<!-- mobile-menu-end -->		
		<!-- mainmenu-area-end -->
		<!-- breadcrumb start -->
		<div class="breadcrumb-area">
			<div class="container">
				<ol class="breadcrumb">
				  <li><a href="index.html"><i class="fa fa-home"></i> Home</a></li>
				  <li class="active">Product Details</li>
				</ol>			
			</div>
		</div>
		<!-- breadcrumb end -->	
		<!-- product-details-start -->
		<div class="product-details-area pt-20">
			<div class="container">
				<div class="row">
					<div class="col-xs-12 col-sm-6 col-md-5">					
						<div class="product-zoom dotted-style-1">
							<!-- Tab panes -->
							<div class="tab-content">
								<div class="tab-pane active" id="home">
									<div class="pro-large-img">
										<img src="upload/product${productdetail.id }.jpg" alt="" />
										<a class="popup-link" href="upload/product${productdetail.id }.jpg">View larger <i class="fa fa-search-plus" aria-hidden="true"></i></a>
									</div>
								</div>
								<div class="tab-pane" id="profile">
									<div class="pro-large-img">
										<img src="upload/product${productdetail.id }.jpg" alt="" />
										<a class="popup-link" href="upload/product${productdetail.id }.jpg">View larger <i class="fa fa-search-plus" aria-hidden="true"></i></a>
									</div>							
								</div>
								<div class="tab-pane" id="messages">
									<div class="pro-large-img">
										<img src="upload/product${productdetail.id }.jpg" alt="" />
										<a class="popup-link" href="upload/product${productdetail.id }.jpg">View larger <i class="fa fa-search-plus" aria-hidden="true"></i></a>
									</div>							
								</div>
								<div class="tab-pane" id="settings">
									<div class="pro-large-img">
										<img src="upload/product${productdetail.id }.jpg" alt="" />
										<a class="popup-link" href="upload/product${productdetail.id }.jpg">View larger <i class="fa fa-search-plus" aria-hidden="true"></i></a>
									</div>							
								</div>
								<div class="tab-pane" id="settings2">
									<div class="pro-large-img">
										<img src="upload/product${productdetail.id }.jpg" alt="" />
										<a class="popup-link" href="upload/product${productdetail.id }.jpg">View larger <i class="fa fa-search-plus" aria-hidden="true"></i></a>
									</div>							
								</div>
								<div class="tab-pane" id="settings3">
									<div class="pro-large-img">
										<img src="upload/product${productdetail.id }.jpg" alt="" />
										<a class="popup-link" href="upload/product${productdetail.id }.jpg">View larger <i class="fa fa-search-plus" aria-hidden="true"></i></a>
									</div>							
								</div>
							</div>
							<!-- Nav tabs -->
							<ul class="details-tab">
								<li class="active"><a href="#home" data-toggle="tab"><img src="img/product/1.jpg" alt="" /></a></li>
								<li><a href="#profile" data-toggle="tab"><img src="img/product/2.jpg" alt="" /></a></li>
								<li><a href="#messages" data-toggle="tab"><img src="img/product/3.jpg" alt="" /></a></li>
								<li><a href="#settings" data-toggle="tab"><img src="img/product/4.jpg" alt="" /></a></li>
								<li><a href="#settings2" data-toggle="tab"><img src="img/product/5.jpg" alt="" /></a></li>
								<li><a href="#settings3" data-toggle="tab"><img src="img/product/6.jpg" alt="" /></a></li>
							</ul>								
						</div>
					</div>
					<div class="col-xs-12 col-sm-6 col-md-7">
						<div class="product-details">
							<h2 class="pro-d-title">${productdetail.name }</h2>
							<div class="pro-ref">
								<p>
									<label>Product id: </label> 
									<span> ${productdetail.id }</span>
								</p>
								<p>
									<label>Category id: </label> 
									<span>${productdetail.categoryId }</span>
								</p>							
							</div>
							<div class="price-box">
								<span class="price product-price">$${productdetail.memberPrice }</span>
								<span class="old-price product-price">$${productdetail.normalPrice }</span>
							</div>
							<div class="short-desc">
								<p>${productdetail.descr }</p>
							</div>
							<div class="box-quantity">
								<form action="cartdeal?productid=${productdetail.id }" method="post">
									<label>Quantity</label>	
									<input type="number" value="1" />
									<button>add to cart</button>
								</form>
							</div>
							<div class="usefull_link_block">
								<ul>
									<li><a href="#"><i class="fa fa-envelope-o"></i>Send to a friend</a></li>
									<li><a href="#"><i class="fa fa-print"></i>Print</a></li>
									<li><a href="#"><i class="fa fa-heart-o"></i> Add to wishlist</a></li>
								</ul>
							</div>
							<div class="select-size">
								<form action="#">
									<label>Size</label>
									<select name="#">
										<option value="">5</option>
										<option value="">6</option>
										<option value="">7</option>
										<option value="">8</option>
										<option value="">9</option>
									</select>
								</form>
							</div>
							<div class="color-list">
								<a href="#"></a>
								<a href="#"></a>
							</div>						
							<div class="share-icon">
								<a class="twitter" href="#"><i class="fa fa-facebook"></i>  facebook</a>
								<a class="facebook" href="#"><i class="fa fa-twitter"></i>  twitter</a>
								<a class="google" href="#"><i class="fa fa-google-plus"></i>  linkedin</a>
								<a class="pinterest" href="#"><i class="fa fa-pinterest"></i>  facebook</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>		
		<!-- product-details-end -->
		<!-- pro-info-area start -->
		<div class="pro-info-area">
			<div class="container">
				<div class="pro-info-box">
					<!-- Nav tabs -->
					<ul class="pro-info-tab" role="tablist">
						<li class="active"><a href="#home3" data-toggle="tab">More info</a></li>
						<li><a href="#profile3" data-toggle="tab">Data sheet</a></li>
						<li><a href="#messages3" data-toggle="tab">Reviews</a></li>
					</ul>
					<!-- Tab panes -->
					<div class="tab-content">
						<div class="tab-pane active" id="home3">
							<div class="pro-desc">
								<p>暂无信息，敬请期待!</p>
							</div>
						</div>
						<div class="tab-pane" id="profile3">
							<div class="pro-desc">
								<table class="table-data-sheet">
									<tbody>
										<tr class="odd">
											<td>Compositions</td>
											<td>无</td>
										</tr>
										<tr class="even">
											<td>Styles</td>
											<td>无</td>
										</tr>
										<tr class="odd">
											<td>Properties</td>
											<td>无</td>
										</tr>
									</tbody>
								</table>						
							</div>
						</div>
						<div class="tab-pane" id="messages3">
							<div class="pro-desc">
								<a href="#">Be the first to write your review!</a>
							</div>
						</div>
					</div>		
				</div>
			</div>
		</div>
		<!-- pro-info-area end -->
		<!-- .slider-product-area-3-start -->
		
		<!-- .slider-product-area-3-end -->	
		<!-- .slider-product-area-3-start -->
		<div class="slider-product-area-4 pt-30 pb-60 res-pro">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<div class="section-title mb-40 text-center section-title-pro">
							<h3>10 other products in the same category: </h3>
						</div>						
					</div>
				</div>
				<div class="row">
					<div class="col-lg-12">
						<div class="slider-product dotted-style-1 pt-20">
							<div class="slider-product-active-3">
							<c:forEach items="${productdetaillist }" begin="0" end="9" varStatus="status">
								<div class="single-product single-product-sidebar white-bg">
									<div class="product-img product-img-left">
										<a href="#"><img src="upload/product${productdetaillist[status.index].id }.jpg" alt="" /></a>
									</div>
									<div class="product-content product-content-right">
										<div class="pro-title">
											<h4><a href="product-details?id=${productdetaillist[status.index].id }">${productdetaillist[status.index].name }</a></h4>
										</div>
										<div class="pro-rating ">
											<a href="#"><i class="fa fa-star"></i></a>
											<a href="#"><i class="fa fa-star"></i></a>
											<a href="#"><i class="fa fa-star"></i></a>
											<a href="#"><i class="fa fa-star"></i></a>
											<a href="#"><i class="fa fa-star-o"></i></a>
										</div>
										<div class="price-box">
											<span class="price product-price">$${productdetaillist[status.index].memberPrice }</span>
										</div>
										<div class="product-icon">
											<div class="product-icon-left f-left">
												<a href="cartdeal?productid=${productdetail.id }"><i class="fa fa-shopping-cart"></i>Add to Cart</a>
											</div>
										</div>
									</div>					
								</div>	
								</c:forEach>					
							</div>
						</div>					
					</div>
				</div>
			</div>
		</div>
		<!-- .slider-product-area-3-end -->		
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
								<input placeholder="Email address..." type="text"/>
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
                                <p>Copyright <a href="#">HasTech</a>. All Rights Reserved</p>
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
