<%@page import="org.springframework.security.core.userdetails.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/stylesheets/flexslider.css"
	type="text/css" media="screen" />
<head>
<%@ include file="/WEB-INF/include/include-header.jspf"%>

<style>
.tit {
	font-size: 48px;
	line-height: 54px;
	font-family: 'ngb';
	color: #222;
	letter-spacing: -1px;
}
</style>
</head>


<body>
	<!-- header -->
	<%@ include file="/WEB-INF/include/include-bodyHeader.jspf"%>
	<!-- //header -->

	
	
<!-- banner -->
<div class="banner">
	<div class="flexslider">
		<ul class="slides">
			<li><img src="images/test/201711001.png" /></li>
			<li><img src="images/test/201711002.jpg" /></li>
			<li><img src="images/test/201711003.jpg" /></li>
		</ul>
	</div>

</div>
<script defer src="${pageContext.request.contextPath}/javascripts/jquery.flexslider.js"></script>

	<script type="text/javascript">
		$(window).load(function() {
			$('.flexslider').flexslider({
				animation : "slide"
			});
		});
	</script>

	<%
		System.out.println(session.getAttribute("user"));
	%>
   <div class="bestSeller">
      <div class="container">
         <h3>BEST SELLER</h3>
         <div class="agileinfo_new_products_grids">
            <div class="sliderfig">
               <div id="flexiselDemo1">
                  <div class="col-md-3 agileinfo_new_products_grid">
                     <div
                        class="agile_ecommerce_tab_left agileinfo_new_products_grid1">
                        <div class="sk-wrapper hs-wrapper1">
                           <img src="images/test/27.jpg" alt=" " class="img-responsive" />
                           <div class="w3_hs_bottom w3_hs_bottom_sub">
                              <a href="#" data-toggle="modal" data-target="#myModal6"
                                 style="bottom: 15px; right: 0; position: absolute; width: 100%;">
                                 <span class="glyphicon glyphicon-eye-open" aria-hidden="true"
                                 style="font-size: 160%;"></span>
                              </a>
                           </div>
                        </div>
                        <h5>
                           <a href="single.html">Skirts</a>
                        </h5>
                        <div class="simpleCart_shelfItem">
                           <p>
                              <span>$320</span> <i class="item_price">$250</i>
                           </p>
                           <p>
                              <a class="item_add" href="#">Add to cart</a>
                           </p>
                        </div>
                     </div>
                  </div>
                  <div class="col-md-3 agileinfo_new_products_grid">
                     <div
                        class="agile_ecommerce_tab_left agileinfo_new_products_grid1">
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
                                 <li><a href="#" data-toggle="modal"
                                    data-target="#myModal6"><span
                                       class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
                                 </li>
                              </ul>
                           </div>
                        </div>
                        <h5>
                           <a href="single.html">Skirts</a>
                        </h5>
                        <div class="simpleCart_shelfItem">
                           <p>
                              <span>$320</span> <i class="item_price">$250</i>
                           </p>
                           <p>
                              <a class="item_add" href="#">Add to cart</a>
                           </p>
                        </div>
                     </div>
                  </div>
                  <div class="col-md-3 agileinfo_new_products_grid">
                     <div
                        class="agile_ecommerce_tab_left agileinfo_new_products_grid1">
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
                                 <li><a href="#" data-toggle="modal"
                                    data-target="#myModal5"><span
                                       class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
                                 </li>
                              </ul>
                           </div>
                        </div>
                        <h5>
                           <a href="single.html">Jackets</a>
                        </h5>
                        <div class="simpleCart_shelfItem">
                           <p>
                              <span>$320</span> <i class="item_price">$250</i>
                           </p>
                           <p>
                              <a class="item_add" href="#">Add to cart</a>
                           </p>
                        </div>
                     </div>
                  </div>
                  <div class="col-md-3 agileinfo_new_products_grid">
                     <div
                        class="agile_ecommerce_tab_left agileinfo_new_products_grid1">
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
                                 <li><a href="#" data-toggle="modal"
                                    data-target="#myModal6"><span
                                       class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
                                 </li>
                              </ul>
                           </div>
                        </div>
                        <h5>
                           <a href="single.html">Dresses</a>
                        </h5>
                        <div class="simpleCart_shelfItem">
                           <p>
                              <span>$320</span> <i class="item_price">$250</i>
                           </p>
                           <p>
                              <a class="item_add" href="#">Add to cart</a>
                           </p>
                        </div>
                     </div>
                  </div>
                  <div class="col-md-3 agileinfo_new_products_grid">
                     <div
                        class="agile_ecommerce_tab_left agileinfo_new_products_grid1">
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
                                 <li><a href="#" data-toggle="modal"
                                    data-target="#myModal1"><span
                                       class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
                                 </li>
                              </ul>
                           </div>
                        </div>
                        <h5>
                           <a href="single.html">Jeans</a>
                        </h5>
                        <div class="simpleCart_shelfItem">
                           <p>
                              <span>$320</span> <i class="item_price">$250</i>
                           </p>
                           <p>
                              <a class="item_add" href="#">Add to cart</a>
                           </p>
                        </div>
                     </div>
                  </div>

               </div>
               <div class="clearfix"></div>
            </div>

         </div>
      </div>
   </div>


<!-- banner-bottom -->
<div class="top-brands">
		<div class="container">
			<h3>New Product</h3>
	<div class="banner-bottom">
		<div class="container">
					<div class="col-md-5 wthree_banner_bottom_left">
						<div class="flexslider">
							<ul class="slides">
								<li><img src="images/test/201711S1.jpg" /></li>
								<li><img src="images/test/201711S2.jpg" /></li>
								<li><img src="images/test/201711S3.jpg" /></li>
							</ul>
						</div>
					</div>
					<!-- Video & the api -->
					<script defer src="${pageContext.request.contextPath}/javascripts/jquery.flexslider.js"></script>
					<script type="text/javascript">
					$(window).load(function() {
						 
						  // Call fitVid before FlexSlider initializes, so the proper initial height can be retrieved.
						  $(".flexslider")
						    .flexslider({
						      animation: "slide",
						      useCSS: false,
						      animationLoop: true,
						      smoothHeight: true,
						      before: function(slider){
						        $f(player).api('pause');
						      }
						  });

						});
					</script>
					<div class="col-md-7 wthree_banner_bottom_right">
				<div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
					<ul id="myTab" class="nav nav-tabs" role="tablist">
						<li role="presentation" class="active"><a href="#home" id=""
							role="tab" data-toggle="tab" aria-controls="home"><img
								src="images/test/Mamonde.jpg"></a></li>
						<li role="presentation"><a href="#skirts" role="tab"
							id="skirts-tab" data-toggle="tab" aria-controls="skirts"><img
								src="images/test/inisfree.jpg"></a></li>
						<li role="presentation"><a href="#watches" role="tab"
							id="watches-tab" data-toggle="tab" aria-controls="watches"><img
								src="images/test/etude.jpg"></a></li>
						<li role="presentation"><a href="#sandals" role="tab"
							id="sandals-tab" data-toggle="tab" aria-controls="sandals"><img
								src="images/test/hera.png"></a></li>
						<li role="presentation"><a href="#jewellery" role="tab"
							id="jewellery-tab" data-toggle="tab" aria-controls="jewellery"><img
								src="images/test/aritaum.png"></a></li>
					</ul>
					<div id="myTabContent" class="tab-content">
						<div role="tabpanel" class="tab-pane fade active in" id="home"
							aria-labelledby="home-tab">
							<div class="agile_ecommerce_tabs">
								<div class="col-md-4 agile_ecommerce_tab_left">
									<div class="sk-wrapper">
										<img src="images/cosmetic/1/101/2/101_2.png" alt=" " class="img-responsive" />
										<div class="w3_hs_bottom">
											<ul>
												<li><a href="#" data-toggle="modal"
													data-target="#myModal"><span
														class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
												</li>
											</ul>
										</div>
									</div>
									<h5>
										<a href="single.html">룩 앳 마이 아이즈 NEW</a>
									</h5>
									<div class="simpleCart_shelfItem">
										<p>
											 <i class="item_price">5250원</i>
										</p>
										<p>
											<a class="item_add" href="#">Add to cart</a>
										</p>
									</div>
								</div>
								<div class="col-md-4 agile_ecommerce_tab_left">
									<div class="sk-wrapper">
										<img src="images/cosmetic/1/101/1/101_1.png" alt=" " class="img-responsive" />
										<div class="w3_hs_bottom">
											<ul>
												<li><a href="#" data-toggle="modal"
													data-target="#myModal"><span
														class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
												</li>
											</ul>
										</div>
									</div>
									<h5>
										<a href="single.html">룩 앳 마이 아이즈 카페</a>
									</h5>
									<div class="simpleCart_shelfItem">
										<p>
											<i class="item_price">5250원</i>
										</p>
										<p>
											<a class="item_add" href="#">Add to cart</a>
										</p>
									</div>
								</div>
								<div class="col-md-4 agile_ecommerce_tab_left">
									<div class="sk-wrapper">
										<img src="images/cosmetic/1/101/3/101_3.png" alt=" " class="img-responsive" />
										<div class="w3_hs_bottom">
											<ul>
												<li><a href="#" data-toggle="modal"
													data-target="#myModal"><span
														class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
												</li>
											</ul>
										</div>
									</div>
									<h5>
										<a href="single.html">아이즈 카페</a>
									</h5>
									<div class="simpleCart_shelfItem">
										<p>
											<i class="item_price">6250원</i>
										</p>
										<p>
											<a class="item_add" href="#">Add to cart</a>
										</p>
									</div>
								</div>
								<div class="clearfix"></div>
							</div>
						</div>
						<div role="tabpanel" class="tab-pane fade" id="skirts"
							aria-labelledby="skirts-tab">
							<div class="agile_ecommerce_tabs">
								<div class="col-md-4 agile_ecommerce_tab_left">
									<div class="sk-wrapper">
										<img src="images/cosmetic/1/102/10/102_10.png" alt=" " class="img-responsive" />
										<div class="w3_hs_bottom">
											<ul>
												<li><a href="#" data-toggle="modal"
													data-target="#myModal6"><span
														class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
												</li>
											</ul>
										</div>
									</div>
									<h5>
										<a href="single.html">Skirt</a>
									</h5>
									<div class="simpleCart_shelfItem">
										<p>
											<span>$320</span> <i class="item_price">$250</i>
										</p>
										<p>
											<a class="item_add" href="#">Add to cart</a>
										</p>
									</div>
								</div>
								<div class="col-md-4 agile_ecommerce_tab_left">
									<div class="sk-wrapper">
										<img src="images/cosmetic/1/103/20/101_20.png" alt=" " class="img-responsive" />
										<div class="w3_hs_bottom">
											<ul>
												<li><a href="#" data-toggle="modal"
													data-target="#myModal6"><span
														class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
												</li>
											</ul>
										</div>
									</div>
									<h5>
										<a href="single.html">파운데이션</a>
									</h5>
									<div class="simpleCart_shelfItem">
										<p>
											<i class="item_price">7500원</i>
										</p>
										<p>
											<a class="item_add" href="#">Add to cart</a>
										</p>
									</div>
								</div>
								<div class="col-md-4 agile_ecommerce_tab_left">
									<div class="sk-wrapper">
										<img src="images/cosmetic/1/104/30/104_30.png" alt=" " class="img-responsive" />
										<div class="w3_hs_bottom">
											<ul>
												<li><a href="#" data-toggle="modal"
													data-target="#myModal6"><span
														class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
												</li>
											</ul>
										</div>
									</div>
									<h5>
										<a href="single.html">화이트</a>
									</h5>
									<div class="simpleCart_shelfItem">
										<p>
											<i class="item_price">7200원</i>
										</p>
										<p>
											<a class="item_add" href="#">Add to cart</a>
										</p>
									</div>
								</div>
								<div class="clearfix"></div>
							</div>
						</div>
						<div role="tabpanel" class="tab-pane fade" id="watches"
							aria-labelledby="watches-tab">
							<div class="agile_ecommerce_tabs">
								<div class="col-md-4 agile_ecommerce_tab_left">
									<div class="sk-wrapper">
										<img src="images/cosmetic/2/201/53/201_53.png" alt=" " class="img-responsive" />
										<div class="w3_hs_bottom">
											<ul>
												<li><a href="#" data-toggle="modal"
													data-target="#myModal2"><span
														class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
												</li>
											</ul>
										</div>
									</div>
									<h5>
										<a href="single.html">마이립</a>
									</h5>
									<div class="simpleCart_shelfItem">
										<p>
											<i class="item_price">2500원</i>
										</p>
										<p>
											<a class="item_add" href="#">Add to cart</a>
										</p>
									</div>
								</div>
								<div class="col-md-4 agile_ecommerce_tab_left">
									<div class="sk-wrapper">
										<img src="images/cosmetic/2/202/63/202_63.png" alt=" " class="img-responsive" />
										<div class="w3_hs_bottom">
											<ul>
												<li><a href="#" data-toggle="modal"
													data-target="#myModal2"><span
														class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
												</li>
											</ul>
										</div>
									</div>
									<h5>
										<a href="single.html">마이 틴트</a>
									</h5>
									<div class="simpleCart_shelfItem">
										<p>
											<i class="item_price">2500원</i>
										</p>
										<p>
											<a class="item_add" href="#">Add to cart</a>
										</p>
									</div>
								</div>
								<div class="col-md-4 agile_ecommerce_tab_left">
									<div class="sk-wrapper">
										<img src="images/cosmetic/2/203/72/203_72.png" alt=" " class="img-responsive" />
										<div class="w3_hs_bottom">
											<ul>
												<li><a href="#" data-toggle="modal"
													data-target="#myModal2"><span
														class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
												</li>
											</ul>
										</div>
									</div>
									<h5>
										<a href="single.html">마이 핑크</a>
									</h5>
									<div class="simpleCart_shelfItem">
										<p>
											<i class="item_price">3200원</i>
										</p>
										<p>
											<a class="item_add" href="#">Add to cart</a>
										</p>
									</div>
								</div>
								<div class="clearfix"></div>
							</div>
						</div>
						<div role="tabpanel" class="tab-pane fade" id="sandals"
							aria-labelledby="sandals-tab">
							<div class="agile_ecommerce_tabs">
								<div class="col-md-4 agile_ecommerce_tab_left">
									<div class="sk-wrapper">
										<img src="images/cosmetic/3/301/85/301_85.png" alt=" " class="img-responsive" />
										<div class="w3_hs_bottom">
											<ul>
												<li><a href="#" data-toggle="modal"
													data-target="#myModal3"><span
														class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
												</li>
											</ul>
										</div>
									</div>
									<h5>
										<a href="single.html">2호 톡톡</a>
									</h5>
									<div class="simpleCart_shelfItem">
										<p>
											<i class="item_price">12000원</i>
										</p>
										<p>
											<a class="item_add" href="#">Add to cart</a>
										</p>
									</div>
								</div>
								<div class="col-md-4 agile_ecommerce_tab_left">
									<div class="sk-wrapper">
										<img src="images/cosmetic/3/301/86/301_86.png" alt=" " class="img-responsive" />
										<div class="w3_hs_bottom">
											<ul>
												<li><a href="#" data-toggle="modal"
													data-target="#myModal3"><span
														class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
												</li>
											</ul>
										</div>
									</div>
									<h5>
										<a href="single.html">3호 톡톡</a>
									</h5>
									<div class="simpleCart_shelfItem">
										<p>
											<i class="item_price">15000원</i>
										</p>
										<p>
											<a class="item_add" href="#">Add to cart</a>
										</p>
									</div>
								</div>
								<div class="col-md-4 agile_ecommerce_tab_left">
									<div class="sk-wrapper">
										<img src="images/cosmetic/3/301/87/301_87.png" alt=" " class="img-responsive" />
										<div class="w3_hs_bottom">
											<ul>
												<li><a href="#" data-toggle="modal"
													data-target="#myModal3"><span
														class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
												</li>
											</ul>
										</div>
									</div>
									<h5>
										<a href="single.html">4호 톡톡</a>
									</h5>
									<div class="simpleCart_shelfItem">
										<p>
											<i class="item_price">17000원</i>
										</p>
										<p>
											<a class="item_add" href="#">Add to cart</a>
										</p>
									</div>
								</div>
								<div class="clearfix"></div>
							</div>
						</div>
						<div role="tabpanel" class="tab-pane fade" id="jewellery"
							aria-labelledby="jewellery-tab">
							<div class="agile_ecommerce_tabs">
								<div class="col-md-4 agile_ecommerce_tab_left">
									<div class="sk-wrapper">
										<img src="images/cosmetic/4/401/139/401_139.png" alt=" " class="img-responsive" />
										<div class="w3_hs_bottom">
											<ul>
												<li><a href="#" data-toggle="modal"
													data-target="#myModal4"><span
														class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
												</li>
											</ul>
										</div>
									</div>
									<h5>
										<a href="single.html">기획세트 1호</a>
									</h5>
									<div class="simpleCart_shelfItem">
										<p>
											<i class="item_price">23000원</i>
										</p>
										<p>
											<a class="item_add" href="#">Add to cart</a>
										</p>
									</div>
								</div>
								<div class="col-md-4 agile_ecommerce_tab_left">
									<div class="hs-wrapper">
										<img src="images/cosmetic/4/401/140/401_140.png" alt=" " class="img-responsive" />
										<div class="w3_hs_bottom">
											<ul>
												<li><a href="#" data-toggle="modal"
													data-target="#myModal4"><span
														class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
												</li>
											</ul>
										</div>
									</div>
									<h5>
										<a href="single.html">기획세트 2호</a>
									</h5>
									<div class="simpleCart_shelfItem">
										<p>
											<i class="item_price">22000원</i>
										</p>
										<p>
											<a class="item_add" href="#">Add to cart</a>
										</p>
									</div>
								</div>
								<div class="col-md-4 agile_ecommerce_tab_left">
									<div class="hs-wrapper">
										<img src="images/cosmetic/5/501/169/501_169.png" alt=" " class="img-responsive" />
										<div class="w3_hs_bottom">
											<ul>
												<li><a href="#" data-toggle="modal"
													data-target="#myModal4"><span
														class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
												</li>
											</ul>
										</div>
									</div>
									<h5>
										<a href="single.html">AC 토너</a>
									</h5>
									<div class="simpleCart_shelfItem">
										<p>
											<i class="item_price">7500원</i>
										</p>
										<p>
											<a class="item_add" href="#">Add to cart</a>
										</p>
									</div>
								</div>
								<div class="clearfix"></div>
							</div>
						</div>
					</div>
				</div>
				

	<!-- banner-bottom1 -->
	<div class="banner-bottom1">
		<div class="agileinfo_banner_bottom1_grids">
			<div class="col-md-7 agileinfo_banner_bottom1_grid_left">
				<h3>
					Grand Opening Event With flat<span>20% <i>Discount</i></span>
				</h3>
				<a href="products.html">Shop Now</a>
			</div>
			<div class="col-md-5 agileinfo_banner_bottom1_grid_right">
				<h4>hot deal</h4>
				<div class="timer_wrap">
					<div id="counter"></div>
				</div>
				<script
					src="${pageContext.request.contextPath}/javascripts/jquery.countdown.js"></script>
				<script
					src="${pageContext.request.contextPath}/javascripts/script.js"></script>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<!-- //banner-bottom1 -->

					<script type="text/javascript">
							$(window).load(function() {
								$("#flexiselDemo1").flexisel({
									visibleItems: 4,
									animationSpeed: 1000,
									autoPlay: true,
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


				let productList = JSON.parse('${listOfString}');

				function setCategoryList() {

					let result = '<ul class="dropdown-menu multi-column columns-3">';
					for (let i = 0; i < Math.ceil(productList.length / 4); i++) {
						result += '<div class="row">';
						for (let k = i * 4; k < ((i + 1) * 4 > productList.length ? productList.length
								: (i + 1) * 4); k++) {
							result += '<div class="col-sm-3"><ul class="multi-column-dropdown"><h6>'
									+ productList[k].mainTypeName + '</h6>';
							for (let j = 0; j < productList[k].subTypeList.length; j++) {
								var mainTypeIdx;
								if ((productList[k].subTypeList[j].subTypeIdx + "").length === 3) {
									mainTypeIdx = (productList[k].subTypeList[j].subTypeIdx + "")
											.substring(0, 1);
								} else {
									mainTypeIdx = (productList[k].subTypeList[j].subTypeIdx + "")
											.substring(0, 2);
								}
								result += '<li><a href="/final/product/productView.do?mainTypeIdx='
										+ mainTypeIdx
										+ '&subTypeIdx='
										+ productList[k].subTypeList[j].subTypeIdx
										+ '">'
										+ productList[k].subTypeList[j].subTypeName
										+ '</a></li>';
							}

							result += '</ul></div>';
						}
						result += '</div>';
					}
					result += '</ul>';
					window.sessionStorage.setItem('staticProductList', JSON
							.stringify(productList));
					window.sessionStorage.setItem('categoryList', result);
				}

				setCategoryList();
			</script>
			<script type="text/javascript"
				src="${pageContext.request.contextPath}/javascripts/jquery.flexisel.js"></script>
<!-- 		</div> -->
<!-- 	</div> -->
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
					<input type="email" name="Email" value="Email"
						onfocus="this.value = '';"
						onblur="if (this.value == '') {this.value = 'Email';}" required="">
					<input type="submit" value="" />
				</form>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<!-- //newsletter -->
	<!-- footer -->
	<%@ include file="/WEB-INF/include/include-footer.jspf"%>
	<!-- //footer -->
</body>
</html>
