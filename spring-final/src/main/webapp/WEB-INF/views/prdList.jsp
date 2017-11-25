<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
					<%@include file="/WEB-INF/include/include-header.jspf" %>
</head>
<body>
					<!-- header -->
					<%@include file="/WEB-INF/include/include-bodyHeader.jspf" %>	
						<!-- //header -->
<!-- banner -->
	<div class="banner1" id="home1">
		<div class="container">
			<h2>trendy fashion dresses<span>up to</span> 30% <i>Discount</i></h2>
		</div>
	</div>
<!-- //banner -->

<!-- breadcrumbs -->
	<div class="breadcrumb_dress">
		<div class="container">
			<ul>
				<li><a href="${pageContext.request.contextPath}/"><span class="glyphicon glyphicon-home" aria-hidden="true"></span> Home</a> <i>/</i></li>
				<li>Session값넣기</li>
			</ul>
		</div>
	</div>
<!-- //breadcrumbs -->

<!-- dresses -->
<div class="dresses">
		<div class="container">
			<div class="w3ls_dresses_grids">
				<div class="col-md-4 w3ls_dresses_grid_left">
					<div class="w3ls_dresses_grid_left_grid">
					<!--include 카테고리 분류  -->
						<%@ include file="/WEB-INF/include/include-categories.jspf"%>
					</div>
				</div>
				<div class="col-md-8 w3ls_dresses_grid_right">
				<!--==================sorting 분류!!==================-->
					<div class="w3ls_dresses_grid_right_grid2">
						<div class="w3ls_dresses_grid_right_grid2_left">
							<h3>Showing Results: 0-1</h3>
						</div>
						<div class="w3ls_dresses_grid_right_grid2_right">
							<select name="select_item" class="select_item">
								<option selected="selected">Default sorting</option>
								<option>Sort by popularity</option>
								<option>Sort by average rating</option>
								<option>Sort by newness</option>
								<option>Sort by price: low to high</option>
								<option>Sort by price: high to low</option>
							</select>
						</div>
						<div class="clearfix"> </div>
					</div>
				<!--==================//sorting 분류!!==================-->
					<div class="w3ls_dresses_grid_right_grid3">
					<c:forEach items="${prdList}" var="prd">	
						<div class="col-md-4 agileinfo_new_products_grid agileinfo_new_products_grid_dresses">
							<div class="agile_ecommerce_tab_left dresses_grid">
								<div class="sk-wrapper hs-wrapper2">
									<img src="/final/images/${map[prd.prodIdx][0].imgDTO.pathOfImage}.png" alt=" " class="img-responsive">
										<div class="w3_hs_bottom w3_hs_bottom_sub1">
											<a href="#" data-toggle="modal" data-target="#myModal6" style="bottom: 15px; right: 0; position: absolute;width: 100%;">
											<span class="glyphicon glyphicon-eye-open" aria-hidden="true" style="font-size: 160%;"></span></a>
										</div>
									</div>
								<h5><a href="/final/product/prdDetail.do">${prd.cosmName}</a></h5>
								<div class="simpleCart_shelfItem">
									<p><i class="item_price">${map[prd.prodIdx][0].prodPrice}</i>원</p>
									<p><a class="item_add" href="#">장바구니</a></p>
								</div>
							</div>
						</div>
					</c:forEach>	
						<div class="clearfix"> </div>
					</div>
		<!--==================Modal 부분==================-->				
					<div class="modal video-modal fade" id="myModal6" tabindex="-1" role="dialog" aria-labelledby="myModal6">
						<div class="modal-dialog" role="document">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>						
								</div>
								<section>
									<div class="modal-body">
										<div class="col-md-5 modal_body_left">
											<img src="/final/images/test/39.jpg" alt=" " class="img-responsive">
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
													<img src="/final/images/test/star-.png" alt=" " class="img-responsive">
												</div>
												<div class="rating-left">
													<img src="/final/images/test/star-.png" alt=" " class="img-responsive">
												</div>
												<div class="rating-left">
													<img src="/final/images/test/star-.png" alt=" " class="img-responsive">
												</div>
												<div class="rating-left">
													<img src="/final/images/test/star.png" alt=" " class="img-responsive">
												</div>
												<div class="rating-left">
													<img src="/final/images/test/star.png" alt=" " class="img-responsive">
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
	<!--==================//Modal 부분==================-->									
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
		</div>
<%-- 	
<div class="w3l_related_products">
		<div class="container">
			<h3>Related Products</h3>
			<ul id="flexiselDemo2">			
				<li>
					<div class="w3l_related_products_grid">
						<div class="agile_ecommerce_tab_left dresses_grid">
							<div class="hs-wrapper hs-wrapper3">
								<img src="${pageContext.request.contextPath}/images/test/31.jpg" alt=" " class="img-responsive">
								<img src="${pageContext.request.contextPath}/images/test/32.jpg" alt=" " class="img-responsive">
								<img src="${pageContext.request.contextPath}/images/test/33.jpg" alt=" " class="img-responsive">
								<img src="${pageContext.request.contextPath}/images/test/34.jpg" alt=" " class="img-responsive">
								<img src="${pageContext.request.contextPath}/images/test/31.jpg" alt=" " class="img-responsive">
								<img src="${pageContext.request.contextPath}/images/test/32.jpg" alt=" " class="img-responsive">
								<img src="${pageContext.request.contextPath}/images/test/33.jpg" alt=" " class="img-responsive">
								<img src="${pageContext.request.contextPath}/images/test/34.jpg" alt=" " class="img-responsive">
								<div class="w3_hs_bottom">
									<div class="flex_ecommerce">
										<a href="#" data-toggle="modal" data-target="#myModal6"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
									</div>
								</div>
							</div>
							<h5><a href="${pageContext.request.contextPath}/static/single.jsp">Sweater</a></h5>
							<div class="simpleCart_shelfItem">
								<p class="flexisel_ecommerce_cart"><span>$312</span> <i class="item_price">$212</i></p>
								<p><a class="item_add" href="#">Add to cart</a></p>
							</div>
						</div>
					</div>
				</li>
				<li>
					<div class="w3l_related_products_grid">
						<div class="agile_ecommerce_tab_left dresses_grid">
							<div class="hs-wrapper hs-wrapper3">
								<img src="${pageContext.request.contextPath}/images/test/32.jpg" alt=" " class="img-responsive" />
								<img src="${pageContext.request.contextPath}/images/test/31.jpg" alt=" " class="img-responsive" />
								<img src="${pageContext.request.contextPath}/images/test/33.jpg" alt=" " class="img-responsive" />
								<img src="${pageContext.request.contextPath}/images/test/34.jpg" alt=" " class="img-responsive" />
								<img src="${pageContext.request.contextPath}/images/test/31.jpg" alt=" " class="img-responsive" />
								<img src="${pageContext.request.contextPath}/images/test/32.jpg" alt=" " class="img-responsive" />
								<img src="${pageContext.request.contextPath}/images/test/33.jpg" alt=" " class="img-responsive" />
								<img src="${pageContext.request.contextPath}/images/test/34.jpg" alt=" " class="img-responsive" />
								<div class="w3_hs_bottom">
									<div class="flex_ecommerce">
										<a href="#" data-toggle="modal" data-target="#myModal6"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
									</div>
								</div>
							</div>
							<h5><a href="${pageContext.request.contextPath}/static/single.jsp">Sweater</a></h5>
							<div class="simpleCart_shelfItem">
								<p class="flexisel_ecommerce_cart"><span>$432</span> <i class="item_price">$323</i></p>
								<p><a class="item_add" href="#">Add to cart</a></p>
							</div>
						</div>
					</div>
				</li>
				<li>
					<div class="w3l_related_products_grid">
						<div class="agile_ecommerce_tab_left dresses_grid">
							<div class="hs-wrapper hs-wrapper3">
								<img src="${pageContext.request.contextPath}/images/test/34.jpg" alt=" " class="img-responsive" />
								<img src="${pageContext.request.contextPath}/images/test/37.jpg" alt=" " class="img-responsive" />
								<img src="${pageContext.request.contextPath}/images/test/30.jpg" alt=" " class="img-responsive" />
								<img src="${pageContext.request.contextPath}/images/test/36.jpg" alt=" " class="img-responsive" />
								<img src="${pageContext.request.contextPath}/images/test/37.jpg" alt=" " class="img-responsive" />
								<img src="${pageContext.request.contextPath}/images/test/30.jpg" alt=" " class="img-responsive" />
								<img src="${pageContext.request.contextPath}/images/test/36.jpg" alt=" " class="img-responsive" />
								<img src="${pageContext.request.contextPath}/images/test/38.jpg" alt=" " class="img-responsive" />
								<div class="w3_hs_bottom">
									<div class="flex_ecommerce">
										<a href="#" data-toggle="modal" data-target="#myModal6"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
									</div>
								</div>
							</div>
							<h5><a href="${pageContext.request.contextPath}/static/single.jsp">Sweater</a></h5>
							<div class="simpleCart_shelfItem">
								<p class="flexisel_ecommerce_cart"><span>$323</span> <i class="item_price">$310</i></p>
								<p><a class="item_add" href="#">Add to cart</a></p>
							</div>
						</div>
					</div>
				</li>
				<li>
					<div class="w3l_related_products_grid">
						<div class="agile_ecommerce_tab_left dresses_grid">
							<div class="hs-wrapper hs-wrapper3">
								<img src="${pageContext.request.contextPath}/images/test/55.jpg" alt=" " class="img-responsive" />
								<img src="${pageContext.request.contextPath}/images/test/34.jpg" alt=" " class="img-responsive" />
								<img src="${pageContext.request.contextPath}/images/test/30.jpg" alt=" " class="img-responsive" />
								<img src="${pageContext.request.contextPath}/images/test/36.jpg" alt=" " class="img-responsive" />
								<img src="${pageContext.request.contextPath}/images/test/37.jpg" alt=" " class="img-responsive" />
								<img src="${pageContext.request.contextPath}/images/test/30.jpg" alt=" " class="img-responsive" />
								<img src="${pageContext.request.contextPath}/images/test/36.jpg" alt=" " class="img-responsive" />
								<img src="${pageContext.request.contextPath}/images/test/38.jpg" alt=" " class="img-responsive" />
								<div class="w3_hs_bottom">
									<div class="flex_ecommerce">
										<a href="#" data-toggle="modal" data-target="#myModal6"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
									</div>
								</div>
							</div>
							<h5><a href="${pageContext.request.contextPath}/static/single.jsp">Sweater</a></h5>
							<div class="simpleCart_shelfItem">
								<p class="flexisel_ecommerce_cart"><span>$256</span> <i class="item_price">$200</i></p>
								<p><a class="item_add" href="#">Add to cart</a></p>
							</div>
						</div>
					</div>
				</li>
			</ul>
				<script type="text/javascript">
					$(window).load(function() {
						$("#flexiselDemo2").flexisel({
							visibleItems:4,
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
				</script>
				<script type="text/javascript" src="${pageContext.request.contextPath}/javascripts/jquery.flexisel.js"></script>
		</div>
	</div> 
--%>
<!-- //dresses -->
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
					<input type="submit" value="">
				</form>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
<!-- //newsletter -->
					<!-- footer -->
					<%@include file="/WEB-INF/include/include-footer.jspf" %>
					<!-- //footer -->
</body>
</html>