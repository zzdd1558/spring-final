<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id="container">
		<!-- 내용 -->
		<div class="content wide">
			<div class="productContent">
				<!-- 제품정보 -->
				<div class="pdt_detailWrap clearfix">
					<!-- 상품이미지 -->
					<div class="pdt_visualArea">
						<!-- 평가/공유 -->
						<div class="snsShareBox">
							<div class="left">
								<span class="gradeGroup middle"> <span
									class="grade rate5"></span> <span class="count">(68)</span>
								</span>
							</div>
							<div class="right">
								<span class="facebook"
									onclick="go_FaceBook('http://www.etudehouse.com/kr/ko/product.do?method=view&amp;prdCd=105009059'); _satellite.setVar('action_name','facebook'); _satellite.track('SNS_Share');"><em
									class="hdTxt">페이스북</em></span> <span class="twitter"
									onclick="go_Twitter('Wannabe Sweet? 순정 판텐소사이드™ 5 시카 밤 40ml','http://www.etudehouse.com/kr/ko/product.do?method=view&amp;prdCd=105009059'); _satellite.setVar('action_name','twitter'); _satellite.track('SNS_Share');"><em
									class="hdTxt">트위터</em></span> <span class="blog"
									onclick="fUrlClipCopy();"><em class="hdTxt">블로그</em></span>
							</div>
						</div>
						<!-- 비쥬얼  -->
						<div class="visualBox">
							<div
								class="big_img_slide slick-initialized slick-slider slick-dotted"
								role="toolbar">
								<div aria-live="polite" class="slick-list draggable"
									style="height: 500px;">
									<div class="slick-track" role="listbox"
										style="opacity: 1; width: 500px;">
										<div class="slide-item slick-slide slick-current slick-active"
											data-thumb="http://image.etude.co.kr//upload/prdimg/150_105009059_IM_01.png"
											data-slick-index="0" aria-hidden="false" tabindex="-1"
											role="option" aria-describedby="slick-slide00"
											style="width: 500px; position: relative; left: 0px; top: 0px; z-index: 9; opacity: 1;">
											<img
												src="http://image.etude.co.kr//upload/prdimg/105009059_IM_01.png"
												onerror="this.src='http://image.etude.co.kr//web_resource/front/images/common/noimage.png'"
												alt="순정 판텐소사이드™ 5 시카 밤 40ml">
										</div>
									</div>
								</div>
								<ul class="slick-dots" role="tablist">
									<li class="slick-active" aria-hidden="false"
										role="presentation" aria-selected="true"
										aria-controls="navigation00" id="slick-slide00"><a><img
											src="http://image.etude.co.kr//upload/prdimg/150_105009059_IM_01.png"
											onerror="this.src='http://image.etude.co.kr//web_resource/front/images/common/noimage.png'"></a></li>
								</ul>
							</div>
						</div>
						<!-- 사은품  -->
					</div>
					<!-- 상품정보 -->
					<div class="pdt_infoArea">
						<!-- 태그 -->
						<div class="tagBox">
							<span class="tag type2">베스트</span>
						</div>
						<!-- 타이틀 -->
						<div class="dtl_titleArea">
							<p class="dtl_promote" id="prePromote_105009059">레귤러사이즈</p>
							<p class="dtl_title">순정 판텐소사이드™ 5 시카 밤 40ml</p>
							<p class="dtl_promote2" id="endPromote_105009059"></p>
							<p class="dtl_titDesc">판텐소사이드5% 로 손상된 피부를 케어해주는 시카 밤</p>
						</div>
						<!-- 정보 -->
						<dl class="dtl_infoBox fir clearfix">
							<dt>상태</dt>
							<dd>
								판매중 <span class="button2" style="display: none;"><a
									href="#"
									onclick="requestSmsInfo('105009059', this); return false;"
									class="type7"><em>언제들어와?</em></a></span>
							</dd>
							<dt>판매가</dt>
							<dd>
								<strong>17,000</strong>원
							</dd>
						</dl>
						<dl class="dtl_infoBox sec clearfix">
							<dt>배송비</dt>
							<dd>10,000원 이상 주문시 무료배송</dd>
							<!-- 페이스>쿠션 카테고리 상품일때만 보임 -->
							<!-- //페이스>쿠션 카테고리 상품일때만 보임 -->
						</dl>
						<!-- 수량단일선택 -->
						<dl class="dtl_infoBox sec clearfix" style="border-top: 0px;">
							<dt class="num">수량선택</dt>
							<dd class="num">
								<div class="countBox small"
									style="border-color: rgb(204, 204, 204);">
									<button type="button" title="제품 수량 감소" class="count_down"
										onclick="fChgCnt(this, '-', true);">
										<img
											src="http://image.etude.co.kr//web_resource/front/images/common/ico_minus1.gif"
											alt="제품 수량 감소">
									</button>
									<input type="tel" title="선택품목갯수" value="1" maxlength="3"
										onkeydown="return onlyNumber(event);" class="count_view"
										onblur="fnCheckFormat(this);"
										onkeyup="fnCheckLimit(this, 100, '1상품당 100개까지만 구매가능한 상품입니다.');"
										selprc="17000" spsalprc="17000" tdfl="Y">
									<button type="button" title="제품 수량 증가" class="count_up"
										onclick="fChgCnt(this, '+', true);">
										<img
											src="http://image.etude.co.kr//web_resource/front/images/common/icon_plus1.gif"
											alt="제품 수량 증가">
									</button>
								</div>
							</dd>
						</dl>
						<input type="hidden" id="selected_option" value="110090135">
						<input type="hidden" id="selected_soldOut_option"
							value="110090135">


						<!-- 컬러칩+옵션선택 -->

						<!-- 옵션추가리스트 -->
						<div class="dtl_option_area">
							<ul class="option_list">
							</ul>
						</div>

						<!-- 가격 -->
						<div class="dtl_priceBox"></div>

						<!-- 가격 -->
						<div class="dtl_btnBxo">
							<span class="button1"> <a href="#"
								onclick="fnOnclickProductTrack('TakeOut', 'prd'); proInsertTodayCart(this); return false;"
								class="type3 large">테이크아웃</a>
							</span> <span class="button1"> <a href="#"
								onclick="fnOnclickProductTrack('Check Out Now', 'prd'); checkLoginUser(); return false;"
								class="type2 large">바로구매</a>
							</span> <span class="button1"> <a href="#"
								onclick="fnOnclickProductTrack('Add To Bag', 'prd'); cartEventCheck(); return false;"
								class="type1 large">장바구니</a>
							</span>
						</div>
					</div>
					<!-- //제품정보 -->
					<!-- 상세컨텐츠 -->
					<div class="tabType1 item4 js-tab pdt_detailTab">
						<ul>
							<li class="on"><a href="#pdt_tap_detail"
								onclick="fnpdt_detailTab(this);">제품상세</a><span class="line"></span></li>
							<li class=""><a href="#pdt_tap_민감 손상 케어"
								onclick="fnpdt_detailTab(this);">민감 손상 케어</a><span class="line"></span></li>
							<li class=""><a href="#pdt_tap_HOW TO USE"
								onclick="fnpdt_detailTab(this);">HOW TO USE</a><span
								class="line"></span></li>
							<li class=""><a href="#pdt_tap_Blind 품평단"
								onclick="fnpdt_detailTab(this);">Blind 품평단</a><span class="line"></span></li>
						</ul>
					</div>
					<!-- //상세컨텐츠 -->
				</div>
			</div>
			<!-- //내용 -->
		</div>
</body>
</html>