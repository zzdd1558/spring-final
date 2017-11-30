/**
 * Created by yunjin on 2017-11-06.
 */

/*  회원가입 관련 변수 초기화 */
let uId = document.getElementById('u_id');
let uPassword = document.getElementById('u_password');
let uPasswordConfirm = document.getElementById('u_password_confirm');
let uName = document.getElementById('u_name');
let uPhoneNumber = document.getElementById('u_phone_number');
let uEmail = document.getElementById('u_email');
let uQuestion = document.getElementById('u_question');
let pwQuestion = document.getElementById('findPasswordUserQuestion');
let uAnswer = document.getElementById('u_answer');
let uAddressZipNo = document.getElementById('u_address_zip_no');
let uAddressPart = document.getElementById('u_address_part');
let uAddressDetail = document.getElementById('u_address_detail');
let uBirthFront = document.getElementById('u_birth_front');
let uBirthGender = document.getElementById('u_birth_gender');
let uForm = document.getElementById('joinForm');
let formSubmit = document.getElementById('submitBtn');
let googleReCaptcha = document.getElementById('googleReCaptcha');
let idCheck = false;

/* spring-security에서 CSRF를 사용할 경우 header와 token 필요 */
let token = document.getElementById('_csrf').getAttribute('content');
let header = document.getElementById('_csrf_header').getAttribute('content');

/* 관리자 데이터 정보 수정 관련 변수 초기화*/

let pCount = document.getElementById('prodCount');
let pPrice = document.getElementById('prodPrice');
let pColor = document.getElementById('prodColor');
let pName = document.getElementById('prodName');

const checkColor = {
    green: 'green',
};
/* 메세지 관련 */
const checkMsg = {
    /* 이름 관련 */
    emptyName: '이름을 입력해주세요.',

    /* 아이디 관련 */
    validId: ' 숫자 ,대·소문자 또는 특수문자( - , _ )가 포함된 6 ~ 20자의 아이디만 사용가능합니다. ',
    possibleId: ' 멋진 아이디에요! ',
    impossibleId: ' 사용 불가능한 아이디입니다. ',
    overlapId: ' 중복된 ID입니다. ',

    /* 비밀번호 관련 */
    emptyPassword: ' 비밀번호를 입력해주세요. ',
    validPassword: ' 숫자 ,대·소문자 , 특수문자를 포함한 8~16자리의 비밀번호만 사용가능합니다. ',
    possiblePassword: '사용 가능한 비밀번호 입니다 ',
    notMatchPassword: ' 비밀번호가 일치하지 않습니다. ',
    matchPassword: ' 비밀번호가 일치합니다 ',

    /* 휴대폰 관련*/
    emptyPhoneNumber: ' 휴대폰번호를 입력해주세요 . ',
    impossiblePhoneNumber: ' 사용 불가능한 휴대폰번호 입니다. ',
    possiblePhoneNumber: ' 사용 가능한 휴대폰번호 입니다. ',

    /* 주민번호 관련*/
    impossibleJumin: ' 빈칸이 있거나 사용불가능한 주민등록번호입니다. ',

    /* 질문과 답 관련*/
    emptyAnswer: ' 답변이 비어있거나 공백이 있으면 안됩니다. ',
    selectQuestion: ' 질문을 선택해주세요. ',

    /* 이메일 관련*/
    emptyEmail: '이메일이 비어있습니다. 다시 확인해주세요. ',
    validEmail: ' 정확한 이메일 형식이 아닙니다 . 다시 확인해주세요. ',

    /* 우편번호 관련 */
    searchAddress: ' 우편번호를 검색을 이용해주세요 . ',

    /* 구글 리캡차 관련*/
    checkReCaptcha: ' 로봇 확인 체크를 해주세요 . ',
    
    /* 관리자 관련*/
    emptyMessage : ' 빈칸이 있으면 안됩니다. ',
};


/* form 전송전 유효성 체크 */
formSubmit.addEventListener('click', function () {
    let formBoolean = true;
    /* ID 공백 체크 */
    if (!inputValidator.isSet(uName.value)) {
        checkContentFunc(uName, checkMsg.emptyName);
        formBoolean = false;
    }

    /* 아이디 유효성 체크 */
    if (!inputValidator.isValidId(uId.value)) {
        checkContentFunc(uId, checkMsg.validId);
        formBoolean = false;
    } else if (!idCheck) {
        checkContentFunc(uId, checkMsg.impossibleId);
        formBoolean = false;
    }
    
    /* 비밀번호 공백 체크 */
    if (!inputValidator.isSet(uPassword.value)) {
        checkContentFunc(uPassword, checkMsg.emptyPassword);
        formBoolean = false;
    }
    /* 비밀번호 유효성 체크 */
    else if (!inputValidator.isValidPassword(uPassword.value)) {
        checkContentFunc(uPassword, checkMsg.validPassword);
        formBoolean = false;
    }
    
    /* 비밀번호 확인 공백 체크 */
    if (!inputValidator.isSet(uPasswordConfirm.value)) {
        checkContentFunc(uPasswordConfirm, checkMsg.emptyPassword);
        formBoolean = false;
    }
    /* 비밀번호 확인 유효성 체크 */
    else if (!inputValidator.isValidPassword(uPasswordConfirm.value)) {
        checkContentFunc(uPasswordConfirm, checkMsg.validPassword);
        formBoolean = false;
    }
    
    /* 비밀번호 일치 여부 체크 */
    else if (!inputValidator.isValidPasswordSame(uPassword , uPasswordConfirm)){
        checkContentFunc(uPasswordConfirm, checkMsg.notMatchPassword);
        formBoolean = false;
    }
    
    /* 주민번호 공백 체크 및 유효성 체크*/
    if (!inputValidator.isSet(uBirthFront.value) || uBirthFront.value.length != 6 || !inputValidator.isSet(uBirthGender.value) || uBirthGender.value.length != 1) {
        checkContentFunc(document.getElementById('writeBirth'), checkMsg.impossibleJumin);
        formBoolean = false;
    }
    
    /* 휴대폰번호 공백 체크 */
    if (!inputValidator.isSet(uPhoneNumber.value)) {
        checkContentFunc(uPhoneNumber, checkMsg.emptyPhoneNumber);
        formBoolean = false;
    } 
    
    /* 휴대폰번호 유효성 체크 */
    else if (!inputValidator.isValidPhone(uPhoneNumber.value)) {
        checkContentFunc(uPhoneNumber, checkMsg.impossiblePhoneNumber);
        formBoolean = false;
    }

    /* 질문 공백 체크 */
    if (!inputValidator.isSet(uQuestion.value)) {
        checkContentFunc(uAnswer, checkMsg.selectQuestion);
        formBoolean = false;
    }
    
    /* 답변 공백 체크 */
    else if (!inputValidator.isSet(uAnswer.value.trim())) {
        checkContentFunc(uAnswer, checkMsg.emptyAnswer);
        formBoolean = false;
    }

    /* 이메일 공백 체크 */
    if (!inputValidator.isSet(uEmail.value)) {
        checkContentFunc(uEmail, checkMsg.emptyEmail);
        formBoolean = false;
    }
    
    /* 이메일 공백 체크 */
    else if (!inputValidator.isValidEmail(uEmail.value)) {
        checkContentFunc(uEmail, checkMsg.validEmail);
        formBoolean = false;
    }

    /*  우편주소 공백 체크  */
    if (!inputValidator.isSet(uAddressZipNo.value) || !inputValidator.isSet(uAddressDetail.value) || !inputValidator.isSet(uAddressPart.value)) {
        checkContentFunc(uAddressDetail, checkMsg.searchAddress);
        formBoolean = false;
        
    }else{
    	document.getElementById('userAddr').value = `${uAddressPart.value} ${uAddressDetail.value}`;
    }

    /* 구글 리캡챠 체크유무 */
    if(!inputValidator.isSet(grecaptcha.getResponse())){
        checkContentFunc(googleReCaptcha , checkMsg.checkReCaptcha)
        formBoolean = false;
    }
    
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
    	uForm.setAttribute('method', 'POST');
        uForm.setAttribute('action', httpRequest.getContextPath() + '/auth/userJoin.do');
        uForm.submit();
    }
});

googleReCaptcha.addEventListener('click' , function(){
	focusResetValue(googleReCaptcha);
});




/* Ajax를 사용한 ID중복체크 callback Function */
function idCheckFunc() {
    if (httpRequest.httpRequest.readyState == 4 && httpRequest.httpRequest.status == 200) {
        if (httpRequest.httpRequest.responseText == 1) {
            checkContentFunc(uId, checkMsg.overlapId);
            idCheck = false;
        } else {
            checkContentFunc(uId, checkMsg.possibleId, checkColor.green);
            idCheck = true;
        }
    }
}

/* Form에서 사용하여 사용가능불가능할 경우 span 태그에 보여줄 함수 */
function checkContentFunc(object, msg, color = 'red') {
    let brother = object.nextElementSibling;
    brother.innerHTML = msg;
    brother.style.color = color == '' ? 'red' : color;
}


/* 회원가입 접근시 사용할 비동기 실행 함수 */
function getQuestion() {
    httpRequest.sendRequest(httpRequest.getContextPath() + '/ajax/question.do', null, setQuestionList, 'GET');
}

/* 회원가입 접근시 불러올 Question데이터 Ajax callback Function*/
function setQuestionList() {
    if (httpRequest.httpRequest.readyState == 4 && httpRequest.httpRequest.status == 200) {
        let resData = JSON.parse(httpRequest.httpRequest.responseText);
        let result = `<option value='0' selected disabled>질문을 선택하세요.</option>`;
        for (let i = 0; i < resData.length; i++) {
            result += `<option value=${resData[i].questionKey}>${resData[i].questionContent}</option>`;
        }
        uQuestion.innerHTML = result;
        pwQuestion.innerHTML = result;
    }
}


/* id 입력 keyUp이벤트 */
uId.addEventListener('keyup', function () {
    inputKeyUpReg.keyUpId(uId.value);
});

/* password 입력 keyUp이벤트 */
uPassword.addEventListener('keyup', function () {
    inputKeyUpReg.keyUpPassword(uPassword.value, uPassword);
});

/* password_Confirm 입력 keyUp이벤트 */
uPasswordConfirm.addEventListener('keyup', function () {
    inputKeyUpReg.keyUpPassword(uPasswordConfirm.value, uPasswordConfirm);
});

/* email 입력 keyUp이벤트 */
uEmail.addEventListener('keyup', function () {
    inputKeyUpReg.keyUpEmail(uEmail.value);
});

/* phone_number 입력 keyUp이벤트 */
uPhoneNumber.addEventListener('keyup', function () {
    inputKeyUpReg.keyUpOnlyNumber(uPhoneNumber, uPhoneNumber.value);
});
/* birth_front 입력 keyUp이벤트 */
uBirthFront.addEventListener('keyup', function () {
    inputKeyUpReg.keyUpOnlyNumber(uBirthFront, uBirthFront.value);
});

/* birth_gender 입력 keyUp이벤트 */
uBirthGender.addEventListener('keyup', function () {
    inputKeyUpReg.keyUpOnlyNumber(uBirthGender, uBirthGender.value);
});

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
uName.addEventListener('focus', function () {
    focusResetValue(uName);
});

uId.addEventListener('focus', function () {
    focusResetValue(uId);
});

uPassword.addEventListener('focus', function () {
    focusResetValue(uPassword);
});

uPasswordConfirm.addEventListener('focus', function () {
    focusResetValue(uPasswordConfirm);
});

uPhoneNumber.addEventListener('focus', function () {
    focusResetValue(uPhoneNumber);
});

uBirthFront.addEventListener('focus', function () {
    focusResetValue(document.getElementById('writeBirth'));
});

uBirthGender.addEventListener('focus', function () {
    focusResetValue(document.getElementById('writeBirth'));
});

uAnswer.addEventListener('focus', function () {
    focusResetValue(uAnswer);
});

uEmail.addEventListener('focus', function () {
    focusResetValue(uEmail);
});

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


/* blur event */
uName.addEventListener('blur', function () {
    if (inputValidator.isSet(uName.value)) {
        uName.nextElementSibling.innerHTML = '';
    } else {
        checkContentFunc(uName, checkMsg.emptyName);
    }
});
/* userId 비동기 아이디 중복 체크 */
uId.addEventListener('blur', function () {
    if (inputValidator.isValidId(uId.value)) {
        httpRequest.sendRequest(httpRequest.getContextPath() + '/ajax/validateUserId.do', 'id=' + uId.value, idCheckFunc, 'GET', header, token);
    } else {
        checkContentFunc(uId, checkMsg.validId);
        idCheck = false;
    }
});

/* password 일치여부 확인 및 초기화 */
uPassword.addEventListener('blur', function () {
    uPasswordConfirm.value = '';
    let inputPassword = uPassword.value;
    let msg = '';
    let color = '';
    if (!inputValidator.isSet(inputPassword)) {
        msg = checkMsg.emptyPassword;
    } else if (!inputValidator.isValidPassword(inputPassword)) {
        msg = checkMsg.validPassword;
    } else {
        msg = checkMsg.possiblePassword;
        color = checkColor.green;
    }
    checkContentFunc(uPassword, msg, color);
});

/* 비밀번호 확인에 대한 1차 유효성 검사 부분 */
uPasswordConfirm.addEventListener('blur', function () {
    let inputPasswordConfirm = uPasswordConfirm.value;
    let msg = '';
    let color = '';
    if (!inputValidator.isSet(inputPasswordConfirm)) {
        msg = checkMsg.emptyPassword;
    } else if (!inputValidator.isValidPassword(inputPasswordConfirm)) {
        msg = checkMsg.validPassword;
    } else if (!(uPassword.value == inputPasswordConfirm)) {
        msg = checkMsg.notMatchPassword;
        uPassword.focus();
    } else {
        msg = checkMsg.matchPassword;
        color = checkColor.green;
    }
    checkContentFunc(uPasswordConfirm, msg, color);
});

/* 휴대폰번호 1차 유효성 검사 */
uPhoneNumber.addEventListener('blur', function () {
    !inputValidator.isSet(uPhoneNumber.value) ? checkContentFunc(uPhoneNumber, checkMsg.emptyPhoneNumber) :
        !inputValidator.isValidPhone(uPhoneNumber.value) ?
            checkContentFunc(uPhoneNumber, checkMsg.impossiblePhoneNumber) :
            checkContentFunc(uPhoneNumber, checkMsg.possiblePhoneNumber, checkColor.green);
});


/* 회원가입 로딩과 동시에 질문 데이터 Ajax로 가져오기*/
getQuestion();




