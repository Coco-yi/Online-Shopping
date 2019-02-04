<%@ page isELIgnored="false" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>

<%@ include file="UserSessionCheck.jsp"%>
<!doctype html>
<html class="no-js" lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>My Account</title>
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
		<header>
			<!-- header-top-area-start -->
			<div class="header-top-area black-bg ptb-7 hidden-xs">
				<div class="container">
					<div class="row">
						<div class="col-lg-3 col-md-3 col-sm-4">
							<div class="header-top-left">
								<span><a href="#">Call us toll free:</a>(+1)866-550-3669</span>
							</div>
						</div>
						<div class="col-lg-9 col-md-9 col-sm-8">
							<div class="header-top-right">
								<ul>
									<li class="slide-toggle"><a href="#"><i class="fa fa-user"></i> My Account</a>
										<ul class="show-toggle">
											<li><a href="#">register</a></li>
											<li><a href="#">login</a></li>	
										</ul>
									</li>
								</ul>
								<ul>
									<li><a href="#"><i class="fa fa-check"></i> Checkout</a></li>
								</ul>
								<ul>
									<li class="slide-toggle-2 text-uppercase"><a href="#"><i class="fa fa-usd"></i>USD</a>
										<ul class="show-toggle-2">
											<li><a href="#"><i class="fa fa-eur"></i> EUR</a></li>
											<li><a href="#"><i class="fa fa-gbp"></i> GBP</a></li>
											<li><a href="#"><i class="fa fa-usd"></i> USD</a></li>
										</ul>	
									</li>
								</ul>
								<ul>
									<li class="slide-toggle-3 text-uppercase"><a href="#">fr-ca</a>
										<ul class="show-toggle-3">
											<li><a href="#">en-gb</a></li>
											<li><a href="#">fr-ca</a></li>
										</ul>	
									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- header-top-area-end -->
			<!-- header-bottom-area-start -->
			<div class="header-bottom-area bg-color-1 ptb-25">
				<div class="container">
					<div class="row">
						<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
							<div class="logo">
								<a href="index.html"><img src="img/logo.png" alt="" /></a>
							</div>
						</div>
						<div class="col-lg-9 col-md-9 col-sm-12 col-xs-12">
							<div class="header-bottom-middle">
								<div class="top-search">
									<span class="tex_top_skype"><i class="fa fa-skype"></i>Skype: <span class="">Support.skype</span></span>
									<span class="tex_top_email"><i class="fa fa-envelope"></i>Email: <span class="">demo@towerthemes.com</span></span>
								</div>
								<div class="search-box">
									<form action="#">
										<select name="#" id="select">
											<option value="">All categories</option>
											<option value="40">Accessories</option>
											<option value="41">Clothing</option>
											<option value="42">-Hoodies</option>
											<option value="47">-T-shirts</option>
											<option value="43">Men's</option>
											<option value="50"> -Hats</option>
											<option value="44">Music</option>
											<option value="46">-Singles</option>
											<option value="49">-Albums</option>
											<option value="45">Posters</option>
											<option value="48">Women's</option>
											<option value="51">-Hats</option>
											<option value="52">----Shoes</option>
											<option value="53">----Scarves</option>
											<option value="54">Jewellery</option>
											<option value="55">---Rings</option>
											<option value="56">----Gold Ring</option>
											<option value="57">----platinum ring</option>
											<option value="58">----Silver Ring</option>
											<option value="59">----Diamond rings</option>
											<option value="60">---Necklaces</option>
											<option value="61">----Diamond necklaces</option>
											<option value="62">----Pearl necklaces</option>
											<option value="63">----Silver necklaces</option>
											<option value="64">----Statement necklaces</option>
											<option value="65">Equipments</option>
											<option value="73">---Accessories</option>
											<option value="78">----headphone</option>
											<option value="79">----health</option>
											<option value="80">----camera</option>
											<option value="74">---beauty</option>
											<option value="75">----run</option>
											<option value="76">----evening</option>
											<option value="77">----coats</option>
											<option value="66">Watches</option>
											<option value="67">Books</option>
											<option value="68">Sports</option>
											<option value="69">Gifts</option>											
										</select>
										<input type="text" placeholder="Search...">
										<button><i class="fa fa-search"></i></button>
									</form>
								</div>								
							</div>
							<div class="header-bottom-right">
								<div class="left-cart">
									<div class="header-compire">
										<a href="#"><i class="fa fa-heart"></i> Wish List 0 </a>
										<a href="#"><i class="fa fa-refresh"></i> Compare  0 </a>
									</div>
								</div>
								<div class="shop-cart-area">
									<div class="top-cart-wrapper">
										<div class="block-cart">
											<div class="top-cart-title">
												<a href="#">
													<span class="title-cart">my cart</span>
													<span class="count-item">2 items</span>
													<span class="price">$444.00</span>
												</a>
											</div>
                                            <div class="top-cart-content">
                                                <ol class="mini-products-list">
                                                    <!-- single item -->
                                                    <li>
                                                        <a class="product-image" href="product-details.html">
                                                            <img alt="" src="img/cart/1.jpg">
                                                        </a>
                                                        <div class="product-details">
                                                            <p class="cartproduct-name">
                                                                <a href="product-details.html">Pellentesque habitant </a>
                                                            </p>
                                                            <strong class="qty">qty:1</strong>
                                                            <span class="sig-price">$222.00</span>
                                                        </div>
                                                        <div class="pro-action">
                                                            <a class="btn-remove" href="#">remove</a>
                                                        </div>
                                                    </li>
                                                    <!-- single item -->
                                                    <!-- single item -->
                                                    <li>
                                                        <a class="product-image" href="product-details.html">
                                                            <img alt="" src="img/cart/2.jpg">
                                                        </a>
                                                        <div class="product-details">
                                                            <p class="cartproduct-name">
                                                                <a href="product-details.html">New catolog</a>
                                                            </p>
                                                            <strong class="qty">qty:1</strong>
                                                            <span class="sig-price">$222.00</span>
                                                        </div>
                                                        <div class="pro-action">
                                                            <a class="btn-remove" href="#">remove</a>
                                                        </div>
                                                    </li>
                                                    <!-- single item -->

                                                </ol>
                                                <div class="top-subtotal">
                                                    Subtotal: <span class="sig-price">$444.00</span>
                                                </div>
                                                <div class="cart-actions">
                                                    <button><span>Checkout</span></button>
                                                </div>
                                            </div>											
										</div>
									</div>
								</div>
							</div>							
						</div>
					</div>
				</div>
			</div>	
			<!-- header-bottom-area-end -->
		</header>																											<!-- header -->
		<!-- mainmenu-area-start -->
		<div class="mainmenu-area bg-color-2 hidden-xs hidden-sm">
			<div class="container">
				<div class="row">
					<div class="col-lg-3 col-md-3">
						<div class="mainmenu-left visible-lg checkout-page  visible-md">
							<div class="product-menu-title">
								<h2>All categories <i class="fa fa-arrow-circle-down"></i></h2>
							</div>
							<div class="product_vmegamenu">
								<ul>
									<li>
										<a href="#"><img src="img/menu-l/1.png" alt="" /> Automotive & Motorcycle</a></li>
									<li>
										<a href="#"><img src="img/menu-l/2.png" alt="" />Bags, Shoes & Accessories</a></li>
									<li>
										<a href="#"><img src="img/menu-l/3.png" alt="" /> Cameras & Photo</a>
									</li>
									<li>
										<a href="#"><img src="img/menu-l/4.png" alt="" /> Computers & Networking</a>
									</li>
									<li>
										<a href="#"><img src="img/menu-l/5.png" alt="" />Flashlights & Lamps</a>
									</li>
									<li>
										<a href="#"  class="hover-icon"><img src="img/menu-l/6.png" alt="" />Laptops & Accessories</a>
										<div class="vmegamenu">
											<span>
												<a href="#" class="vgema-title">Linux</a>
												<a href="#">Edubuntu</a>
												<a href="#">Kubuntu</a>
												<a href="#">Lubuntu</a>
												</span>
												<span>
													<a href="#" class="vgema-title">Mac </a>
													<a href="#">Mac OS X 10.0</a>
													<a href="#">Mac OS X 10.7</a>
													<a href="#">OS X 10.11</a>
												</span>
											<span>
												<a href="#" class="vgema-title">Ubuntu</a>
												<a href="#">Ubuntu Server</a>
												<a href="#">Ubuntu Studio</a>
												<a href="#">Ubuntu TV</a>
											</span>
											<span>
												<a href="#" class="vgema-title">Windows</a>
												<a href="#">Windows 10</a>
												<a href="#">Windows 7</a>
												<a href="#">Windows 8.1</a>
											</span>
										</div>										
									</li>
									<li>
										<a href="#" class="hover-icon"><img src="img/menu-l/12.png" alt="" />Sports & Outdoors</a>
										<div class="vmegamenu">
											<span>
												<a href="#" class="vgema-title">Electronic</a>
												<a href="#">Bedroom</a>
												<a href="#">Kitchen</a>
												<a href="#">Living room</a>
												<a href="#">Out door</a>
											</span>
											<span>
												<a href="#" class="vgema-title">Lights</a>
												<a href="#">All lights</a>
												<a href="#">Bed room</a>
												<a href="#">Living room</a>
												<a href="#">Out door</a>
											</span>
											<span>
												<a href="#" class="vgema-title">Television</a>
												<a href="#">Samsung</a>
												<a href="#">Samsung Oled</a>
												<a href="#">Sony</a>
												<a href="#">Sony Bravia</a>
											</span>
											<span>
												<a href="#" class="vgema-title">Washing</a>
												<a href="#">Commercial</a>
												<a href="#">Front-Load </a>
												<a href="#">Pedestal </a>
												<a href="#">Top-Load </a>
											</span>
										</div>										
									</li>
									<li>
										<a href="#" class="hover-icon"><img src="img/menu-l/7.png" alt="" />Smartphone & Tablets</a>
										<div class="vmegamenu vmegamenu2">
											<span>
												<a href="#" class="vgema-title">HandBags</a>
												<a href="#">Kids</a>
												<a href="#">Mens</a>
												<a href="#">Student</a>
												<a href="#">Women</a>
											</span>
											<span>
												<a href="#" class="vgema-title">Clothing</a>
												<a href="#">Children</a>
												<a href="#">Kids</a>
												<a href="#">Mens</a>
												<a href="#">Womens</a>
											</span>
										</div>	
									</li>
									<li>
										<a href="#"><img src="img/menu-l/8.png" alt="" />Health & Beauty</a>
									</li>
									<li>
										<a href="#"><img src="img/menu-l/9.png" alt="" />Toys & Hobbies</a>
									</li>
									<li>
										<a href="#"><img src="img/menu-l/10.png" alt="" />Holiday Supplies & Gifts</a>
									</li>
									<li>
										<a href="#"><img src="img/menu-l/11.png" alt="" />Jewelry & Watches</a>
									</li>
									<li>
										<a href="#"><img src="img/menu-l/5.png" alt="" />Smartphone & Watches</a>
									</li>
									<li>
										<a href="#"><img src="img/menu-l/4.png" alt="" />Health Watches</a>
									</li>
								</ul>
							</div>
						</div>	
					</div>
					<div class="col-lg-9 col-md-9">
						<div class="mainmenu">
							<nav>
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
				  <li class="active">My Account</li>
				</ol>			
			</div>
		</div>
		<!-- breadcrumb end -->	
		<!-- login-area start -->
		<div class="login-area pt-30">
			 <div class="container">
				<div class="row">
				   <div class="centered-title text-center mb-40">
					  <h2>Your <span class="light-font">Accoxcunts</span></h2>
					  <div class="clear"></div>
					  <em>doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo <br>inventore veritatis et quasi architecto beatae</em>
				   </div>
				   <div class="clear"></div>
				   <div class="col-md-8 col-sm-8 col-md-offset-2 col-sm-offset-2">
					  <div class="billing-fields row">
					  	<form action="UserServlet">
					  	<input type="hidden" name="req" value="update"/>
						 <p class="form-row col-sm-6">
							<label for="billing_first_name">UserName<abbr title="required" class="required">*</abbr></label>
							<input type="text" name="accusername" value="${User.username }" id="billing_first_name" class="form-controller">
						 </p>
						 <!--
						 <p class="form-row col-sm-6">
							<label for="billing_last_name">Last Name<abbr title="required" class="required">*</abbr></label>
							<input type="text" name="billing_last_name" id="billing_last_name" class="form-controller">
						 </p>
						 <p class="form-row col-sm-12">
							<label for="billing_company">Company Name</label>
							<input type="text" name="billing_company" id="billing_company" class="form-controller">
						 </p>
						 -->
						 <p class="form-row col-sm-6">
							<label for="billing_email">Register Date<abbr title="required" class="required">*</abbr></label>
							<input type="text" name="rdate" value="${User.rdate }" id="billing_email" class="form-controller">
						 </p>
						  
						 <p class="form-row col-sm-6">
							<label for="billing_email">Phone Number<abbr title="required" class="required">*</abbr></label>
							<input type="text" name="phone" value="${User.phone }" id="billing_phone" class="form-controller">
						 </p>
						 <!--
						 <p class="form-row col-sm-12">
							<label for="billing_country">Country<abbr title="required" class="required">*</abbr></label>
							<select class="billing_country" id="billing_country" name="billing_country">
							   <option value="">Select a country</option>
							   <option value="AX">Aland Islands</option>
							   <option value="AF">Afghanistan</option>
							   <option value="AL">Albania</option>
							   <option value="DZ">Algeria</option>
							   <option value="AS">American Samoa</option>
							   <option value="AD">Andorra</option>
							   <option value="AO">Angola</option>
							   <option value="AI">Anguilla</option>
							   <option value="AQ">Antarctica</option>
							   <option value="AG">Antigua and Barbuda</option>
							</select>
							 -->
						 </p>
						 <p class="form-row col-sm-12">
							<label for="billing_address_1">Address<abbr title="required" class="required">*</abbr></label>
							<input type="text" name="addr" value="${User.addr }" id="billing_address_1" placeholder="Street address" class="form-controller">
							<!-- <input type="text" name="billing_address_2" id="billing_address_2" placeholder="Apartment, suite, unit etc. (optional)" class="form-controller"> -->
						 </p>
						 <!--
						 <p class="form-row col-sm-12">
							<label for="billing_city">Town/City<abbr title="required" class="required">*</abbr></label>
							<input type="text" name="billing_city" id="billing_city" class="form-controller">
						 </p>
						 
						 <p class="form-row col-sm-6">
							<label for="billing_state">State<abbr title="required" class="required">*</abbr></label>
							<select class="billing_state" id="billing_state" name="billing_state">
							   <option value="">Select a State</option>
							   <option value="AP">Andhra Pradesh</option>
							   <option value="AR">Arunachal Pradesh</option>
							   <option value="DL">Delhi</option>
							   <option value="LD">Lakshadeep</option>
							   <option value="PY">Pondicherry (Puducherry)</option>
							</select>
						 </p>
						 <p class="form-row col-sm-6">
							<label for="billing_postcode">Postcode/zip<abbr title="required" class="required">*</abbr></label>
							<input type="text" name="billing_postcode" id="billing_postcode" placeholder="Postcode/zip" class="form-controller">
						 </p>
						 -->
						 <p class="col-sm-12">
							<label class="" for="account_password">Account password<abbr title="required" class="required">*</abbr></label>
							<input type="password" value="${User.password }" placeholder="Password" id="account_password" name="password" class="form-controller">
						 </p>
						 <!-- 
						 <p class="col-sm-12" >
							<label class="" for="confirm_password">Confirm password<abbr title="required" class="required">*</abbr></label>
							<input type="password" value="" placeholder="Password" id="confirm_password" name="confirm_password" class="form-controller">
						 </p>
						 <p class="col-sm-12">
							<input type="checkbox" value="forever" id="rememberme" name="rememberme">
							<label class="inline" for="rememberme">I agree <a href="#">Terms & Condition</a></label>
						 </p>
						  -->
						 <p class="col-sm-12">
							<input type="submit" value=Modify name="modify" class="theme-button marL0">
						 </p>
						 </form>
					  </div>
				   </div>
				   <!-- /.col-md-6 -->
				   <div class="col-md-6 marTB30">
				   </div>
				   <!-- /.col-md-6 -->
				</div>
				<!-- /.row -->
			 </div>			
		</div>
		<!-- login-area end -->	
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

