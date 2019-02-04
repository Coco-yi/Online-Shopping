<jsp:include page="Common.jsp">
	<jsp:param name="pagename" value="login.jsp"/>
</jsp:include>
<%@ page contentType="text/html; charset=utf-8"%>
<!doctype html>
<html class="no-js" lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Login</title>
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
									<li><a href="cart.html">Cart</a></li>
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
		<!-- breadcrumb start -->
		<div class="breadcrumb-area">
			<div class="container">
				<ol class="breadcrumb">
				  <li><a href="index.html"><i class="fa fa-home"></i> Home</a></li>
				  <li class="active">Login</li>
				</ol>			
			</div>
		</div>
		<!-- breadcrumb end -->	
		<!-- account area start -->
		<div class="account-area pt-30 log">
			<div class="container">
				<div class="row">
					<div class="col-md-6 col-lg-6 col-sm-6">
						<div class="account-info pb-30">
							<form action="UserServlet" method="post">
								<div class="form-fields">
									<h2>Login</h2>
									<p>
										<label>
											Username or email address
											<span class="required">*</span>
										</label>
										<input type="text" name="username">
									</p>
									<p>
										<label>
											Password
											<span class="required">*</span>
										</label>
										<input type="password" name="password">
									</p>
								</div>
								<div class="form-action">
									<label>
									<a href="#" class="lost_password">Lost your password?</a>								
										<input type="checkbox">
										Remember me
									</label>								
									<input value="Login" type="submit">
								</div>								
							</form>
						</div>
					</div>
					<!-- 
					<div class="col-md-6 col-lg-6 col-sm-6">
						<div class="form-fields pb-30">
							<h2>Register</h2>
							<p>
								<label>Email address  <span class="required">*</span></label>
								<input type="text">
							</p>
							<p>
								<label>Password <span class="required">*</span></label>
								<input type="password">
							</p>
						</div>
						<div class="form-action floatright">
							<input value="Register" type="submit">
						</div>
					 -->
					</div>
				</div>
			</div>
		</div>
		<!-- account area end -->	
		<!-- brand-area-start -->
		<div class="brand-area ptb-60 dotted-style-2">
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

