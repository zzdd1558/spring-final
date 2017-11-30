<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="/WEB-INF/include/include-header.jspf"%>

<script>
	function redirectOrder(event){
		if(JSON.parse(localStorage.getItem('cartList')) == null){
			alert('주문할 상품이 없습니다.');
			return
		}else{
			alert('상품 주문페이지로 이동합니다.');
			location.href =  "${pageContext.request.contextPath}/order/prodOrder.do";
		}
	}
</script>
</head>
<body>
	<!-- header -->
	<%@include file="/WEB-INF/include/include-bodyHeader.jspf"%>
	<!-- //header -->
	<!-- banner -->
	<div class="banner10" id="home1">
		<div class="container">
			<h2>About Us</h2>
		</div>
	</div>
	<!-- //banner -->

	<!-- breadcrumbs -->
	<div class="breadcrumb_dress">
		<div class="container">
			<ul>
				<li><a href="${pageContext.request.contextPath}"><span
						class="glyphicon glyphicon-home" aria-hidden="true"></span> Home</a> <i>/</i></li>
				<li>About Us</li>
			</ul>
		</div>
	</div>
	<!-- //breadcrumbs -->

	<!-- checkout -->
	<div class="checkout">
		<div class="container">
			<h3>
				Your shopping cart contains: <span id='prod_cnt'></span><span>개의
					상품</span>
			</h3>

			<div class="checkout-right">
				<table class="timetable_sub" id='timetable_sub'>

					<script>
						function removeProduct(event) {
							var target = event;
							var tag = target.parentElement.parentElement;
							var nodes = tag.children;
							
							if(confirm("해당상품을 삭제하시겠습니까?")){
								alert('해당 상품을 삭제하였습니다.');
								/* [nodes[0]].option[nodes[1]]; */
								var removeJsonData = JSON.parse(localStorage
										.getItem('cartList'));
								delete removeJsonData[nodes[0].value].option[nodes[1].value];

								localStorage.setItem('cartList', JSON
										.stringify(removeJsonData));
								changeCartView();
								drawCartList();
	
							}else{
								alert("취소 되었습니다.");
							}
						}
						function drawCartList() {
							var cartList = JSON.parse(localStorage
									.getItem('cartList'));
							var cnt = 0;
							var result = '<thead><tr><th>상품</th><th style="width:300px;">상품 이미지</th><th>갯수</th><th>상품 명</th><th>개당 가격</th><th>총 가격</th><th>삭제</th></tr></thead>';
							for (key in cartList) {
								for (subKey in cartList[key].option) {
									result += '<tr>';
									result += '<input type="hidden" value="'+ key +'" />';
									result += '<input type="hidden" value="'+ subKey +'" />';
									result += '<td class="invert">' + ++cnt
											+ '</td>'
									result += '<td class="invert-image"><a href="'
											+ httpRequest.getContextPath()
											+ '/product/prdDetail.do?prodIdx='
											+ key.split('_')[2]
											+ '"><img src="'
											+ httpRequest.getContextPath()
											+ '/images/cosmetic/'
											+ cartList[key].image
											+ '.png" class="img-responsive" /></a></td>';
									result += '<td class="invert"><div class="quantity"><div class="quantity-select"><div><span style="color:black; backgroung-color:white;">';
									result += cartList[key].option[subKey].quantity;
									result += '</span></div></div></div></td>';
									result += '<td class="invert">'
											+ cartList[key].prodTitle + ' / '
											+ cartList[key].option[subKey].name
											+ '</td>';
									result += '<td class="invert">'
											+ cartList[key].price + '원</td>';
									result += '<td class="invert">'
											+ (Number(cartList[key].price) * Number(cartList[key].option[subKey].quantity))
											+ '원</td>';
									result += '<td class="invert"><button type="button" class="btn btn-default btn-sm" onclick="removeProduct(this);"><span class="glyphicon glyphicon-remove"></span> Remove </button></td>';
									result += '</tr>'
								}
							}
							document.getElementById('prod_cnt').innerHTML = cnt;
							document.getElementById('timetable_sub').innerHTML = result;
						}
						drawCartList();
					</script>
					<!--quantity-->

					<!--quantity-->
				</table>
			</div>
			<div id="demo"></div>
			<div class="checkout-left">

				<sec:authorize access="! isAuthenticated()">
					<div class="checkout-right-basket">
						<a href="#" onclick='disabledAlert();'><span
							class="glyphicon glyphicon-menu-left" aria-hidden="true"></span>상품
							주문하기</a>
					</div>
				</sec:authorize>

				<sec:authorize access="isAuthenticated()">
					<div class="checkout-right-basket">
						<a href="javascript:redirectOrder(this);"><span
							class="glyphicon glyphicon-menu-left" aria-hidden="true"></span>상품
							주문하기</a>
					</div>
				</sec:authorize>


				<div class="checkout-right-basket">
					<a href="${pageContext.request.contextPath}"><span
						class="glyphicon glyphicon-menu-left" aria-hidden="true"></span>계속
						쇼핑하기</a>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<div class="w3l_related_products">
		<div class="container">
			<h3>Related Products</h3>
			<ul id="flexiselDemo2">
				<li>
					<div class="w3l_related_products_grid">
						<div class="agile_ecommerce_tab_left dresses_grid">
							<div class="hs-wrapper hs-wrapper3">
								<img src="images/ss1.jpg" alt=" " class="img-responsive">
								<img src="images/ss2.jpg" alt=" " class="img-responsive">
								<img src="images/ss3.jpg" alt=" " class="img-responsive">
								<img src="images/ss4.jpg" alt=" " class="img-responsive">
								<img src="images/ss5.jpg" alt=" " class="img-responsive">
								<img src="images/ss6.jpg" alt=" " class="img-responsive">
								<img src="images/ss7.jpg" alt=" " class="img-responsive">
								<img src="images/ss8.jpg" alt=" " class="img-responsive">
								<div class="w3_hs_bottom">
									<div class="flex_ecommerce">
										<a href="#" data-toggle="modal" data-target="#myModal6"><span
											class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
									</div>
								</div>
							</div>
							<h5>
								<a href="${pageContext.request.contextPath}/static/single.jsp">Pink
									Flared Skirt</a>
							</h5>
							<div class="simpleCart_shelfItem">
								<p class="flexisel_ecommerce_cart">
									<span>$312</span> <i class="item_price">$212</i>
								</p>
								<p>
									<a class="item_add" href="#">Add to cart</a>
								</p>
							</div>
						</div>
					</div>
				</li>
				<li>
					<div class="w3l_related_products_grid">
						<div class="agile_ecommerce_tab_left dresses_grid">
							<div class="hs-wrapper hs-wrapper3">
								<img src="images/ss2.jpg" alt=" " class="img-responsive">
								<img src="images/ss3.jpg" alt=" " class="img-responsive">
								<img src="images/ss4.jpg" alt=" " class="img-responsive">
								<img src="images/ss5.jpg" alt=" " class="img-responsive">
								<img src="images/ss6.jpg" alt=" " class="img-responsive">
								<img src="images/ss9.jpg" alt=" " class="img-responsive">
								<img src="images/ss7.jpg" alt=" " class="img-responsive">
								<img src="images/ss8.jpg" alt=" " class="img-responsive">
								<div class="w3_hs_bottom">
									<div class="flex_ecommerce">
										<a href="#" data-toggle="modal" data-target="#myModal6"><span
											class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
									</div>
								</div>
							</div>
							<h5>
								<a href="${pageContext.request.contextPath}/static/single.jsp">Red
									Pencil Skirt</a>
							</h5>
							<div class="simpleCart_shelfItem">
								<p class="flexisel_ecommerce_cart">
									<span>$432</span> <i class="item_price">$323</i>
								</p>
								<p>
									<a class="item_add" href="#">Add to cart</a>
								</p>
							</div>
						</div>
					</div>
				</li>
				<li>
					<div class="w3l_related_products_grid">
						<div class="agile_ecommerce_tab_left dresses_grid">
							<div class="hs-wrapper hs-wrapper3">
								<img src="images/ss3.jpg" alt=" " class="img-responsive">
								<img src="images/ss4.jpg" alt=" " class="img-responsive">
								<img src="images/ss5.jpg" alt=" " class="img-responsive">
								<img src="images/ss6.jpg" alt=" " class="img-responsive">
								<img src="images/ss7.jpg" alt=" " class="img-responsive">
								<img src="images/ss8.jpg" alt=" " class="img-responsive">
								<img src="images/ss9.jpg" alt=" " class="img-responsive">
								<img src="images/ss1.jpg" alt=" " class="img-responsive">
								<div class="w3_hs_bottom">
									<div class="flex_ecommerce">
										<a href="#" data-toggle="modal" data-target="#myModal6"><span
											class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
									</div>
								</div>
							</div>
							<h5>
								<a href="${pageContext.request.contextPath}/static/single.jsp">Yellow
									Cotton Skirt</a>
							</h5>
							<div class="simpleCart_shelfItem">
								<p class="flexisel_ecommerce_cart">
									<span>$323</span> <i class="item_price">$310</i>
								</p>
								<p>
									<a class="item_add" href="#">Add to cart</a>
								</p>
							</div>
						</div>
					</div>
				</li>
				<li>
					<div class="w3l_related_products_grid">
						<div class="agile_ecommerce_tab_left dresses_grid">
							<div class="hs-wrapper hs-wrapper3">
								<img src="images/ss4.jpg" alt=" " class="img-responsive">
								<img src="images/ss5.jpg" alt=" " class="img-responsive">
								<img src="images/ss6.jpg" alt=" " class="img-responsive">
								<img src="images/ss7.jpg" alt=" " class="img-responsive">
								<img src="images/ss8.jpg" alt=" " class="img-responsive">
								<img src="images/ss9.jpg" alt=" " class="img-responsive">
								<img src="images/ss1.jpg" alt=" " class="img-responsive">
								<img src="images/ss2.jpg" alt=" " class="img-responsive">
								<div class="w3_hs_bottom">
									<div class="flex_ecommerce">
										<a href="#" data-toggle="modal" data-target="#myModal6"><span
											class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
									</div>
								</div>
							</div>
							<h5>
								<a href="${pageContext.request.contextPath}/static/single.jsp">Black
									Short</a>
							</h5>
							<div class="simpleCart_shelfItem">
								<p class="flexisel_ecommerce_cart">
									<span>$256</span> <i class="item_price">$200</i>
								</p>
								<p>
									<a class="item_add" href="#">Add to cart</a>
								</p>
							</div>
						</div>
					</div>
				</li>
			</ul>
			<script type="text/javascript">
				$(window).load(function() {
					$("#flexiselDemo2").flexisel({
						visibleItems : 4,
						animationSpeed : 1000,
						autoPlay : true,
						autoPlaySpeed : 3000,
						pauseOnHover : true,
						enableResponsiveBreakpoints : true,
						responsiveBreakpoints : {
							portrait : {
								changePoint : 480,
								visibleItems : 1
							},
							landscape : {
								changePoint : 640,
								visibleItems : 2
							},
							tablet : {
								changePoint : 768,
								visibleItems : 3
							}
						}
					});

				});
			</script>
			<script type="text/javascript" src="js/jquery.flexisel.js"></script>
		</div>
	</div>
	<div class="modal video-modal fade" id="myModal6" tabindex="-1"
		role="dialog" aria-labelledby="myModal6">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<section>
					<div class="modal-body">
						<div class="col-md-5 modal_body_left">
							<img src="images/39.jpg" alt=" " class="img-responsive" />
						</div>
						<div class="col-md-7 modal_body_right">
							<h4>a good look women's Long Skirt</h4>
							<p>Ut enim ad minim veniam, quis nostrud exercitation ullamco
								laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure
								dolor in reprehenderit in voluptate velit esse cillum dolore eu
								fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
								proident, sunt in culpa qui officia deserunt mollit anim id est
								laborum.</p>
							<div class="rating">
								<div class="rating-left">
									<img src="images/star-.png" alt=" " class="img-responsive" />
								</div>
								<div class="rating-left">
									<img src="images/star-.png" alt=" " class="img-responsive" />
								</div>
								<div class="rating-left">
									<img src="images/star-.png" alt=" " class="img-responsive" />
								</div>
								<div class="rating-left">
									<img src="images/star.png" alt=" " class="img-responsive" />
								</div>
								<div class="rating-left">
									<img src="images/star.png" alt=" " class="img-responsive" />
								</div>
								<div class="clearfix"></div>
							</div>
							<div class="modal_body_right_cart simpleCart_shelfItem">
								<p>
									<span>$320</span> <i class="item_price">$250</i>
								</p>
								<p>
									<a class="item_add" href="#">Add to cart</a>
								</p>
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
						<div class="clearfix"></div>
					</div>
				</section>
			</div>
		</div>
	</div>
	<!-- //checkout -->
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
					<input type="submit" value="">
				</form>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<!-- //newsletter -->
	<!-- footer -->
	<%@include file="/WEB-INF/include/include-footer.jspf"%>
	<!-- //footer -->
</body>
</html>