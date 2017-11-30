/**
 * 
 */

/* 관리자 데이터 정보 수정 관련 변수 초기화*/

let pCode = document.getElementById("codeOfProd");
let pCount = document.getElementById('prodCount');
let pPrice = document.getElementById('prodPrice');
let pColor = document.getElementById('prodColor');
let pName = document.getElementById('prodName');

const checkColor = {
	    green: 'green',
	};
	/* 메세지 관련 */
	const checkMsg = {
/* 관리자 관련*/
emptyMessage : ' 빈칸이 있으면 안됩니다. ',

	};

function update() {
    let formBoolean = true;
    
    /* 상품수량 공백 체크 */
    if (!inputValidator.isSet(pCount.value)) {
        checkContentFunc(pCount, checkMsg.emptyMessage);
        formBoolean = false;
    }
    /* 상품가격 공백 체크 */
    if (!inputValidator.isSet(pPrice.value)) {
    	checkContentFunc(pPrice, checkMsg.emptyMessage);
    	formBoolean = false;
    }
    /* 상품컬러 공백 체크 */
    if (!inputValidator.isSet(pColor.value)) {
    	checkContentFunc(pColor, checkMsg.emptyMessage);
    	formBoolean = false;
    }
    /* 상품이름 공백 체크 */
    if (!inputValidator.isSet(pName.value)) {
    	checkContentFunc(pName, checkMsg.emptyMessage);
    	formBoolean = false;
    }
    
    if(formBoolean){
    	uForm.setAttribute('method', 'GET');
        uForm.setAttribute('action', httpRequest.getContextPath() + '/admin/productUpdateAndDelete.do');
        uForm.submit();
    }
};

/* 상품 수량 정보 입력 keyUp이벤트 */
pCount.addEventListener('keyup', function () {
    inputKeyUpReg.keyUpOnlyNumber(pCount, pCount.value);
});

/* 상품 가격 정보 입력 keyUp이벤트 */
pPrice.addEventListener('keyup', function () {
	inputKeyUpReg.keyUpOnlyNumber(pPrice, pPrice.value);
});

/* 상품 컬러 정보 입력 keyUp이벤트 */
pColor.addEventListener('keyup', function () {
	inputKeyUpReg.keyUpId(pColor, pColor.value);
});

/* 상품 이름 정보 입력 keyUp이벤트 */
pName.addEventListener('keyup', function () {
	inputKeyUpReg.keyUpId(pName, pName.value);
});

function focusResetValue(object) {
    object.nextElementSibling.innerHTML = '';
}

pCount.addEventListener('focus', function () {
    focusResetValue(pCount);
});

pPrice.addEventListener('focus', function () {
	focusResetValue(pPrice);
});

pColor.addEventListener('focus', function () {
	focusResetValue(pColor);
});

pName.addEventListener('focus', function () {
	focusResetValue(pName);
});