<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="/WEB-INF/include/include-header.jspf"%>

<style type="text/css">
.line-top {
	position: relative;
	display: block;
	padding: 10px 15px;
	margin-bottom: -1px;
	background-color: #fff;
	border-top: 1px solid #e5e5e5;
}

.list-items {
	position: relative;
	display: block;
	padding: 10px 15px;
	margin-bottom: -1px;
	background-color: #fff;
}

.line-bottom {
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

.btn-box {
	margin-top: 20px;
	height: 70px;
}

.btn-box button {
	height: inherit;
}

.prd-btn {
	width: 40%;
	background: #ee782f;
	color: #fff;
}

.favor-btn {
	width: 18%;
	background:
		url(http://www.oliveyoung.co.kr/pc-static-root/image/comm/ico_zzim.png)
		no-repeat 50% 50%;
	text-indent: -9999px;
}

.prd-options {
	margin-top: 10px;
	height: 50px;
}

.prd-options select {
	height: inherit;
	width: 90%;
	padding-top: 10px
}

.socialImg {
	cursor: pointer;
}
</style>
<script type="text/javascript">
		var a = JSON.parse('${listOfString}');	
	window.onload = function() {
		var result=`<option value="0" selected disabled /hidden >옵션을 선택하세요</option>`;
		for (var i = 0; i < a.length; i++) {
			result+=`<option value=`+(a[i].codeOfProd)+`>`+a[i].prodName+`</option>`;
		}
		document.getElementsByTagName('select')[1].innerHTML = result;
	}

	
	
	function changePrice(){
	    let prodBox = document.getElementById('prodBox');
	    let sum = 0;
	    let prodNodes = prodBox.getElementsByClassName('prd_cnt_box');
	    let prodPrice = document.getElementById('subPrice').value;

	    for (let i = 0; i< prodNodes.length; i++){
	        sum += Number(prodPrice) * Number(prodNodes[i].lastElementChild.firstElementChild.children[1].firstChild.innerHTML);
	    }

	    document.getElementById('prodTotalPrice').innerHTML = sum;
	}
	
</script>
</head>
<body>
	<!-- header -->
	<%@include file="/WEB-INF/include/include-bodyHeader.jspf"%>
	<!-- //header -->

	<!-- single -->
	<div class="single">
		<div class="container">
			<div class="prd-info col-md-6 single-left">
				<div class="rating1" style="width: 90%;">
					<span class="starRating"> <input id="rating5" type="radio"
						name="rating1" value="5" checked> <label for="rating5">5</label>
						<input id="rating4" type="radio" name="rating1" value="4">
						<label for="rating4">4</label> <input id="rating3" type="radio"
						name="rating1" value="3"> <label for="rating3">3</label> <input
						id="rating2" type="radio" name="rating1" value="2"> <label
						for="rating2">2</label> <input id="rating1" type="radio"
						name="rating1" value="1"> <label for="rating1">1</label>
					</span> <span style="float: right;"> <img class="socialImg"
						src="/final/images/social/facebook_icon_color.png" alt=""
						class="snsShare" onclick="socialShareType.shareURL('facebook')">
						<img class="socialImg" src="/final/images/social/kakaoStory.png"
						alt="" class="snsShare"
						onclick="socialShareType.shareURL('kakao')"> <img
						class="socialImg" src="/final/images/social/naver_icon_green.png"
						alt="" class="snsShare"
						onclick="socialShareType.shareURL('naver')"> <img
						class="socialImg" src="/final/images/social/twitter_icon.png"
						alt="" class="snsShare"
						onclick="socialShareType.shareURL('twitter')">
					</span>
				</div>
				<div class="flexslider" style="width: 90%;">
					<ul class="slides">
						<c:forEach items="${list}" var="a">
							<li
								data-thumb="/final/images/cosmetic/${mainType}/${prd.subTypeIdx}/${prd.prodIdx}/${a.imgDTO.pathOfImage}.png">
								<img
								src="/final/images/cosmetic/${mainType}/${prd.subTypeIdx}/${prd.prodIdx}/${a.imgDTO.pathOfImage}.png"
								class="img-responsive">
							</li>
						</c:forEach>
					</ul>
				</div>
				<!-- flixslider -->
				<script defer
					src="${pageContext.request.contextPath}/javascripts/jquery.flexslider.js"></script>
				<link rel="stylesheet"
					href="${pageContext.request.contextPath}/stylesheets/flexslider.css"
					type="text/css" media="screen" />
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
				<script
					src="${pageContext.request.contextPath}/javascripts/imagezoom.js"></script>
				<!-- //zooming-effect -->
			</div>
			<div class="col-md-6 single-right">
				<h3 id='prodTitle'>${prd.cosmName}</h3>
				<h5>${prd.prodIntroduce}</h5>
				<br>
				<ul>
					<li class="list-items">판매가 <span style="float: right;"><i>${price}</i>원</span></li>
					<li class="line-top">카드할인혜택 <span style="float: right;"><i>MemberShip
								카드 추가 10%</i></span></li>
					<li class="list-items">theBeauty 포인트 예상적립<span
						style="float: right;"><span>2%</span>적립 </span></li>
					<li class="line-top">배송비<span style="float: right;">
							무료배송 </span></li>
					<li class="line-bottom">배송기간<span style="float: right;">평균
							3일 이내 배송</span></li>
				</ul>
				<div class="prd-options">
					<a style="float: right;" href="javascript:onSelectOption()"
						class="btn btn-info btn-lg"><span
						class="glyphicon glyphicon-plus"></span></a> <select id="optionList"
						class="form-control" name="prdOption">
					</select>
				</div>
				<!-- 옵션이 없을 시에 활용 -->
				<div id="prodBox">
					<input type="hidden" name="prodIdx" id="prodIdx"
						value="${prd.prodIdx}"> <input type="hidden"
						name="subTypeIdx" id="subTypeIdx" value="${prd.subTypeIdx}">
					<input type="hidden" name="price" id="subPrice" value="${price}">

				</div>

				<!-- 							quantity -->
				<script>
							let alreadyItem = []; 
									/** plus 버튼 클릭시 발생할 이벤트 */
									function incrementProductValue(event){
									    let thisNode = event;
									    let childNode = thisNode.previousElementSibling.childNodes[0];
									    childNode.innerHTML = Number(childNode.innerHTML) + 1;
									    
									    changePrice();
									}
									
									/** minus 버튼 클릭시 발생할 이벤트 */
									function decrementProductValue(event){
									    let thisNode = event;
									    let childNode = thisNode.nextElementSibling.childNodes[0];
									    if(childNode.innerHTML <= 1){
									        if(confirm('해당 상품을 빼시겠습니까?')){
									        	event.parentElement.parentElement.parentElement.remove();	
									        }
									    	
									    }else{
									        childNode.innerHTML = Number(childNode.innerHTML) - 1;
									    }
									    changePrice();
									}
									
									
									var prdCodes=new Array();
									function onSelectOption() {
										var prdCode=$(".form-control option:selected").val();
										var prdName=$(".form-control option:selected").text();
									
										if(prdCode == '0' ){
											alert('옵션을 선택해주세요');
										}else{
											
											if(alreadyItem.includes(prdCode)){
												alert('상품이 이미 추가되었습니다.');
											}else{
												alreadyItem.push(prdCode);
												document.getElementById("prodBox").innerHTML+=
													`<div  class="prd_cnt_box">
													<input type="hidden" name="codeOfProd" value="`  + prdCode +  `">
													<span style="font-size:14px;">`+prdName+`</span>
												 <div class="cont_area"> 
													<div class="quantity-select">                           
														<div class="entry value-minus1" onclick='decrementProductValue(this);'>&nbsp;</div>
														<div class="entry value1"><span>1</span></div>
														<div class="entry value-plus1 active" onclick='incrementProductValue(this);'>&nbsp;</div>
													</div> 
												</div>
											</div>`;
											}
											
										}
										
										changePrice();
									}
									
									function purchase(){
										var b=document.getElementsByName('codeOfProd');
										b[0].value=prdCodes;
									}
							
 									</script>
				<!-- 								quantity -->

				<!-- 						<div class="clearfix"> </div> -->
				<!-- 					</div> -->

				<div class="prd_total_price">
					<span style="float: left; font-size: 21px; padding-top: 10px;">상품금액
						합계</span> <span style="float: right; font-size: 30px;"><span
						id='prodTotalPrice'>0</span>원</span>
				</div>

				<sec:authorize access="! isAuthenticated()">
					<div class="btn-box">
						<button class="prd-btn btn btn-default btn-lg"
							onclick='disabledAlert();'>장바구니</button>
						<button class="prd-btn btn btn-default btn-lg"
							onclick="disabledAlert();">구매하기</button>
						<button class="favor-btn btn btn-default btn-lg">찜하기</button>
					</div>

				</sec:authorize>
				<sec:authorize access="isAuthenticated()">
					<div class="btn-box">
						<button class="prd-btn btn btn-default btn-lg"
							onclick='addCartItem();'>장바구니</button>
						<button class="prd-btn btn btn-default btn-lg"
							onclick="buySubmit();">구매하기</button>
						<button class="favor-btn btn btn-default btn-lg">찜하기</button>
					</div>
				</sec:authorize>

				<script type="text/javascript">
				function buySubmit(){
					let check = addCartItem();
					
					if(check){
						location.href = httpRequest.getContextPath() + '/static/cartListView.jsp';	
					}
				}
				</script>
			</div>
		</div>
		<div class="clearfix"></div>
	</div>
	<div class="additional_info">
		<div class="container">
			<div class="sap_tabs">
				<div id="horizontalTab1"
					style="display: block; width: 100%; margin: 0px;">
					<ul>
						<li class="resp-tab-item" aria-controls="tab_item-0" role="tab"><span>Product
								Information</span></li>
						<li class="resp-tab-item" aria-controls="tab_item-1" role="tab"><span>Reviews</span></li>
					</ul>

					<!--=======================상품 상세 내용 출력=======================-->

					<div class="tab-1 resp-tab-content additional_info_grid"
						aria-labelledby="tab_item-0">
						<h3>Swan Miami Red Skirt</h3>
						<p>Duis aute irure dolor in reprehenderit in voluptate velit
							esse cillum dolore eu fugiat nulla pariatur. Excepteur sint
							occaecat cupidatat non proident. Nemo enim ipsam voluptatem quia
							voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur
							magni dolores eos qui ratione voluptatem sequi nesciunt.Ut enim
							ad minima veniam, quis nostrum exercitationem ullam corporis
							suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur?
							Quis autem vel eum iure reprehenderit qui in ea voluptate velit
							esse quam nihil molestiae consequatur, vel illum qui dolorem eum
							fugiat quo voluptas nulla pariatur.</p>
					</div>
					<!--=======================//상품 상세 내용 출력=======================-->


					<!--=======================Reiew 게시판 출력=======================-->
					<div class="tab-2 resp-tab-content additional_info_grid"
						aria-labelledby="tab_item-1">
						<div id="ReviewBoard"></div>

						<div class="review_grids">
							<h5>Add A Review</h5>
							<form
								action="${pageContext.request.contextPath}/board/BoardWrite.do"
								method="POST" id="board" name="board">
								<input id="boardSubject" name="boardSubject" type="hidden"
									value="NaN" /> <input id="boardFile" name="boardFile"
									type="hidden" value="boardFile" /> <input id="boardUserKey"
									name="boardUserKey" type="hidden"
									value="${sessionScope.user.userKey}" /> <span>${sessionScope.user.userName}</span>
								<span class="starRating" style="float: right"> <input
									id="ratingFive" type="radio" name="rating" value="5"> <label
									for="ratingFive">5</label> <input id="ratingFour" type="radio"
									name="rating" value="4"> <label for="ratingFour">4</label>
									<input id="ratingThr" type="radio" name="rating" value="3">
									<label for="ratingThr">3</label> <input id="ratingTwo"
									type="radio" name="rating" value="2"> <label
									for="ratingTwo">2</label> <input id="ratingOne" type="radio"
									name="rating" value="1"> <label for="ratingOne">1</label>
								</span>
								<sec:authorize access="isAuthenticated()">
									<textarea id="boardContent" name="boardContent"
										onfocus="this.value = '';"
										onblur="if (this.value == '') {this.value = 'Add Your Review';}"
										required="">Add Your Review</textarea>
									<input type="button" onclick="boardWrite(${prd.prodIdx})"
										value="Submit">
								</sec:authorize>
								<sec:authorize access="! isAuthenticated()">
									인증된 사용자만 댓글사용이 가능합니다.
								</sec:authorize>



							</form>
						</div>
					</div>
					<!--=======================//Reiew 게시판 출력=======================-->
				</div>
			</div>
			<script
				src="${pageContext.request.contextPath}/javascripts/easyResponsiveTabs.js"
				type="text/javascript"></script>
			<script type="text/javascript">	
			
			
			function boardWrite(prodIdx){
				var check = true;
				var boardSubject=document.getElementById('boardSubject').value;
				var boardUserKey=document.getElementById('boardUserKey').value;
				var boardContent=document.getElementById('boardContent').value;
				var boardFile=document.getElementById('boardFile').value;
				var UserprdScore = $(":input:radio[name=rating]:checked").val();
				
				if(UserPrdScore === undefined){
					alert("평점을 눌러주세요.");
					check = false;
				}
				
				if(check){
				httpRequest.sendRequest(httpRequest.getContextPath()+'/board/BoardWrite.do',
		'boardSubject='+boardSubject+'&boardUserKey='+boardUserKey+'&boardContent='+boardContent+'&boardFile='+boardFile+'&boardUseScore='+UserprdScore+'&boardCosmeticNum='+prodIdx,sensMsg,'POST',header,token);
				}
			}
			
			function sensMsg(){
					if(this.readyState == 4 && this.status == 200){
					var resData=this.responseText;
					 	alert(resData);
				    	document.getElementById("board").reset();
				    	document.getElementById('ReviewBoard').innerHTML="";
				    	httpRequest.sendRequest(httpRequest.getContextPath()+'/board/BoardListform.do','prodIdx=${prd.prodIdx}',boardForm,'GET');
					}
				
			}
			
			
			function list(page){
							document.getElementById('ReviewBoard').innerHTML="";
			    		   httpRequest.sendRequest(httpRequest.getContextPath()+'/board/BoardListform.do',"curPage="+page+'&prodIdx=${prd.prodIdx}',boardForm,'GET');
			    }
			
			$(document).ready(function () {
					
					httpRequest.sendRequest(httpRequest.getContextPath()+'/board/BoardListform.do',"prodIdx="+'${prd.prodIdx}',boardForm,'GET');
					
					$('#horizontalTab1').easyResponsiveTabs({
						type: 'default', //Types: default, vertical, accordion           
						width: 'auto', //auto or any width like 600px
						fit: true   // 100% fit in a container
					});
				});
			
			function boardForm(){
				  if (this.readyState == 4 && this.status == 200) {
					  var resData=this.responseText;
					  resData=JSON.parse(resData);
					  console.log(resData);
					  var userkey="";
					  var result="";
					  var userPrdScore;
	                  for(i=0;i<resData.list.length;i++){
	                	userkey="userKey"+resData.list[i].boardUserKey;
	                	userPrdScore=resData.list[i].boardUseScore;
	                	result+='<div class="additional_info_sub_grids">'+
	     				'<div class="col-xs-2 additional_info_sub_grid_left">'+
	     					'<img src="${pageContext.request.contextPath}/images/women.png" alt=" " class="img-circle" />'+
	     				'</div>'+
	     				'<div class="col-xs-10 additional_info_sub_grid_right">'+
	     					'<div class="additional_info_sub_grid_rightl">'+
	     						'<a href="single.html"> '+resData[userkey]+'</a>'+
	     						'<h5>'+resData.list[i].boardDate+'</h5>'+
	     						'<p>'+resData.list[i].boardContent+'</p>'+
	     					'</div>'+
	     				'</div>'+
						'<div class="additional_info_sub_grid_rightr">'+
						'<div class="rating">';
						for(j=0;j<userPrdScore;j++){							
							result+='<div class="rating-left">'+
								'<img src="${pageContext.request.contextPath}/images/test/star-.png" alt=" " class="img-responsive"></div>';
						    }
						for(j=0;j<(5-userPrdScore);j++){
							result+='<div class="rating-left">'+
								'<img src="${pageContext.request.contextPath}/images/test/star.png" alt=" " class="img-responsive"></div>';
								
						    }
						result+='</div>'+
								'</div>'+
									'<div class="clearfix"> </div>'+
								'</div>';
	     				'<div class="clearfix"> </div>'+
	     			'</div>';
	                  }
	                  result+='<table>';   
	                  result+='<tr>';
	                  result+='<td colspan="5">';
	                 if(resData.boardPager.curBlock > 1){
	                	 result+='<a href="javascript:list('+1+')">[처음]</a>';
	                 }
	                 if(resData.boardPager.curBlock > 1){
	                	 result+='<a href="javascript:list('+resData.boardPager.prevPage+')">[이전]</a>';
	                 }
					for(i=resData.boardPager.blockBegin;i<resData.boardPager.blockEnd;i++){
						if(i==resData.boardPager.curPage){
							result+='<span style="color: red">'+i+'</span>&nbsp;';
						}else{
							result+=' <a href="javascript:list('+i+')">'+i+'</a>&nbsp;';
						}
					}		
	               if(resData.boardPager.curBlock<=resData.boardPager.toBlock){
	            	   result+='<a href="javascript:list('+resData.boardPager.nextPage+')">[다음]</a>';
	               }
	               if(resData.boardPager.curBlock<=resData.boardPager.totPage){
	            	   result+='<a href="javascript:list('+resData.boardPager.totPage+')">[끝]</a>';
	               }			            	   
	               result+='</td></tr></table>';
	          document.getElementById("ReviewBoard").innerHTML+=result;
				    	
				  }
			}
				
				const kindsOfCosmetic = ['EYE', 'LIP', 'FACE', 'NAIL', 'SKIN', 'MASK', 'CLEAN', 'BODY', 'PERFUME', 'COSE_PROP'];


				function addCartItem() {
				    let prodForm = document.getElementById('prodBox');
				    let prodIdx = prodForm.children[0].value;
				    let prodTitle = document.getElementById('prodTitle').innerHTML;
				    let subTypeIdx = prodForm.children[1].value;
				    let price = prodForm.children[2].value;
				    let childProd = prodForm.getElementsByClassName('prd_cnt_box');
				    let list = JSON.parse(localStorage.getItem('cartList'));
					let check = true;
					
				    let option; 
				    
				    if(childProd.length <= 0){
				    	check = false;
				        alert('상품을 선택해주세요.');
				    }else{
				        if (list == null) {
				            localStorage.setItem('cartList', JSON.stringify({}));
				            list = JSON.parse(localStorage.getItem('cartList'));
				        }
				        
				        console.log(list[kindsOfCosmetic[Math.floor(Number(subTypeIdx) / 100) - 1] + '_' + subTypeIdx + '_' + prodIdx]);
				        if(list[kindsOfCosmetic[Math.floor(Number(subTypeIdx) / 100) - 1] + '_' + subTypeIdx + '_' + prodIdx] == null){
				        	option = {};
				        }else{
				        	option = list[kindsOfCosmetic[Math.floor(Number(subTypeIdx) / 100) - 1] + '_' + subTypeIdx + '_' + prodIdx].option;
				        }
				        

				        for (let i = 0; i < childProd.length; i++) {
				            option[kindsOfCosmetic[Math.floor(Number(subTypeIdx) / 100) - 1] + '_' + childProd[i].children[0].value] = {
				                name: childProd[i].children[1].innerHTML,
				                quantity: childProd[i].children[2].children[0].children[1].firstChild.innerHTML,
				            };
				        }
				        localStorage.setItem('cartList', JSON.stringify(product(subTypeIdx, prodIdx, price, option, list,prodTitle)));
				        alert('상품을 담았습니다.');
				    }
				    
				    changeCartView();
				    
				    return check;
				}

				/** subTypeIdx, prodIdx , 가격 , 옵션별 object 수.*/
				function product(...args) {
				    let list = args[4];

				    list[kindsOfCosmetic[Math.floor(Number(args[0]) / 100) - 1] + '_' + args[0] + '_' + args[1]] = {
				        price: args[2],
				        option: args[3],
				        prodTitle : args[5],
				        image: Math.floor(Number(args[0]) / 100) + '/' + args[0] + '/' + args[1] + '/' + args[0] + '_' + args[1]
				    };

				    return list;
				}

			</script>
		</div>
	</div>
	<!-- //single -->





	<!-- footer -->
	<%@include file="/WEB-INF/include/include-footer.jspf"%>
	<!-- //footer -->
</body>
</html>