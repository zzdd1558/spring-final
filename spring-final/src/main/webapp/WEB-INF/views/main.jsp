<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/stylesheets/flexslider.css" type="text/css" media="screen" />
<head>
<%@ include file="/WEB-INF/include/include-header.jspf"%>

<style>
.tit {
	font-size : 48px;
	line-height: 54px;
	font-family : 'ngb';
	color : #222;
	letter-spacing: -1px;
}
</style>
</head>


<body>
	<!-- header -->
<%@ include file="/WEB-INF/include/include-bodyHeader.jspf"%>
	<!-- //header -->
<!-- banner -->
	<div class="flexslider">
		<ul class="slides">
			<li><img src="images/test/201711001.png" /></li>
			<li><img src="images/test/201711002.jpg" /></li>
			<li><img src="images/test/201711003.jpg" /></li>
		</ul>
	</div>
	<!-- //banner -->
	<script defer src="${pageContext.request.contextPath}/javascripts/jquery.flexslider.js"></script>
	<script type="text/javascript">
		$(window).load(function() {
			$('.flexslider').flexslider({
				animation : "slide"
			});
		});
	</script>

	<!-- best seller -->
	<div class="bestSeller">
		<div class="container">
			<h3>BEST SELLER</h3>
			<div class="agileinfo_new_products_grids">
			<div class="sliderfig">
				<div id="flexiselDemo1">
				<div class="col-md-3 agileinfo_new_products_grid">
					<div class="agile_ecommerce_tab_left agileinfo_new_products_grid1">
						<div class="sk-wrapper hs-wrapper1">
							<img src="images/test/27.jpg" alt=" " class="img-responsive" />
							<div class="w3_hs_bottom w3_hs_bottom_sub">
										<a href="#" data-toggle="modal" data-target="#myModal6" 
										style="bottom: 15px; right: 0; position: absolute; width: 100%;">
										<span class="glyphicon glyphicon-eye-open" aria-hidden="true" style="font-size: 160%;"></span></a>
							</div>
						</div>
						<h5><a href="single.html">Skirts</a></h5>
						<div class="simpleCart_shelfItem">
							<p><span>$320</span> <i class="item_price">$250</i></p>
							<p><a class="item_add" href="#">Add to cart</a></p>
						</div>
					</div>
				</div>
				<div class="col-md-3 agileinfo_new_products_grid">
					<div class="agile_ecommerce_tab_left agileinfo_new_products_grid1">
						<div class="hs-wrapper hs-wrapper1">
							<img src="images/test/27.jpg" alt=" " class="img-responsive" />
							<img src="images/test/28.jpg" alt=" " class="img-responsive" />
							<img src="images/test/29.jpg" alt=" " class="img-responsive" />
							<img src="images/test/30.jpg" alt=" " class="img-responsive" />
							<img src="images/test/27.jpg" alt=" " class="img-responsive" />
							<img src="images/test/28.jpg" alt=" " class="img-responsive" />
							<img src="images/test/29.jpg" alt=" " class="img-responsive" />
							<img src="images/test/30.jpg" alt=" " class="img-responsive" />
							<div class="w3_hs_bottom w3_hs_bottom_sub">
								<ul>
									<li>
										<a href="#" data-toggle="modal" data-target="#myModal6"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
									</li>
								</ul>
							</div>
						</div>
						<h5><a href="single.html">Skirts</a></h5>
						<div class="simpleCart_shelfItem">
							<p><span>$320</span> <i class="item_price">$250</i></p>
							<p><a class="item_add" href="#">Add to cart</a></p>
						</div>
					</div>
				</div>
				<div class="col-md-3 agileinfo_new_products_grid">
					<div class="agile_ecommerce_tab_left agileinfo_new_products_grid1">
						<div class="hs-wrapper hs-wrapper1">
							<img src="images/test/31.jpg" alt=" " class="img-responsive" />
							<img src="images/test/32.jpg" alt=" " class="img-responsive" />
							<img src="images/test/33.jpg" alt=" " class="img-responsive" />
							<img src="images/test/34.jpg" alt=" " class="img-responsive" />
							<img src="images/test/31.jpg" alt=" " class="img-responsive" />
							<img src="images/test/32.jpg" alt=" " class="img-responsive" />
							<img src="images/test/33.jpg" alt=" " class="img-responsive" />
							<img src="images/test/34.jpg" alt=" " class="img-responsive" />
							<div class="w3_hs_bottom w3_hs_bottom_sub">
								<ul>
									<li>
										<a href="#" data-toggle="modal" data-target="#myModal5"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
									</li>
								</ul>
							</div>
						</div>
						<h5><a href="single.html">Jackets</a></h5>
						<div class="simpleCart_shelfItem">
							<p><span>$320</span> <i class="item_price">$250</i></p>
							<p><a class="item_add" href="#">Add to cart</a></p>
						</div>
					</div>
				</div>
				<div class="col-md-3 agileinfo_new_products_grid">
					<div class="agile_ecommerce_tab_left agileinfo_new_products_grid1">
						<div class="hs-wrapper hs-wrapper1">
							<img src="images/test/37.jpg" alt=" " class="img-responsive" />
							<img src="images/test/30.jpg" alt=" " class="img-responsive" />
							<img src="images/test/36.jpg" alt=" " class="img-responsive" />
							<img src="images/test/38.jpg" alt=" " class="img-responsive" />
							<img src="images/test/37.jpg" alt=" " class="img-responsive" />
							<img src="images/test/30.jpg" alt=" " class="img-responsive" />
							<img src="images/test/36.jpg" alt=" " class="img-responsive" />
							<img src="images/test/38.jpg" alt=" " class="img-responsive" />
							<div class="w3_hs_bottom w3_hs_bottom_sub">
								<ul>
									<li>
										<a href="#" data-toggle="modal" data-target="#myModal6"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
									</li>
								</ul>
							</div>
						</div>
						<h5><a href="single.html">Dresses</a></h5>
						<div class="simpleCart_shelfItem">
							<p><span>$320</span> <i class="item_price">$250</i></p>
							<p><a class="item_add" href="#">Add to cart</a></p>
						</div>
					</div>
				</div>
				<div class="col-md-3 agileinfo_new_products_grid">
					<div class="agile_ecommerce_tab_left agileinfo_new_products_grid1">
						<div class="hs-wrapper hs-wrapper1">
							<img src="images/test/40.jpg" alt=" " class="img-responsive" />
							<img src="images/test/41.jpg" alt=" " class="img-responsive" />
							<img src="images/test/42.jpg" alt=" " class="img-responsive" />
							<img src="images/test/43.jpg" alt=" " class="img-responsive" />
							<img src="images/test/40.jpg" alt=" " class="img-responsive" />
							<img src="images/test/41.jpg" alt=" " class="img-responsive" />
							<img src="images/test/42.jpg" alt=" " class="img-responsive" />
							<img src="images/test/43.jpg" alt=" " class="img-responsive" />
							<div class="w3_hs_bottom w3_hs_bottom_sub">
								<ul>
									<li>
										<a href="#" data-toggle="modal" data-target="#myModal1"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
									</li>
								</ul>
							</div>
						</div>
						<h5><a href="single.html">Jeans</a></h5>
						<div class="simpleCart_shelfItem">
							<p><span>$320</span> <i class="item_price">$250</i></p>
							<p><a class="item_add" href="#">Add to cart</a></p>
						</div>
					</div>
				</div>
				
				</div>
				<div class="clearfix"> </div>
			</div>
			
		</div>
		</div>
	</div>
<!-- //new-products -->

<!-- banner-bottom -->
	<div class="banner-bottom">
		<div class="container">

			<div class="col-md-5 wthree_banner_bottom_left">
				<div class="video-img">
					<a class="play-icon popup-with-zoom-anim" href="#small-dialog">
						<span class="glyphicon glyphicon-expand" aria-hidden="true"></span>
					</a>
				</div>
					<!-- pop-up-box -->
						<link href="${pageContext.request.contextPath}/stylesheets/popuo-box.css" rel="stylesheet" type="text/css" property="" media="all" />
						<script src="${pageContext.request.contextPath}/javascripts/jquery.magnific-popup.js" type="text/javascript"></script>
					<!--//pop-up-box -->

					<div id="small-dialog" class="mfp-hide">
						<iframe src="https://player.vimeo.com/video/23259282?title=0&byline=0&portrait=0"></iframe>
					</div>
					<script>
						$(document).ready(function() {
							$('.popup-with-zoom-anim').magnificPopup({
								type: 'inline',
								fixedContentPos: false,
								fixedBgPos: true,
								overflowY: 'auto',
								closeBtnInside: true,
								preloader: false,
								midClick: true,
								removalDelay: 300,
								mainClass: 'my-mfp-zoom-in'
							});
						});
					</script>
			</div>
			<div class="col-md-7 wthree_banner_bottom_right">
				<div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
					<ul id="myTab" class="nav nav-tabs" role="tablist">
						<li role="presentation" class="active"><a href="#home" id="" role="tab" data-toggle="tab" aria-controls="home"><img src="images/test/Mamonde.jpg"></a></li>
						<li role="presentation"><a href="#skirts" role="tab" id="skirts-tab" data-toggle="tab" aria-controls="skirts"><img src="images/test/inisfree.jpg"></a></li>
						<li role="presentation"><a href="#watches" role="tab" id="watches-tab" data-toggle="tab" aria-controls="watches"><img src="images/test/etude.jpg"></a></li>
						<li role="presentation"><a href="#sandals" role="tab" id="sandals-tab" data-toggle="tab" aria-controls="sandals"><img src="images/test/hera.png"></a></li>
						<li role="presentation"><a href="#jewellery" role="tab" id="jewellery-tab" data-toggle="tab" aria-controls="jewellery"><img src="images/test/aritaum.png"></a></li>
					</ul>
					<div id="myTabContent" class="tab-content">
						<div role="tabpanel" class="tab-pane fade active in" id="home" aria-labelledby="home-tab">
							<div class="agile_ecommerce_tabs">
								<div class="col-md-4 agile_ecommerce_tab_left">
									<div class="sk-wrapper">
										<img src="images/test/6.jpg" alt=" " class="img-responsive" />
										<img src="images/test/4.jpg" alt=" " class="img-responsive" />
										<img src="images/test/5.jpg" alt=" " class="img-responsive" />
										<img src="images/test/3.jpg" alt=" " class="img-responsive" />
										<img src="images/test/7.jpg" alt=" " class="img-responsive" />
										<img src="images/test/3.jpg" alt=" " class="img-responsive" />
										<img src="images/test/5.jpg" alt=" " class="img-responsive" />
										<img src="images/test/6.jpg" alt=" " class="img-responsive" />
										<div class="w3_hs_bottom">
											<ul>
												<li>
													<a href="#" data-toggle="modal" data-target="#myModal"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
												</li>
											</ul>
										</div>
									</div>
									<h5><a href="single.html">T-Shirt</a></h5>
									<div class="simpleCart_shelfItem">
										<p><span>$320</span> <i class="item_price">$250</i></p>
										<p><a class="item_add" href="#">Add to cart</a></p>
									</div>
								</div>
								<div class="col-md-4 agile_ecommerce_tab_left">
									<div class="hs-wrapper">
										<img src="images/test/4.jpg" alt=" " class="img-responsive" />
										<img src="images/test/6.jpg" alt=" " class="img-responsive" />
										<img src="images/test/5.jpg" alt=" " class="img-responsive" />
										<img src="images/test/3.jpg" alt=" " class="img-responsive" />
										<img src="images/test/7.jpg" alt=" " class="img-responsive" />
										<img src="images/test/3.jpg" alt=" " class="img-responsive" />
										<img src="images/test/5.jpg" alt=" " class="img-responsive" />
										<img src="images/test/6.jpg" alt=" " class="img-responsive" />
										<div class="w3_hs_bottom">
											<ul>
												<li>
													<a href="#" data-toggle="modal" data-target="#myModal"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
												</li>
											</ul>
										</div>
									</div>
									<h5><a href="single.html">T-Shirt</a></h5>
									<div class="simpleCart_shelfItem">
										<p><span>$320</span> <i class="item_price">$250</i></p>
										<p><a class="item_add" href="#">Add to cart</a></p>
									</div>
								</div>
								<div class="col-md-4 agile_ecommerce_tab_left">
									<div class="hs-wrapper">
										<img src="images/test/5.jpg" alt=" " class="img-responsive" />
										<img src="images/test/6.jpg" alt=" " class="img-responsive" />
										<img src="images/test/4.jpg" alt=" " class="img-responsive" />
										<img src="images/test/3.jpg" alt=" " class="img-responsive" />
										<img src="images/test/7.jpg" alt=" " class="img-responsive" />
										<img src="images/test/3.jpg" alt=" " class="img-responsive" />
										<img src="images/test/5.jpg" alt=" " class="img-responsive" />
										<img src="images/test/6.jpg" alt=" " class="img-responsive" />
										<div class="w3_hs_bottom">
											<ul>
												<li>
													<a href="#" data-toggle="modal" data-target="#myModal"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
												</li>
											</ul>
										</div>
									</div>
									<h5><a href="single.html">T-Shirt</a></h5>
									<div class="simpleCart_shelfItem">
										<p><span>$320</span> <i class="item_price">$250</i></p>
										<p><a class="item_add" href="#">Add to cart</a></p>
									</div>
								</div>
								<div class="clearfix"> </div>
							</div>
						</div>
						<div role="tabpanel" class="tab-pane fade" id="skirts" aria-labelledby="skirts-tab">
							<div class="agile_ecommerce_tabs">
								<div class="col-md-4 agile_ecommerce_tab_left">
									<div class="hs-wrapper">
										<img src="images/test/8.jpg" alt=" " class="img-responsive" />
										<img src="images/test/9.jpg" alt=" " class="img-responsive" />
										<img src="images/test/10.jpg" alt=" " class="img-responsive" />
										<img src="images/test/8.jpg" alt=" " class="img-responsive" />
										<img src="images/test/9.jpg" alt=" " class="img-responsive" />
										<img src="images/test/10.jpg" alt=" " class="img-responsive" />
										<img src="images/test/8.jpg" alt=" " class="img-responsive" />
										<img src="images/test/9.jpg" alt=" " class="img-responsive" />
										<div class="w3_hs_bottom">
											<ul>
												<li>
													<a href="#" data-toggle="modal" data-target="#myModal6"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
												</li>
											</ul>
										</div>
									</div>
									<h5><a href="single.html">Skirt</a></h5>
									<div class="simpleCart_shelfItem">
										<p><span>$320</span> <i class="item_price">$250</i></p>
										<p><a class="item_add" href="#">Add to cart</a></p>
									</div>
								</div>
								<div class="col-md-4 agile_ecommerce_tab_left">
									<div class="hs-wrapper">
										<img src="images/test/9.jpg" alt=" " class="img-responsive" />
										<img src="images/test/8.jpg" alt=" " class="img-responsive" />
										<img src="images/test/10.jpg" alt=" " class="img-responsive" />
										<img src="images/test/8.jpg" alt=" " class="img-responsive" />
										<img src="images/test/9.jpg" alt=" " class="img-responsive" />
										<img src="images/test/10.jpg" alt=" " class="img-responsive" />
										<img src="images/test/8.jpg" alt=" " class="img-responsive" />
										<img src="images/test/9.jpg" alt=" " class="img-responsive" />
										<div class="w3_hs_bottom">
											<ul>
												<li>
													<a href="#" data-toggle="modal" data-target="#myModal6"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
												</li>
											</ul>
										</div>
									</div>
									<h5><a href="single.html">Skirt</a></h5>
									<div class="simpleCart_shelfItem">
										<p><span>$320</span> <i class="item_price">$250</i></p>
										<p><a class="item_add" href="#">Add to cart</a></p>
									</div>
								</div>
								<div class="col-md-4 agile_ecommerce_tab_left">
									<div class="hs-wrapper">
										<img src="images/test/10.jpg" alt=" " class="img-responsive" />
										<img src="images/test/8.jpg" alt=" " class="img-responsive" />
										<img src="images/test/9.jpg" alt=" " class="img-responsive" />
										<img src="images/test/8.jpg" alt=" " class="img-responsive" />
										<img src="images/test/9.jpg" alt=" " class="img-responsive" />
										<img src="images/test/10.jpg" alt=" " class="img-responsive" />
										<img src="images/test/8.jpg" alt=" " class="img-responsive" />
										<img src="images/test/9.jpg" alt=" " class="img-responsive" />
										<div class="w3_hs_bottom">
											<ul>
												<li>
													<a href="#" data-toggle="modal" data-target="#myModal6"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
												</li>
											</ul>
										</div>
									</div>
									<h5><a href="single.html">Skirt</a></h5>
									<div class="simpleCart_shelfItem">
										<p><span>$320</span> <i class="item_price">$250</i></p>
										<p><a class="item_add" href="#">Add to cart</a></p>
									</div>
								</div>
								<div class="clearfix"> </div>
							</div>
						</div>
						<div role="tabpanel" class="tab-pane fade" id="watches" aria-labelledby="watches-tab">
							<div class="agile_ecommerce_tabs">
								<div class="col-md-4 agile_ecommerce_tab_left">
									<div class="hs-wrapper">
										<img src="images/test/11.jpg" alt=" " class="img-responsive" />
										<img src="images/test/12.jpg" alt=" " class="img-responsive" />
										<img src="images/test/13.jpg" alt=" " class="img-responsive" />
										<img src="images/test/11.jpg" alt=" " class="img-responsive" />
										<img src="images/test/12.jpg" alt=" " class="img-responsive" />
										<img src="images/test/13.jpg" alt=" " class="img-responsive" />
										<img src="images/test/11.jpg" alt=" " class="img-responsive" />
										<img src="images/test/12.jpg" alt=" " class="img-responsive" />
										<div class="w3_hs_bottom">
											<ul>
												<li>
													<a href="#" data-toggle="modal" data-target="#myModal2"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
												</li>
											</ul>
										</div>
									</div>
									<h5><a href="single.html">Watch</a></h5>
									<div class="simpleCart_shelfItem">
										<p><span>$320</span> <i class="item_price">$250</i></p>
										<p><a class="item_add" href="#">Add to cart</a></p>
									</div>
								</div>
								<div class="col-md-4 agile_ecommerce_tab_left">
									<div class="hs-wrapper">
										<img src="images/test/12.jpg" alt=" " class="img-responsive" />
										<img src="images/test/11.jpg" alt=" " class="img-responsive" />
										<img src="images/test/13.jpg" alt=" " class="img-responsive" />
										<img src="images/test/11.jpg" alt=" " class="img-responsive" />
										<img src="images/test/12.jpg" alt=" " class="img-responsive" />
										<img src="images/test/13.jpg" alt=" " class="img-responsive" />
										<img src="images/test/11.jpg" alt=" " class="img-responsive" />
										<img src="images/test/12.jpg" alt=" " class="img-responsive" />
										<div class="w3_hs_bottom">
											<ul>
												<li>
													<a href="#" data-toggle="modal" data-target="#myModal2"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
												</li>
											</ul>
										</div>
									</div>
									<h5><a href="single.html">Watch</a></h5>
									<div class="simpleCart_shelfItem">
										<p><span>$320</span> <i class="item_price">$250</i></p>
										<p><a class="item_add" href="#">Add to cart</a></p>
									</div>
								</div>
								<div class="col-md-4 agile_ecommerce_tab_left">
									<div class="hs-wrapper">
										<img src="images/test/13.jpg" alt=" " class="img-responsive" />
										<img src="images/test/11.jpg" alt=" " class="img-responsive" />
										<img src="images/test/12.jpg" alt=" " class="img-responsive" />
										<img src="images/test/11.jpg" alt=" " class="img-responsive" />
										<img src="images/test/12.jpg" alt=" " class="img-responsive" />
										<img src="images/test/13.jpg" alt=" " class="img-responsive" />
										<img src="images/test/11.jpg" alt=" " class="img-responsive" />
										<img src="images/test/12.jpg" alt=" " class="img-responsive" />
										<div class="w3_hs_bottom">
											<ul>
												<li>
													<a href="#" data-toggle="modal" data-target="#myModal2"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
												</li>
											</ul>
										</div>
									</div>
									<h5><a href="single.html">Watch</a></h5>
									<div class="simpleCart_shelfItem">
										<p><span>$320</span> <i class="item_price">$250</i></p>
										<p><a class="item_add" href="#">Add to cart</a></p>
									</div>
								</div>
								<div class="clearfix"> </div>
							</div>
						</div>
						<div role="tabpanel" class="tab-pane fade" id="sandals" aria-labelledby="sandals-tab">
							<div class="agile_ecommerce_tabs">
								<div class="col-md-4 agile_ecommerce_tab_left">
									<div class="hs-wrapper">
										<img src="images/test/14.jpg" alt=" " class="img-responsive" />
										<img src="images/test/15.jpg" alt=" " class="img-responsive" />
										<img src="images/test/16.jpg" alt=" " class="img-responsive" />
										<img src="images/test/14.jpg" alt=" " class="img-responsive" />
										<img src="images/test/15.jpg" alt=" " class="img-responsive" />
										<img src="images/test/16.jpg" alt=" " class="img-responsive" />
										<img src="images/test/14.jpg" alt=" " class="img-responsive" />
										<img src="images/test/15.jpg" alt=" " class="img-responsive" />
										<div class="w3_hs_bottom">
											<ul>
												<li>
													<a href="#" data-toggle="modal" data-target="#myModal3"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
												</li>
											</ul>
										</div>
									</div>
									<h5><a href="single.html">Sandal</a></h5>
									<div class="simpleCart_shelfItem">
										<p><span>$320</span> <i class="item_price">$250</i></p>
										<p><a class="item_add" href="#">Add to cart</a></p>
									</div>
								</div>
								<div class="col-md-4 agile_ecommerce_tab_left">
									<div class="hs-wrapper">
										<img src="images/test/15.jpg" alt=" " class="img-responsive" />
										<img src="images/test/14.jpg" alt=" " class="img-responsive" />
										<img src="images/test/16.jpg" alt=" " class="img-responsive" />
										<img src="images/test/14.jpg" alt=" " class="img-responsive" />
										<img src="images/test/15.jpg" alt=" " class="img-responsive" />
										<img src="images/test/16.jpg" alt=" " class="img-responsive" />
										<img src="images/test/14.jpg" alt=" " class="img-responsive" />
										<img src="images/test/15.jpg" alt=" " class="img-responsive" />
										<div class="w3_hs_bottom">
											<ul>
												<li>
													<a href="#" data-toggle="modal" data-target="#myModal3"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
												</li>
											</ul>
										</div>
									</div>
									<h5><a href="single.html">Sandal</a></h5>
									<div class="simpleCart_shelfItem">
										<p><span>$320</span> <i class="item_price">$250</i></p>
										<p><a class="item_add" href="#">Add to cart</a></p>
									</div>
								</div>
								<div class="col-md-4 agile_ecommerce_tab_left">
									<div class="hs-wrapper">
										<img src="images/test/16.jpg" alt=" " class="img-responsive" />
										<img src="images/test/14.jpg" alt=" " class="img-responsive" />
										<img src="images/test/15.jpg" alt=" " class="img-responsive" />
										<img src="images/test/14.jpg" alt=" " class="img-responsive" />
										<img src="images/test/15.jpg" alt=" " class="img-responsive" />
										<img src="images/test/16.jpg" alt=" " class="img-responsive" />
										<img src="images/test/14.jpg" alt=" " class="img-responsive" />
										<img src="images/test/15.jpg" alt=" " class="img-responsive" />
										<div class="w3_hs_bottom">
											<ul>
												<li>
													<a href="#" data-toggle="modal" data-target="#myModal3"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
												</li>
											</ul>
										</div>
									</div>
									<h5><a href="single.html">Sandal</a></h5>
									<div class="simpleCart_shelfItem">
										<p><span>$320</span> <i class="item_price">$250</i></p>
										<p><a class="item_add" href="#">Add to cart</a></p>
									</div>
								</div>
								<div class="clearfix"> </div>
							</div>
						</div>
						<div role="tabpanel" class="tab-pane fade" id="jewellery" aria-labelledby="jewellery-tab">
							<div class="agile_ecommerce_tabs">
								<div class="col-md-4 agile_ecommerce_tab_left">
									<div class="hs-wrapper">
										<img src="images/test/17.jpg" alt=" " class="img-responsive" />
										<img src="images/test/18.jpg" alt=" " class="img-responsive" />
										<img src="images/test/19.jpg" alt=" " class="img-responsive" />
										<img src="images/test/17.jpg" alt=" " class="img-responsive" />
										<img src="images/test/18.jpg" alt=" " class="img-responsive" />
										<img src="images/test/19.jpg" alt=" " class="img-responsive" />
										<img src="images/test/17.jpg" alt=" " class="img-responsive" />
										<img src="images/test/18.jpg" alt=" " class="img-responsive" />
										<div class="w3_hs_bottom">
											<ul>
												<li>
													<a href="#" data-toggle="modal" data-target="#myModal4"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
												</li>
											</ul>
										</div>
									</div>
									<h5><a href="single.html">Jewellery</a></h5>
									<div class="simpleCart_shelfItem">
										<p><span>$320</span> <i class="item_price">$250</i></p>
										<p><a class="item_add" href="#">Add to cart</a></p>
									</div>
								</div>
								<div class="col-md-4 agile_ecommerce_tab_left">
									<div class="hs-wrapper">
										<img src="images/test/18.jpg" alt=" " class="img-responsive" />
										<img src="images/test/17.jpg" alt=" " class="img-responsive" />
										<img src="images/test/19.jpg" alt=" " class="img-responsive" />
										<img src="images/test/17.jpg" alt=" " class="img-responsive" />
										<img src="images/test/18.jpg" alt=" " class="img-responsive" />
										<img src="images/test/19.jpg" alt=" " class="img-responsive" />
										<img src="images/test/17.jpg" alt=" " class="img-responsive" />
										<img src="images/test/18.jpg" alt=" " class="img-responsive" />
										<div class="w3_hs_bottom">
											<ul>
												<li>
													<a href="#" data-toggle="modal" data-target="#myModal4"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
												</li>
											</ul>
										</div>
									</div>
									<h5><a href="single.html">Jewellery</a></h5>
									<div class="simpleCart_shelfItem">
										<p><span>$320</span> <i class="item_price">$250</i></p>
										<p><a class="item_add" href="#">Add to cart</a></p>
									</div>
								</div>
								<div class="col-md-4 agile_ecommerce_tab_left">
									<div class="hs-wrapper">
										<img src="images/test/19.jpg" alt=" " class="img-responsive" />
										<img src="images/test/17.jpg" alt=" " class="img-responsive" />
										<img src="images/test/18.jpg" alt=" " class="img-responsive" />
										<img src="images/test/17.jpg" alt=" " class="img-responsive" />
										<img src="images/test/18.jpg" alt=" " class="img-responsive" />
										<img src="images/test/19.jpg" alt=" " class="img-responsive" />
										<img src="images/test/17.jpg" alt=" " class="img-responsive" />
										<img src="images/test/18.jpg" alt=" " class="img-responsive" />
										<div class="w3_hs_bottom">
											<ul>
												<li>
													<a href="#" data-toggle="modal" data-target="#myModal4"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
												</li>
											</ul>
										</div>
									</div>
									<h5><a href="single.html">Jewellery</a></h5>
									<div class="simpleCart_shelfItem">
										<p><span>$320</span> <i class="item_price">$250</i></p>
										<p><a class="item_add" href="#">Add to cart</a></p>
									</div>
								</div>
								<div class="clearfix"> </div>
							</div>
						</div>
					</div>
				</div>
					<!--modal-video-->
				<div class="modal video-modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModal">
					<div class="modal-dialog" role="document">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
							</div>
							<section>
								<div class="modal-body">
									<div class="col-md-5 modal_body_left">
										<img src="images/test/20.jpg" alt=" " class="img-responsive" />
									</div>
									<div class="col-md-7 modal_body_right">
										<h4>a good look women's shirt</h4>
										<p>Ut enim ad minim veniam, quis nostrud
											exercitation ullamco laboris nisi ut aliquip ex ea
											commodo consequat.Duis aute irure dolor in
											reprehenderit in voluptate velit esse cillum dolore
											eu fugiat nulla pariatur. Excepteur sint occaecat
											cupidatat non proident, sunt in culpa qui officia
											deserunt mollit anim id est laborum.</p>
										<div class="rating">
											<div class="rating-left">
												<img src="images/test/star-.png" alt=" " class="img-responsive" />
											</div>
											<div class="rating-left">
												<img src="images/test/star-.png" alt=" " class="img-responsive" />
											</div>
											<div class="rating-left">
												<img src="images/test/star-.png" alt=" " class="img-responsive" />
											</div>
											<div class="rating-left">
												<img src="images/test/star.png" alt=" " class="img-responsive" />
											</div>
											<div class="rating-left">
												<img src="images/test/star.png" alt=" " class="img-responsive" />
											</div>
											<div class="clearfix"> </div>
										</div>
										<div class="modal_body_right_cart simpleCart_shelfItem">
											<p><span>$320</span> <i class="item_price">$250</i></p>
											<p><a class="item_add" href="#">Add to cart</a></p>
										</div>
										<h5>Color</h5>
										<div class="color-quality">
											<ul>
												<li><a href="#"><span></span>Red</a></li>
												<li><a href="#" class="brown"><span></span>Yellow</a></li>
												<li><a href="#" class="purple"><span></span>Purple</a></li>
												<li><a href="#" class="gray"><span></span>Violet</a></li>
											</ul>
										</div>
									</div>
									<div class="clearfix"> </div>
								</div>
							</section>
						</div>
					</div>
				</div>
				<div class="modal video-modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModal1">
					<div class="modal-dialog" role="document">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
							</div>
							<section>
								<div class="modal-body">
									<div class="col-md-5 modal_body_left">
										<img src="images/test/63.jpg" alt=" " class="img-responsive" />
									</div>
									<div class="col-md-7 modal_body_right">
										<h4>a good look black women's jeans</h4>
										<p>Ut enim ad minim veniam, quis nostrud
											exercitation ullamco laboris nisi ut aliquip ex ea
											commodo consequat.Duis aute irure dolor in
											reprehenderit in voluptate velit esse cillum dolore
											eu fugiat nulla pariatur. Excepteur sint occaecat
											cupidatat non proident, sunt in culpa qui officia
											deserunt mollit anim id est laborum.</p>
										<div class="rating">
											<div class="rating-left">
												<img src="images/test/star-.png" alt=" " class="img-responsive" />
											</div>
											<div class="rating-left">
												<img src="images/test/star-.png" alt=" " class="img-responsive" />
											</div>
											<div class="rating-left">
												<img src="images/test/star-.png" alt=" " class="img-responsive" />
											</div>
											<div class="rating-left">
												<img src="images/test/star.png" alt=" " class="img-responsive" />
											</div>
											<div class="rating-left">
												<img src="images/test/star.png" alt=" " class="img-responsive" />
											</div>
											<div class="clearfix"> </div>
										</div>
										<div class="modal_body_right_cart simpleCart_shelfItem">
											<p><span>$320</span> <i class="item_price">$250</i></p>
											<p><a class="item_add" href="#">Add to cart</a></p>
										</div>
										<h5>Color</h5>
										<div class="color-quality">
											<ul>
												<li><a href="#"><span></span>Red</a></li>
												<li><a href="#" class="brown"><span></span>Yellow</a></li>
												<li><a href="#" class="purple"><span></span>Purple</a></li>
												<li><a href="#" class="gray"><span></span>Violet</a></li>
											</ul>
										</div>
									</div>
									<div class="clearfix"> </div>
								</div>
							</section>
						</div>
					</div>
				</div>
				<div class="modal video-modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModal2">
					<div class="modal-dialog" role="document">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
							</div>
							<section>
								<div class="modal-body">
									<div class="col-md-5 modal_body_left">
										<img src="images/test/23.jpg" alt=" " class="img-responsive" />
									</div>
									<div class="col-md-7 modal_body_right">
										<h4>a good look women's Watch</h4>
										<p>Ut enim ad minim veniam, quis nostrud
											exercitation ullamco laboris nisi ut aliquip ex ea
											commodo consequat.Duis aute irure dolor in
											reprehenderit in voluptate velit esse cillum dolore
											eu fugiat nulla pariatur. Excepteur sint occaecat
											cupidatat non proident, sunt in culpa qui officia
											deserunt mollit anim id est laborum.</p>
										<div class="rating">
											<div class="rating-left">
												<img src="images/test/star-.png" alt=" " class="img-responsive" />
											</div>
											<div class="rating-left">
												<img src="images/test/star-.png" alt=" " class="img-responsive" />
											</div>
											<div class="rating-left">
												<img src="images/test/star-.png" alt=" " class="img-responsive" />
											</div>
											<div class="rating-left">
												<img src="images/test/star.png" alt=" " class="img-responsive" />
											</div>
											<div class="rating-left">
												<img src="images/test/star.png" alt=" " class="img-responsive" />
											</div>
											<div class="clearfix"> </div>
										</div>
										<div class="modal_body_right_cart simpleCart_shelfItem">
											<p><span>$320</span> <i class="item_price">$250</i></p>
											<p><a class="item_add" href="#">Add to cart</a></p>
										</div>
										<h5>Color</h5>
										<div class="color-quality">
											<ul>
												<li><a href="#"><span></span>Red</a></li>
												<li><a href="#" class="brown"><span></span>Yellow</a></li>
												<li><a href="#" class="purple"><span></span>Purple</a></li>
												<li><a href="#" class="gray"><span></span>Violet</a></li>
											</ul>
										</div>
									</div>
									<div class="clearfix"> </div>
								</div>
							</section>
						</div>
					</div>
				</div>
				<div class="modal video-modal fade" id="myModal3" tabindex="-1" role="dialog" aria-labelledby="myModal3">
					<div class="modal-dialog" role="document">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
							</div>
							<section>
								<div class="modal-body">
									<div class="col-md-5 modal_body_left">
										<img src="images/test/24.jpg" alt=" " class="img-responsive" />
									</div>
									<div class="col-md-7 modal_body_right">
										<h4>a good look women's Sandal</h4>
										<p>Ut enim ad minim veniam, quis nostrud
											exercitation ullamco laboris nisi ut aliquip ex ea
											commodo consequat.Duis aute irure dolor in
											reprehenderit in voluptate velit esse cillum dolore
											eu fugiat nulla pariatur. Excepteur sint occaecat
											cupidatat non proident, sunt in culpa qui officia
											deserunt mollit anim id est laborum.</p>
										<div class="rating">
											<div class="rating-left">
												<img src="images/test/star-.png" alt=" " class="img-responsive" />
											</div>
											<div class="rating-left">
												<img src="images/test/star-.png" alt=" " class="img-responsive" />
											</div>
											<div class="rating-left">
												<img src="images/test/star-.png" alt=" " class="img-responsive" />
											</div>
											<div class="rating-left">
												<img src="images/test/star.png" alt=" " class="img-responsive" />
											</div>
											<div class="rating-left">
												<img src="images/test/star.png" alt=" " class="img-responsive" />
											</div>
											<div class="clearfix"> </div>
										</div>
										<div class="modal_body_right_cart simpleCart_shelfItem">
											<p><span>$320</span> <i class="item_price">$250</i></p>
											<p><a class="item_add" href="#">Add to cart</a></p>
										</div>
										<h5>Color</h5>
										<div class="color-quality">
											<ul>
												<li><a href="#"><span></span>Red</a></li>
												<li><a href="#" class="brown"><span></span>Yellow</a></li>
												<li><a href="#" class="purple"><span></span>Purple</a></li>
												<li><a href="#" class="gray"><span></span>Violet</a></li>
											</ul>
										</div>
									</div>
									<div class="clearfix"> </div>
								</div>
							</section>
						</div>
					</div>
				</div>
				<div class="modal video-modal fade" id="myModal4" tabindex="-1" role="dialog" aria-labelledby="myModal4">
					<div class="modal-dialog" role="document">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
							</div>
							<section>
								<div class="modal-body">
									<div class="col-md-5 modal_body_left">
										<img src="images/test/22.jpg" alt=" " class="img-responsive" />
									</div>
									<div class="col-md-7 modal_body_right">
										<h4>a good look women's Necklace</h4>
										<p>Ut enim ad minim veniam, quis nostrud
											exercitation ullamco laboris nisi ut aliquip ex ea
											commodo consequat.Duis aute irure dolor in
											reprehenderit in voluptate velit esse cillum dolore
											eu fugiat nulla pariatur. Excepteur sint occaecat
											cupidatat non proident, sunt in culpa qui officia
											deserunt mollit anim id est laborum.</p>
										<div class="rating">
											<div class="rating-left">
												<img src="images/test/star-.png" alt=" " class="img-responsive" />
											</div>
											<div class="rating-left">
												<img src="images/test/star-.png" alt=" " class="img-responsive" />
											</div>
											<div class="rating-left">
												<img src="images/test/star-.png" alt=" " class="img-responsive" />
											</div>
											<div class="rating-left">
												<img src="images/test/star.png" alt=" " class="img-responsive" />
											</div>
											<div class="rating-left">
												<img src="images/test/star.png" alt=" " class="img-responsive" />
											</div>
											<div class="clearfix"> </div>
										</div>
										<div class="modal_body_right_cart simpleCart_shelfItem">
											<p><span>$320</span> <i class="item_price">$250</i></p>
											<p><a class="item_add" href="#">Add to cart</a></p>
										</div>
										<h5>Color</h5>
										<div class="color-quality">
											<ul>
												<li><a href="#"><span></span>Red</a></li>
												<li><a href="#" class="brown"><span></span>Yellow</a></li>
												<li><a href="#" class="purple"><span></span>Purple</a></li>
												<li><a href="#" class="gray"><span></span>Violet</a></li>
											</ul>
										</div>
									</div>
									<div class="clearfix"> </div>
								</div>
							</section>
						</div>
					</div>
				</div>
				<div class="modal video-modal fade" id="myModal5" tabindex="-1" role="dialog" aria-labelledby="myModal5">
					<div class="modal-dialog" role="document">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
							</div>
							<section>
								<div class="modal-body">
									<div class="col-md-5 modal_body_left">
										<img src="images/test/35.jpg" alt=" " class="img-responsive" />
									</div>
									<div class="col-md-7 modal_body_right">
										<h4>a good look women's Jacket</h4>
										<p>Ut enim ad minim veniam, quis nostrud
											exercitation ullamco laboris nisi ut aliquip ex ea
											commodo consequat.Duis aute irure dolor in
											reprehenderit in voluptate velit esse cillum dolore
											eu fugiat nulla pariatur. Excepteur sint occaecat
											cupidatat non proident, sunt in culpa qui officia
											deserunt mollit anim id est laborum.</p>
										<div class="rating">
											<div class="rating-left">
												<img src="images/test/star-.png" alt=" " class="img-responsive" />
											</div>
											<div class="rating-left">
												<img src="images/test/star-.png" alt=" " class="img-responsive" />
											</div>
											<div class="rating-left">
												<img src="images/test/star-.png" alt=" " class="img-responsive" />
											</div>
											<div class="rating-left">
												<img src="images/test/star.png" alt=" " class="img-responsive" />
											</div>
											<div class="rating-left">
												<img src="images/test/star.png" alt=" " class="img-responsive" />
											</div>
											<div class="clearfix"> </div>
										</div>
										<div class="modal_body_right_cart simpleCart_shelfItem">
											<p><span>$320</span> <i class="item_price">$250</i></p>
											<p><a class="item_add" href="#">Add to cart</a></p>
										</div>
										<h5>Color</h5>
										<div class="color-quality">
											<ul>
												<li><a href="#"><span></span>Red</a></li>
												<li><a href="#" class="brown"><span></span>Yellow</a></li>
												<li><a href="#" class="purple"><span></span>Purple</a></li>
												<li><a href="#" class="gray"><span></span>Violet</a></li>
											</ul>
										</div>
									</div>
									<div class="clearfix"> </div>
								</div>
							</section>
						</div>
					</div>
				</div>
				<div class="modal video-modal fade" id="myModal6" tabindex="-1" role="dialog" aria-labelledby="myModal6">
					<div class="modal-dialog" role="document">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
							</div>
							<section>
								<div class="modal-body">
									<div class="col-md-5 modal_body_left">
										<img src="images/test/39.jpg" alt=" " class="img-responsive" />
									</div>
									<div class="col-md-7 modal_body_right">
										<h4>a good look women's Long Skirt</h4>
										<p>Ut enim ad minim veniam, quis nostrud
											exercitation ullamco laboris nisi ut aliquip ex ea
											commodo consequat.Duis aute irure dolor in
											reprehenderit in voluptate velit esse cillum dolore
											eu fugiat nulla pariatur. Excepteur sint occaecat
											cupidatat non proident, sunt in culpa qui officia
											deserunt mollit anim id est laborum.</p>
										<div class="rating">
											<div class="rating-left">
												<img src="images/test/star-.png" alt=" " class="img-responsive" />
											</div>
											<div class="rating-left">
												<img src="images/test/star-.png" alt=" " class="img-responsive" />
											</div>
											<div class="rating-left">
												<img src="images/test/star-.png" alt=" " class="img-responsive" />
											</div>
											<div class="rating-left">
												<img src="images/test/star.png" alt=" " class="img-responsive" />
											</div>
											<div class="rating-left">
												<img src="images/test/star.png" alt=" " class="img-responsive" />
											</div>
											<div class="clearfix"> </div>
										</div>
										<div class="modal_body_right_cart simpleCart_shelfItem">
											<p><span>$320</span> <i class="item_price">$250</i></p>
											<p><a class="item_add" href="#">Add to cart</a></p>
										</div>
										<h5>Color</h5>
										<div class="color-quality">
											<ul>
												<li><a href="#"><span></span>Red</a></li>
												<li><a href="#" class="brown"><span></span>Yellow</a></li>
												<li><a href="#" class="purple"><span></span>Purple</a></li>
												<li><a href="#" class="gray"><span></span>Violet</a></li>
											</ul>
										</div>
									</div>
									<div class="clearfix"> </div>
								</div>
							</section>
						</div>
					</div>
				</div>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
<!-- //banner-bottom -->

<!-- banner-bottom1 -->
	<div class="banner-bottom1">
		<div class="agileinfo_banner_bottom1_grids">
			<div class="col-md-7 agileinfo_banner_bottom1_grid_left">
				<h3>Grand Opening Event With flat<span>20% <i>Discount</i></span></h3>
				<a href="products.html">Shop Now</a>
			</div>
			<div class="col-md-5 agileinfo_banner_bottom1_grid_right">
				<h4>hot deal</h4>
				<div class="timer_wrap">
					<div id="counter"> </div>
				</div>
				<script src="${pageContext.request.contextPath}/javascripts/jquery.countdown.js"></script>
				<script src="${pageContext.request.contextPath}/javascripts/script.js"></script>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
<!-- //banner-bottom1 -->

<!-- special-deals -->
	<div class="special-deals">
		<div class="container">
			<h2>Special Deals</h2>
			<div class="w3agile_special_deals_grids">
				<div class="col-md-7 w3agile_special_deals_grid_left">
					<div class="w3agile_special_deals_grid_left_grid">
						<img src="images/test/26.jpg" alt=" " class="img-responsive" />
						<div class="w3agile_special_deals_grid_left_grid_pos1">
							<h5>30%<span>Off/-</span></h5>
						</div>
						<div class="w3agile_special_deals_grid_left_grid_pos">
							<h4>We Offer <span>Best Products</span></h4>
						</div>
					</div>
					<div class="wmuSlider example1">
						<div class="wmuSliderWrapper">
							<article style="position: absolute; width: 100%; opacity: 0;">
								<div class="banner-wrap">
									<div class="w3agile_special_deals_grid_left_grid1">
										<img src="images/test/1.png" alt=" " class="img-responsive" />
										<p>Quis autem vel eum iure reprehenderit qui in ea voluptate
											velit esse quam nihil molestiae consequatur, vel illum qui dolorem
											eum fugiat quo voluptas nulla pariatur</p>
										<h4>Laura</h4>
									</div>
								</div>
							</article>
							<article style="position: absolute; width: 100%; opacity: 0;">
								<div class="banner-wrap">
									<div class="w3agile_special_deals_grid_left_grid1">
										<img src="images/test/2.png" alt=" " class="img-responsive" />
										<p>Quis autem vel eum iure reprehenderit qui in ea voluptate
											velit esse quam nihil molestiae consequatur, vel illum qui dolorem
											eum fugiat quo voluptas nulla pariatur</p>
										<h4>Michael</h4>
									</div>
								</div>
							</article>
							<article style="position: absolute; width: 100%; opacity: 0;">
								<div class="banner-wrap">
									<div class="w3agile_special_deals_grid_left_grid1">
										<img src="images/test/3.png" alt=" " class="img-responsive" />
										<p>Quis autem vel eum iure reprehenderit qui in ea voluptate
											velit esse quam nihil molestiae consequatur, vel illum qui dolorem
											eum fugiat quo voluptas nulla pariatur</p>
										<h4>Rosy</h4>
									</div>
								</div>
							</article>
						</div>
					</div>
						<script src="${pageContext.request.contextPath}/javascripts/jquery.wmuSlider.js"></script>
						<script>
							$('.example1').wmuSlider();
						</script>
				</div>
				<div class="col-md-5 w3agile_special_deals_grid_right">
					<img src="images/test/25.jpg" alt=" " class="img-responsive" />
					<div class="w3agile_special_deals_grid_right_pos">
						<h4>Women's <span>Special</span></h4>
						<h5>save up <span>to</span> 30%</h5>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
<!-- //special-deals -->

<!-- top-brands -->
	<div class="top-brands">
		<div class="container">
			<h3>Top Brands</h3>
			<div class="sliderfig">
				<ul id="flexiselDemo1">
					<li>
						<img src="images/test/4.png" alt=" " class="img-responsive" />
					</li>
					<li>
						<img src="images/test/5.png" alt=" " class="img-responsive" />
					</li>
					<li>
						<img src="images/test/6.png" alt=" " class="img-responsive" />
					</li>
					<li>
						<img src="images/test/7.png" alt=" " class="img-responsive" />
					</li>
					<li>
						<img src="images/test/46.jpg" alt=" " class="img-responsive" />
					</li>
				</ul>
			</div>
					<script type="text/javascript">
							$(window).load(function() {
								$("#flexiselDemo1").flexisel({
									visibleItems: 4,
									animationSpeed: 1000,
									autoPlay: false,
									autoPlaySpeed: 3000,
									pauseOnHover: true,
									enableResponsiveBreakpoints: true,
									responsiveBreakpoints: {
										portrait: {
											changePoint:480,
											visibleItems: 1
										},
										landscape: {
											changePoint:640,
											visibleItems:2
										},
										tablet: {
											changePoint:768,
											visibleItems: 3
										}
									}
								});
								
							});


					let productList=JSON.parse('${listOfString}');
					
					
					function setCategoryList(){
						
						let result = '<ul class="dropdown-menu multi-column columns-3">';
						for (let i = 0; i < Math.ceil(productList.length / 4); i++) {
							result += '<div class="row">';
							for (let k = i*4;  k < ((i+1)*4 >productList.length ? productList.length : (i+1)*4) ; k++) {
								result += '<div class="col-sm-3"><ul class="multi-column-dropdown"><h6>'+ productList[k].mainTypeName +'</h6>';
								for (let j = 0;  j< productList[k].subTypeList.length; j++) {
									var mainTypeIdx;
									if((productList[k].subTypeList[j].subTypeIdx+"").length===3) {
										mainTypeIdx=(productList[k].subTypeList[j].subTypeIdx+"").substring(0,1);
									}
									else{
										mainTypeIdx=(productList[k].subTypeList[j].subTypeIdx+"").substring(0,2);
									}
									result += '<li><a href="/final/product/productView.do?mainTypeIdx=' + mainTypeIdx + '&subTypeIdx=' + productList[k].subTypeList[j].subTypeIdx + '">' + productList[k].subTypeList[j].subTypeName + '</a></li>';	
								}	
								
								result += '</ul></div>';
							}
							result += '</div>';
						}
						result += '</ul>';
						window.sessionStorage.setItem('staticProductList' , JSON.stringify(productList));
						window.sessionStorage.setItem('categoryList' , result);
					}
					

					setCategoryList();
					

					</script>
					<script type="text/javascript" src="${pageContext.request.contextPath}/javascripts/jquery.flexisel.js"></script>
		</div>
	</div>
<!-- //top-brands -->
<!-- newsletter -->
	<div class="newsletter">
		<div class="container">
			<div class="col-md-6 w3agile_newsletter_left">
				<h3>Newsletter</h3>
				<p>Excepteur sint occaecat cupidatat non proident, sunt.</p>
			</div>
			<div class="col-md-6 w3agile_newsletter_right">
				<form action="#" method="post">
					<input type="email" name="Email" value="Email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email';}" required="">
					<input type="submit" value="" />
				</form>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
<!-- //newsletter -->
	<!-- footer -->
<%@ include file="/WEB-INF/include/include-footer.jspf"%>
	<!-- //footer -->
</body>
</html>
