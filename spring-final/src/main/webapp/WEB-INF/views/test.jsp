<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
	<%@include file="/WEB-INF/include/include-header.jspf" %>

<style type="text/css">

.line-top{
    position: relative;
    display: block;
    padding: 10px 15px;
    margin-bottom: -1px;
    background-color: #fff;
    border-top: 1px solid #e5e5e5;
}

.list-items{
    position: relative;
    display: block;
    padding: 10px 15px;
    margin-bottom: -1px;
    background-color: #fff;
}
.line-bottom{
 	position: relative;
    display: block;
    padding: 10px 15px;
    margin-bottom: -1px;
    background-color: #fff;
    border-bottom: 1px solid #e5e5e5;
}
.prd_cnt_box {
    position: relative;
    margin: 10px 0 0;
    min-height: 60px;
    padding: 20px;
    border: 1px solid #e9e9e9;
    background: #f9f9f9;
}
.prd_cnt_box .cont_area {
    position: absolute;
    bottom: 9px;
    right: 22px;
    max-width: 50%;
}
.prd_total_price {
    overflow: hidden;
    height: 60px;
    margin: 10px 0 0;
    padding: 18px 0 0;
    border-bottom: 2px solid #ee782f;
    color: #ff8942;
    font-weight: 700;
}
.btn-box{
	margin-top:20px;
	height:70px;
}
.btn-box button{
	height:inherit;
}
.prd-btn{
	width: 40%;
	background: #ee782f;
	color: #fff;
}
.favor-btn{
	width: 18%;
	background: url(http://www.oliveyoung.co.kr/pc-static-root/image/comm/ico_zzim.png) no-repeat 50% 50%;
    text-indent: -9999px;
}
.prd-options{
	margin-top:10px;
	height:50px;
}
.prd-options select{
	height:inherit;
	width:90%;
	padding-top: 10px
}

</style>
<script type="text/javascript">
		var a = JSON.parse('${listOfString}');	
	window.onload = function() {
		var result=`<option value="" selected disabled /hidden >옵션을 선택하세요</option>`;
		for (var i = 0; i < a.length; i++) {
			result+=`<option value=`+a[i].codeOfProd+`>`+a[i].prodName+`</option>`;
		}
		document.getElementsByTagName('select')[1].innerHTML = result;
	}
</script>
</head>
<body>
					<!-- header -->
					<%@include file="/WEB-INF/include/include-bodyHeader.jspf" %>	
						<!-- //header -->

<!-- single -->
	<div class="single">
		<div class="container">
			<div class="prd-info col-md-6 single-left">
							<div class="rating1">
					<span class="starRating">
						<input id="rating5" type="radio" name="rating" value="5"checked>
						<label for="rating5">5</label>
						<input id="rating4" type="radio" name="rating" value="4">
						<label for="rating4">4</label>
						<input id="rating3" type="radio" name="rating" value="3" >
						<label for="rating3">3</label>
						<input id="rating2" type="radio" name="rating" value="2">
						<label for="rating2">2</label>
						<input id="rating1" type="radio" name="rating" value="1">
						<label for="rating1">1</label>
					</span>
				</div>
				<div class="flexslider" style="width:90%;">
					<ul class="slides">
<%-- 						<li data-thumb="${pageContext.request.contextPath}/images/test/a.jpg"> --%>
						<li data-thumb="http://image.etude.co.kr//upload/sapimg/20171114141135575.png">
							<div class="thumb-image"> 
<%-- 							<img src="${pageContext.request.contextPath}/images/test/a.jpg" data-imagezoom="true" class="img-responsive"> </div> --%>
							<img src="http://image.etude.co.kr//upload/sapimg/20171114141135575.png" data-imagezoom="true" class="img-responsive"> </div>
						</li>
<%-- 						<li data-thumb="${pageContext.request.contextPath}/images/test/b.jpg"> --%>
						<li data-thumb="http://image.etude.co.kr//upload/sapimg/20171114141146334.png">
							 <div class="thumb-image"> 
<%-- 							 <img src="${pageContext.request.contextPath}/images/test/b.jpg" data-imagezoom="true" class="img-responsive"> </div> --%>
							 <img src="http://image.etude.co.kr//upload/sapimg/20171114141146334.png" data-imagezoom="true" class="img-responsive"> </div>
						</li>
<%-- 						<li data-thumb="${pageContext.request.contextPath}/images/test/c.jpg"> --%>
						<li data-thumb="http://image.etude.co.kr//upload/sapimg/20171114143819141.png">
						   <div class="thumb-image"> 
<%-- 						   <img src="${pageContext.request.contextPath}/images/test/c.jpg" data-imagezoom="true" class="img-responsive"> </div> --%>
						   <img src="http://image.etude.co.kr//upload/sapimg/20171114143819141.png" data-imagezoom="true" class="img-responsive"> </div>
						</li> 
					</ul>
				</div>
				<!-- flixslider -->
					<script defer src="${pageContext.request.contextPath}/javascripts/jquery.flexslider.js"></script>
					<link rel="stylesheet" href="${pageContext.request.contextPath}/stylesheets/flexslider.css" type="text/css" media="screen" />
					<script>
					// Can also be used with $(document).ready()
					$(window).load(function() {
					  $('.flexslider').flexslider({
						animation: "slide",
						controlNav: "thumbnails"
					  });
					});
					</script>
				<!-- flixslider -->
				<!-- zooming-effect -->
					<script src="${pageContext.request.contextPath}/javascripts/imagezoom.js"></script>
				<!-- //zooming-effect -->
			</div>
			<div class="col-md-6 single-right">
			<h3>온라인전용 1주차 섀도우컬러 20%SALE(11.16~22)</h3>
			<h5>룩 앳 마이 아이즈 NEW소녀 감성 아이섀도우</h5><br>
				<ul>
						<li class="list-items">판매가 <span style="float:right;"><i>${price}</i>원</span></li>
						<li class="line-top">카드할인혜택	<span style="float:right;"><i>The CJ카드 추가 10%</i></span></li >
						<li class="list-items">CJ ONE 포인트 예상적립<span style="float:right;"><span >2%</span>적립 </span></li>
						<li class="line-top">배송비<span style="float:right;">	무료배송 </span></li>
						<li class="line-bottom">배송기간<span style="float:right;">평균 3일 이내 배송</span></li>
				</ul>
				
				<div class="prd-options">
					<a style="float:right;"href="javascript:onSelectOption()" class="btn btn-info btn-lg"><span class="glyphicon glyphicon-plus"></span></a>
					<select class="form-control" name="prdOption">
					</select>
				</div>								
<!-- 옵션이 없을 시에 활용 -->
				<form id="demobox" name="prdOrder" action="test1.do">
				<input type="hidden" name="prodIdx" value="${prd.prodIdx}">
				<input type="hidden" name="subTypeIdx" value="${prd.subTypeIdx}">
				<input type="hidden" name="codeOfProd" value="">
				</form>
				
<!-- 							quantity -->
									<script>
									var prdCodes=new Array();
									function onSelectOption() {
										var prdCode=$(".form-control option:selected").val();
										var prdName=$(".form-control option:selected").text();
																					
										document.getElementById("demobox").innerHTML+=
											`<div  class="prd_cnt_box">
											<span style="font-size:14px;">`+prdName+`</span>
										 <div class="cont_area"> 
											<div class="quantity-select">                           
												<div class="entry value-minus1">&nbsp;</div>
												<div class="entry value1"><span>1</span></div>
												<div class="entry value-plus1 active">&nbsp;</div>
											</div>
										</div>
									</div>`;
									
									}
									
									function purchase(){
										var b=document.getElementsByName('codeOfProd');
										b[0].value=prdCodes;
									}
									
									$('.value-plus1').on('click', function(){
										var divUpd = $(this).parent().find('.value1'), newVal = parseInt(divUpd.text(), 10)+1;
										divUpd.text(newVal);
									});

									$('.value-minus1').on('click', function(){
										var divUpd = $(this).parent().find('.value1'), newVal = parseInt(divUpd.text(), 10)-1;
										if(newVal>=1) divUpd.text(newVal);
									});
 									</script>
<!-- 								quantity -->

<!-- 						<div class="clearfix"> </div> -->
<!-- 					</div> -->
					
					<div class="prd_total_price">
					<span style="float:left;font-size: 21px;padding-top: 10px;">상품금액 합계</span>
					<span style="float:right;font-size: 30px;"><span>28,000</span>원</span>
				</div>
				
				<div class="btn-box">
					<button class="prd-btn btn btn-default btn-lg">장바구니</button>
					<button class="prd-btn btn btn-default btn-lg" onclick="purchase();document.getElementById('demobox').submit();">구매하기</button>
					<button class="favor-btn btn btn-default btn-lg">찜하기</button>
				</div>
				<script type="text/javascript">
				function purchase(){
					var b=document.getElementsByName('codeOfProd');
					b[0].value=prdCodes;
					console.log(b[0]);
					document.getElementById("demobox").onsubmit;
				}
				</script>
			</div>
		</div>
			<div class="clearfix"> </div>
	</div>
	<div class="additional_info">
		<div class="container">
			<div class="sap_tabs">	
				<div id="horizontalTab1" style="display: block; width: 100%; margin: 0px;">
					<ul>
						<li class="resp-tab-item" aria-controls="tab_item-0" role="tab"><span>Product Information</span></li>
						<li class="resp-tab-item" aria-controls="tab_item-1" role="tab"><span>Reviews</span></li>
					</ul>		
					<div class="tab-1 resp-tab-content additional_info_grid" aria-labelledby="tab_item-0">
						<h3>Swan Miami Red Skirt</h3>
						<p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore 
							eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident.
							Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut 
							odit aut fugit, sed quia consequuntur magni dolores eos qui 
							ratione voluptatem sequi nesciunt.Ut enim ad minima veniam, quis nostrum 
							exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea 
							commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate 
							velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat 
							quo voluptas nulla pariatur.</p>
					</div>	

					<div class="tab-2 resp-tab-content additional_info_grid" aria-labelledby="tab_item-1">
						<h4>(2) Reviews</h4>
						<div class="additional_info_sub_grids">
							<div class="col-xs-2 additional_info_sub_grid_left">
								<img src="${pageContext.request.contextPath}/images/test/1.png" alt=" " class="img-responsive" />
							</div>
							<div class="col-xs-10 additional_info_sub_grid_right">
								<div class="additional_info_sub_grid_rightl">
									<a href="single.html">Laura</a>
									<h5>April 03, 2016.</h5>
									<p>Quis autem vel eum iure reprehenderit qui in ea voluptate 
										velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat 
										quo voluptas nulla pariatur.</p>
								</div>
								<div class="additional_info_sub_grid_rightr">
									<div class="rating">
										<div class="rating-left">
											<img src="${pageContext.request.contextPath}/images/test/star-.png" alt=" " class="img-responsive">
										</div>
										<div class="rating-left">
											<img src="${pageContext.request.contextPath}/images/test/star-.png" alt=" " class="img-responsive">
										</div>
										<div class="rating-left">
											<img src="${pageContext.request.contextPath}/images/test/star-.png" alt=" " class="img-responsive">
										</div>
										<div class="rating-left">
											<img src="${pageContext.request.contextPath}/images/test/star.png" alt=" " class="img-responsive">
										</div>
										<div class="rating-left">
											<img src="${pageContext.request.contextPath}/images/test/star.png" alt=" " class="img-responsive">
										</div>
										<div class="clearfix"> </div>
									</div>
								</div>
								<div class="clearfix"> </div>
							</div>
							<div class="clearfix"> </div>
						</div>
						<div class="additional_info_sub_grids">
							<div class="col-xs-2 additional_info_sub_grid_left">
								<img src="${pageContext.request.contextPath}/images/test/2.png" alt=" " class="img-responsive" />
							</div>
							<div class="col-xs-10 additional_info_sub_grid_right">
								<div class="additional_info_sub_grid_rightl">
									<a href="single.html">Michael</a>
									<h5>April 04, 2016.</h5>
									<p>Quis autem vel eum iure reprehenderit qui in ea voluptate 
										velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat 
										quo voluptas nulla pariatur.</p>
								</div>
								<div class="additional_info_sub_grid_rightr">
									<div class="rating">
										<div class="rating-left">
											<img src="${pageContext.request.contextPath}/images/test/star-.png" alt=" " class="img-responsive">
										</div>
										<div class="rating-left">
											<img src="${pageContext.request.contextPath}/images/test/star-.png" alt=" " class="img-responsive">
										</div>
										<div class="rating-left">
											<img src="${pageContext.request.contextPath}/images/test/star.png" alt=" " class="img-responsive">
										</div>
										<div class="rating-left">
											<img src="${pageContext.request.contextPath}/images/test/star.png" alt=" " class="img-responsive">
										</div>
										<div class="rating-left">
											<img src="${pageContext.request.contextPath}/images/test/star.png" alt=" " class="img-responsive">
										</div>
										<div class="clearfix"> </div>
									</div>
								</div>
								<div class="clearfix"> </div>
							</div>
							<div class="clearfix"> </div>
						</div>
						<div class="review_grids">
							<h5>Add A Review</h5>
							<form action="#" method="post">
								<input type="text" name="Name" value="Name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Name';}" required="">
								<input type="email" name="Email" value="Email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email';}" required="">
								<input type="text" name="Telephone" value="Telephone" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Telephone';}" required="">
								<textarea name="Review" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Add Your Review';}" required="">Add Your Review</textarea>
								<input type="submit" value="Submit" >
							</form>
						</div>
					</div> 			        					            	      
				</div>	
			</div>
			<script src="${pageContext.request.contextPath}/javascripts/easyResponsiveTabs.js" type="text/javascript"></script>
			<script type="text/javascript">
				$(document).ready(function () {
					$('#horizontalTab1').easyResponsiveTabs({
						type: 'default', //Types: default, vertical, accordion           
						width: 'auto', //auto or any width like 600px
						fit: true   // 100% fit in a container
					});
				});
			</script>
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
								<img src="${pageContext.request.contextPath}/images/test/ss1.jpg" alt=" " class="img-responsive">
								<img src="${pageContext.request.contextPath}/images/test/ss2.jpg" alt=" " class="img-responsive">
								<img src="${pageContext.request.contextPath}/images/test/ss3.jpg" alt=" " class="img-responsive">
								<img src="${pageContext.request.contextPath}/images/test/ss4.jpg" alt=" " class="img-responsive">
								<img src="${pageContext.request.contextPath}/images/test/ss5.jpg" alt=" " class="img-responsive">
								<img src="${pageContext.request.contextPath}/images/test/ss6.jpg" alt=" " class="img-responsive">
								<img src="${pageContext.request.contextPath}/images/test/ss7.jpg" alt=" " class="img-responsive">
								<img src="${pageContext.request.contextPath}/images/test/ss8.jpg" alt=" " class="img-responsive">
								<div class="w3_hs_bottom">
									<div class="flex_ecommerce">
										<a href="#" data-toggle="modal" data-target="#myModal6"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
									</div>
								</div>
							</div>
							<h5><a href="single.html">Pink Flared Skirt</a></h5>
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
								<img src="${pageContext.request.contextPath}/images/test/ss2.jpg" alt=" " class="img-responsive">
								<img src="${pageContext.request.contextPath}/images/test/ss3.jpg" alt=" " class="img-responsive">
								<img src="${pageContext.request.contextPath}/images/test/ss4.jpg" alt=" " class="img-responsive">
								<img src="${pageContext.request.contextPath}/images/test/ss5.jpg" alt=" " class="img-responsive">
								<img src="${pageContext.request.contextPath}/images/test/ss6.jpg" alt=" " class="img-responsive">
								<img src="${pageContext.request.contextPath}/images/test/ss9.jpg" alt=" " class="img-responsive">
								<img src="${pageContext.request.contextPath}/images/test/ss7.jpg" alt=" " class="img-responsive">
								<img src="${pageContext.request.contextPath}/images/test/ss8.jpg" alt=" " class="img-responsive">
								<div class="w3_hs_bottom">
									<div class="flex_ecommerce">
										<a href="#" data-toggle="modal" data-target="#myModal6"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
									</div>
								</div>
							</div>
							<h5><a href="single.html">Red Pencil Skirt</a></h5>
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
								<img src="${pageContext.request.contextPath}/images/test/ss3.jpg" alt=" " class="img-responsive">
								<img src="${pageContext.request.contextPath}/images/test/ss4.jpg" alt=" " class="img-responsive">
								<img src="${pageContext.request.contextPath}/images/test/ss5.jpg" alt=" " class="img-responsive">
								<img src="${pageContext.request.contextPath}/images/test/ss6.jpg" alt=" " class="img-responsive">
								<img src="${pageContext.request.contextPath}/images/test/ss7.jpg" alt=" " class="img-responsive">
								<img src="${pageContext.request.contextPath}/images/test/ss8.jpg" alt=" " class="img-responsive">
								<img src="${pageContext.request.contextPath}/images/test/ss9.jpg" alt=" " class="img-responsive">
								<img src="${pageContext.request.contextPath}/images/test/ss1.jpg" alt=" " class="img-responsive">
								<div class="w3_hs_bottom">
									<div class="flex_ecommerce">
										<a href="#" data-toggle="modal" data-target="#myModal6"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
									</div>
								</div>
							</div>
							<h5><a href="single.html">Yellow Cotton Skirt</a></h5>
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
								<img src="${pageContext.request.contextPath}/images/test/ss4.jpg" alt=" " class="img-responsive">
								<img src="${pageContext.request.contextPath}/images/test/ss5.jpg" alt=" " class="img-responsive">
								<img src="${pageContext.request.contextPath}/images/test/ss6.jpg" alt=" " class="img-responsive">
								<img src="${pageContext.request.contextPath}/images/test/ss7.jpg" alt=" " class="img-responsive">
								<img src="${pageContext.request.contextPath}/images/test/ss8.jpg" alt=" " class="img-responsive">
								<img src="${pageContext.request.contextPath}/images/test/ss9.jpg" alt=" " class="img-responsive">
								<img src="${pageContext.request.contextPath}/images/test/ss1.jpg" alt=" " class="img-responsive">
								<img src="${pageContext.request.contextPath}/images/test/ss2.jpg" alt=" " class="img-responsive">
								<div class="w3_hs_bottom">
									<div class="flex_ecommerce">
										<a href="#" data-toggle="modal" data-target="#myModal6"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
									</div>
								</div>
							</div>
							<h5><a href="single.html">Black Short</a></h5>
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
	<div class="modal video-modal fade" id="myModal6" tabindex="-1" role="dialog" aria-labelledby="myModal6">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
				</div>
				<section>
					<div class="modal-body">
						<div class="col-md-5 modal_body_left">
							<img src="${pageContext.request.contextPath}/images/test/39.jpg" alt=" " class="img-responsive" />
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
									<img src="${pageContext.request.contextPath}/images/test/star-.png" alt=" " class="img-responsive" />
								</div>
								<div class="rating-left">
									<img src="${pageContext.request.contextPath}/images/test/star-.png" alt=" " class="img-responsive" />
								</div>
								<div class="rating-left">
									<img src="${pageContext.request.contextPath}/images/test/star-.png" alt=" " class="img-responsive" />
								</div>
								<div class="rating-left">
									<img src="${pageContext.request.contextPath}/images/test/star.png" alt=" " class="img-responsive" />
								</div>
								<div class="rating-left">
									<img src="${pageContext.request.contextPath}/images/test/star.png" alt=" " class="img-responsive" />
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
<!-- //single -->





					<!-- footer -->
					<%@include file="/WEB-INF/include/include-footer.jspf" %>
					<!-- //footer -->
</body>
</html>