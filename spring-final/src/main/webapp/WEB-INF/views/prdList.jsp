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
									<img src="/final/images/cosmetic/${mainTypeIdx}/${prd.subTypeIdx}/${prd.prodIdx}/${imgMap[map[prd.prodIdx][0].codeOfProd].pathOfImage}.png" alt=" " class="img-responsive">
										<div class="w3_hs_bottom w3_hs_bottom_sub1">
											<a href="#" onclick="modalAjax(${prd.subTypeIdx},${prd.prodIdx})" data-toggle="modal" data-target="#myModal6" style="bottom: 15px; right: 0; position: absolute;width: 100%;">
											<span class="glyphicon glyphicon-eye-open" aria-hidden="true" style="font-size: 160%;"></span></a>
										</div>
									</div>
								<h5 style="width: 205.575px;height: 33.600px;">
								<a href="#" onclick="prdDetail('${prd.prodIdx}')">${prd.cosmName}</a>
								</h5>
								<div class="simpleCart_shelfItem">
									<p><i class="item_price">${map[prd.prodIdx][0].prodPrice}</i>원</p>
									<p><a class="item_add" href="#">장바구니</a></p>
								</div>
							</div>
						</div>
					</c:forEach>	
						<div class="clearfix"> </div>
					</div>
					<script type="text/javascript">
						function modalAjax(subTypeIdx,prodIdx){
							
						}
						function prdDetail(prodIdx){
							location.href="${pageContext.request.contextPath}/product/prdDetail.do?prodIdx="+prodIdx;
						}
					</script>
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
											<img src="/final/images/cosmetic/1/101/1/101_1.png" alt=" " class="img-responsive">
										</div>
										<div class="col-md-7 modal_body_right">
											<p>화장품 이름</p>
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
												<p><i class="item_price">가격을 넣어야되요</i></p>
												<p><a class="item_add" href="#">장바구니</a></p>
											</div>
											<h5>이미지 넣기</h5>
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