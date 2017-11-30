<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="/WEB-INF/include/include-header.jspf"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style>
.prodSize {
	margin: 0.5em;
	padding: 0.5em;
}

#orderForm label {
	margin: 1em 0;
}

input, select, textarea {
	width: 100%;
	height: 40px;
	/* line-height: 38px; */
	font-size: 14px;
	border: 1px solid #ccc;
}

input[type='text'], input[type='password'], input[type='tel'], input[type='date'],
	select, textarea {
	padding: 0 5px 0 10px;
	color: #333;
}

input:hover {
	border: 1px solid #333;
}

input[type="button"] {
	outline: none;
	border: none;
	background: #ec70988c;
	padding: 10px 0;
	color: #fff;
	width: 100%;
	font-size: 1em;
	text-transform: uppercase;
	margin: 1em 0 0;
}

input[type="button"]:hover {
	background: #ff9b05;
}

input[type='text'], input[type='password'], input[type='tel'], input[type='date'],
	select, textarea {
	margin-bottom: 1em;
}

textarea {
	height: auto;
	overflow-x: hidden;
}
</style>


<script>
function sendForm() {
    let formBoolean = true;

    let fromUserName = document.getElementById('fromUserName');
    let fromUserPhone = document.getElementById('fromUserPhone');
    let fromUser_address_part = document.getElementById('fromUser_address_part');
    let fromUser_address_detail = document.getElementById('fromUser_address_detail');
    let formComment = document.getElementById('formComment');
    let sendForm = document.getElementById('orderForm');
    if (!inputValidator.isSet(fromUserName.value)) {
    	alert("받는분의 성함을 입력해주세요.");
    	fromUserName.focus();
        formBoolean = false;
    } else if (!inputValidator.isSet(fromUserPhone.value)) {
    	alert("받는분의 휴대폰번호를 입력해주세요");
    	fromUserPhone.focus();
        formBoolean = false;
    } else if (!inputValidator.isSet(fromUser_address_part.value)) {
    	alert("주소를 입력해주세요");
    	fromUser_address_part.focus();
        formBoolean = false;
    } else if (!inputValidator.isSet(fromUser_address_detail.value)) {
    	alert("주소를 입력해주세요");
    	fromUser_address_detail.focus();
        formBoolean = false;
    } else if (!inputValidator.isSet(formComment.value)) {
    	alert("메세지를 남겨주세요. ");
    	formComment.focus();
        formBoolean = false;
    }


    if(formBoolean){
        sendForm.setAttribute('action' , httpRequest.getContextPath()+'/order/prodOrder.do');
        sendForm.setAttribute('method' , "POST");
        alert('상품이 구매되었습니다. 메인페이지로 이동합니다.');
        localStorage.removeItem("cartList");
        sendForm.submit();
    }

}

	function changeReqMsg() {
		let msg = document.getElementById('requestMsg').value;
		document.getElementById('formComment').innerHTML = msg;
	}

	function deleteItems(event) {
		var tag = event.parentElement.parentElement.parentElement;
		var firstNodes = tag.firstChild;
		var nodes = firstNodes.children;
		if (confirm('해당 상품을 삭제하시겠습니까?')) {
			tag.remove();
			alert('해당 상품이 삭제되었습니다.')

			var removeJsonData = JSON.parse(localStorage.getItem('cartList'));
			delete removeJsonData[nodes[0].value].option[nodes[1].value];

			localStorage.setItem('cartList', JSON.stringify(removeJsonData));

			changeCartView();
			createCartList();
		} else {
			alert('취소되었습니다.');
		}

	}

	function createCartList() {
		var items = JSON.parse(localStorage.getItem('cartList'));
		var sum = 0;
		let result = '<label style="width: 100%; border-bottom: 1px solid black; padding-bottom: 1em;">최종 금액</label>';
		for (key in items) {
			for (subKey in items[key].option) {
				sum += Number(items[key].price)
						* Number(items[key].option[subKey].quantity);
				result += '<div class="col-sm-12 prodSize" style="border: 1px solid #d2b8b82e;">';
				result += '<div class="col-sm-4">';
				result += '<input type="hidden" name = "key" value="' + key  + '"/>';
				result += '<input type="hidden" name = "subKey" value="' + subKey  + '"/>';
				result += '<input type="hidden" name = "quantity" value="' + items[key].option[subKey].quantity  + '"/>';

				result += '<img src="' + httpRequest.getContextPath()
						+ '/images/cosmetic/' + items[key].image
						+ '.png" style="max-width: 100%;">';
				result += '</div>';
				result += '<div class="col-sm-8">';
				result += '<div class="col-sm-10">' + items[key].prodTitle
						+ '</div>';
				result += '<div class="col-sm-2">';
				result += '<button type="button" onclick="deleteItems(this);" class="close" aria-label="Close"><span aria-hidden="true">&times;</span></button>';
				result += '</div>';
				result += '<div class="col-sm-12">옵션 : '
						+ items[key].option[subKey].name + '</div>';
				result += '	<div class="col-sm-12 text-right">';
				result += '<span> X </span> <span> '
						+ items[key].option[subKey].quantity + '</span>';
				result += '</div>';
				result += '</div>';
				result += '</div>';
			}
		}
		result += '<div class="col-sm-12 text-right" style="border-top: 1px solid black; margin: 1em 0; padding: 1em 0;"> <span style="color: #ff9b05;  font-size: 1.5em;">총 금액 : '
				+ sum + '&nbsp;원</span>  </div></div>';
		result += '<input type="hidden" name = "orderTotalPrice" value="'+ sum +'"  />'
		document.getElementById('bill').innerHTML = result;
	}
</script>
</head>
<body>
	<!-- header -->
	<%@include file="/WEB-INF/include/include-bodyHeader.jspf"%>
	<!-- //header -->


	<!-- main Form -->
	<div class="container">

		<div class="modal-body modal-body-sub">
			<form id='orderForm'>
				<input type="hidden" name="${_csrf.parameterName}"
					value="${_csrf.token}">
				<div class="col-md-5 modal_body_left modal_body_left1"
					style="border-right: 1px dotted #C2C2C2; padding-right: 3em;">

					<div class='col-sm-12' id='bill'></div>


				</div>

				<div class="col-md-7 modal_body_right modal_body_right1">
					<input type='hidden' name='userKey'
						value='${sessionScope.user.userKey}'> <label
						for="orderUser"
						style='width: 100%; border-bottom: 1px solid black; padding-bottom: 1em;'>주문
						하시는분</label>
					<div class="form-group">
						<div class='col-sm-5'>
							<input type='text' id='sendUserName' placeholder='보내는 사람'
								readonly value="${sessionScope.user.userName}" />
						</div>
						<div class='col-sm-7'>
							<input type="text" name="c" id="sendUserPhone" readonly
								placeholder="휴대폰번호 단,하이픈(-) 제외한 숫자만입력가능" maxlength="11"
								required="" value="${sessionScope.user.userPhone}" />
						</div>
					</div>

					<label for='fromUser'
						style='width: 100%; border-bottom: 1px solid black; padding-bottom: 1em; margin-top: 2em;'>받으시는분</label>

					<div class="form-group">
						<div class='col-sm-5'>
							<input type='text' id='fromUserName' name='resName'
								placeholder='받는 사람' />
						</div>
						<div class='col-sm-7'>
							<input type="text" name="resPhone" id="fromUserPhone"
								placeholder="휴대폰번호 단,하이픈(-) 제외한 숫자만입력가능" maxlength="11"
								required="" />
						</div>
					</div>

					<div class='col-sm-12'>
						<input type="text" name="fromUser_address_zip_no"
							id="fromUser_address_zip_no" placeholder="우편번호 5자리"
							readonly="readonly" class="inputMarginTop" required="">
					</div>
					<div class='col-sm-12'>
						<input type="text" name="partAddr" id="fromUser_address_part"
							class="subAddr inputMarginTop" placeholder="도로명 주소"
							readonly="readonly" required="">
					</div>
					<div class='col-sm-12 '>
						<input type="text" name="detailAddr" id="fromUser_address_detail"
							class="inputMarginTop" placeholder="상세 주소 " required="">
					</div>
					<div class='col-sm-12'>
						<input type="button" id="addressBtn" class="inputMarginTop"
							onclick="addressPopup();" value="우편번호 조회">
					</div>
					<div class="form-group">
						<label for="comment">배송시 요청사항</label>
						<div class='col-sm-12'>
							<select id='requestMsg' onchange='changeReqMsg();'>
								<option disabled="disabled" selected readonly>요청사항 선택</option>
								<option>부재 시 경비실에 맡겨주세요</option>
								<option>빠른 배송 부탁드립니다.</option>
								<option>부재 시 핸드폰으로 연락바랍니다.</option>
								<option>배송 전 연락 바랍니다.</option>
							</select>
							<textarea rows="5" id="formComment" name="orderRequest"></textarea>
						</div>

					</div>
					<div class="form-group">
						<div class='col-sm-6'>
							<input type="button" onclick="sendForm();" class="" value="주문하기">
						</div>
						<div class='col-sm-6'>
							<input type="button" id="" class="" value="취소하기">
						</div>
					</div>

				</div>
			</form>
		</div>
	</div>


	<!-- footer -->
	<%@include file="/WEB-INF/include/include-footer.jspf"%>
	<!-- //footer -->
	<script>
		createCartList();
	</script>
</body>
</html>