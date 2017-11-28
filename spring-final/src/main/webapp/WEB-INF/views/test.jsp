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
.socialImg{
	cursor: pointer;
}

</style>
<script type="text/javascript">
		var a = JSON.parse('${listOfString}');	
		console.log(a);
	window.onload = function() {
		var result=`<option value="" selected disabled /hidden >옵션을 선택하세요</option>`;
		for (var i = 0; i < a.length; i++) {
			result+=`<option value=`+(i+1)+`>`+a[i].prodName+`</option>`;
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
				<div class="rating1" style="width:90%;">
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
					<span style="float:right;">
						<img class="socialImg" src="/final/images/social/facebook_icon_color.png" alt="" class="snsShare" onclick="socialShareType.shareURL('facebook')">
						<img class="socialImg" src="/final/images/social/kakaoStory.png" alt="" class="snsShare" onclick="socialShareType.shareURL('kakao')">				
						<img class="socialImg" src="/final/images/social/naver_icon_green.png" alt="" class="snsShare" onclick="socialShareType.shareURL('naver')">				
						<img class="socialImg"  src="/final/images/social/twitter_icon.png" alt="" class="snsShare" onclick="socialShareType.shareURL('twitter')">
					</span>
				</div>
				
				<div class="flexslider" style="width:90%;">
					<ul class="slides">
					<c:forEach items="${list}" var="a"> 	
						<li data-thumb="/final/images/cosmetic/${mainType}/${prd.subTypeIdx}/${prd.prodIdx}/${a.imgDTO.pathOfImage}.png">
							<img src="/final/images/cosmetic/${mainType}/${prd.subTypeIdx}/${prd.prodIdx}/${a.imgDTO.pathOfImage}.png" class="img-responsive">
						</li>
					</c:forEach>	
					</ul>
				</div>
				<!-- flixslider -->
					<script defer src="${pageContext.request.contextPath}/javascripts/jquery.flexslider.js"></script>
					<link rel="stylesheet" href="${pageContext.request.contextPath}/stylesheets/flexslider.css" type="text/css" media="screen" />
					<script>
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
			<h3>${prd.cosmName}</h3>
			<h5>${prd.prodIntroduce}</h5><br>
				<ul>
						<li class="list-items">판매가 <span style="float:right;"><i>${price}</i>원</span></li>
						<li class="line-top">카드할인혜택	<span style="float:right;"><i>The CJ카드 추가 10%</i></span></li >
						<li class="list-items">CJ ONE 포인트 예상적립<span style="float:right;"><span >2%</span>적립 </span></li>
						<li class="line-top">배송비<span style="float:right;">	무료배송 </span></li>
						<li class="line-bottom">배송기간<span style="float:right;">평균 3일 이내 배송</span></li>
				</ul>
				
				<div class="prd-options">
					<a style="float:right;"href="javascript:onSelectOption()" class="btn btn-info btn-lg"><span class="glyphicon glyphicon-plus"></span></a>
					<select id="optionList"class="form-control" name="prdOption">
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
																					
										document.getElementById("demobox").innerHTML+='<div  class="prd_cnt_box">
											<span style="font-size:14px;">'+prdName+'</span>
										 <div class="cont_area"> 
											<div class="quantity-select">                           
												<div class="entry value-minus1">&nbsp;</div>
												<div class="entry value1"><span>1</span></div>
												<div class="entry value-plus1 active">&nbsp;</div>
											</div> 
										</div>
									</div>';
									
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
					<span style="float:right;font-size: 30px;"><span>${price}</span>원</span>
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
					
				<!--=======================상품 상세 내용 출력=======================-->		
					
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
				<!--=======================//상품 상세 내용 출력=======================-->	
				
					
				<!--=======================Reiew 게시판 출력=======================-->
					<div class="tab-2 resp-tab-content additional_info_grid" aria-labelledby="tab_item-1" id="ReviewBoard"></div>
				<!--=======================//Reiew 게시판 출력=======================-->	 			        					            	      
				</div>	
			</div>
			<script src="${pageContext.request.contextPath}/javascripts/easyResponsiveTabs.js" type="text/javascript"></script>
			<script type="text/javascript">
				$(document).ready(function () {
					
					httpRequest.sendRequest(httpRequest.getContextPath()+'/board/BoardListform.do',"",boardForm,'GET');
					function boardForm(){
						  if (this.readyState == 4 && this.status == 200) {
							  var resData=this.responseText;
						    	console.log(resData);
						    	document.getElementById("ReviewBoard").innerHTML+=resData;
						    	
						  }
					}
					
					
					$('#horizontalTab1').easyResponsiveTabs({
						type: 'default', //Types: default, vertical, accordion           
						width: 'auto', //auto or any width like 600px
						fit: true   // 100% fit in a container
					});
				});
				
			</script>
		</div>
	</div>
<!-- //single -->





					<!-- footer -->
					<%@include file="/WEB-INF/include/include-footer.jspf" %>
					<!-- //footer -->
</body>
</html>