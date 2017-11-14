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
let uAddress = document.getElementById('u_address');
let uBirthFront = document.getElementById('u_birth_front');
let uBirthGender = document.getElementById('u_birth_gender');
let uQuestion = document.getElementById('u_question');
let uForm = document.getElementById('joinForm');
let formSubmit = document.getElementById('submit');
let formReset = document.getElementById('reset');
let idCheck = false;

/* spring-security에서 CSRF를 사용할 경우 header와 token 필요 */
let token = document.getElementById('_csrf').getAttribute('content');
let header = document.getElementById('_csrf_header').getAttribute('content');


formSubmit.addEventListener('click', function () {

    if (!idCheck) {
        let brother = uId.nextElementSibling;
        brother.innerHTML = '사용할수 없는 ID입니다.';
        brother.style.color = 'red';
    }


    /*uForm.setAttribute('method', 'POST');
    uForm.setAttribute('action', httpRequest.getContextPath() + '/auth/userJoin.do');*/
    
    return false;
    /*console.log(grecaptcha.getResponse())*/
});

/* 취소 버튼 */
formReset.addEventListener('click', function () {
    if (confirm("회원가입을 취소 하시겠습니까?")) {
        history.back();
    }
});


/* userId 비동기 아이디 중복 체크 */
uId.addEventListener("blur", function () {
	if(inputValidator.isValidId(uId.value)){
		httpRequest.sendRequest(httpRequest.getContextPath()+'/ajax/validateUserId.do' , "id="+uId.value , idCheckFunc , "POST" , header, token);
	}else{
		checkContentFunc(uId, 'ID 양식을 확인해주세요', 'red');
		idCheck = false;
	}
	
});

function idCheckFunc() {
    if (httpRequest.httpRequest.readyState == 4 && httpRequest.httpRequest.status == 200) {
        let resData = httpRequest.httpRequest.responseText;
        
        if(resData == 1){
        	checkContentFunc(uId,'중복된 ID입니다.','red');
        	idCheck = false;
        	
        }else{
        	checkContentFunc(uId, '사용가능한  ID입니다.', 'green');
        	idCheck = true;
        }
    }
}

function getQuestion(){
	httpRequest.sendRequest(httpRequest.getContextPath()+'/ajax/question.do' , null , setQuestionList , "GET" );
}

function setQuestionList(){
	  if (httpRequest.httpRequest.readyState == 4 && httpRequest.httpRequest.status == 200) {
	        let resData = httpRequest.httpRequest.responseText;
	        resData = JSON.parse(resData);
	        let result = `<option value='0' selected disabled>질문을 선택하세요.</option>`;
	        for (let i = 0; i< resData.length; i++){
	            result += `<option value=${resData[i].questionKey}>${resData[i].questionContent}</option>`;
            }
	        uQuestion.innerHTML = result;
	    }
}


function checkContentFunc(object , msg , color){
	let brother = object.nextElementSibling;
	brother.innerHTML = msg;
	brother.style.color = color;
	
}

/* id 입력 keyUp이벤트 */
uId.addEventListener("keyup", function () {
    inputKeyUpReg.keyUpId(uId.value);
});

/* password 입력 keyUp이벤트 */
uPassword.addEventListener("keyup", function () {
    inputKeyUpReg.keyUpPassword(uPassword.value, uPassword);
});

/* password_Confirm 입력 keyUp이벤트 */
uPasswordConfirm.addEventListener("keyup", function () {
    inputKeyUpReg.keyUpPassword(uPasswordConfirm.value, uPasswordConfirm);
});

/* email 입력 keyUp이벤트 */
uEmail.addEventListener("keyup", function () {
    inputKeyUpReg.keyUpEmail(uEmail.value);
});

/* phone_number 입력 keyUp이벤트 */
uPhoneNumber.addEventListener("keyup", function () {
    inputKeyUpReg.keyUpOnlyNumber(uPhoneNumber, uPhoneNumber.value);
});
/* birth_front 입력 keyUp이벤트 */
uBirthFront.addEventListener("keyup", function () {
    inputKeyUpReg.keyUpOnlyNumber(uBirthFront, uBirthFront.value);
});

/* birth_gender 입력 keyUp이벤트 */
uBirthGender.addEventListener("keyup", function () {
    inputKeyUpReg.keyUpOnlyNumber(uBirthGender, uBirthGender.value);
});


/** 유효성할때 사용해야 함으로 아직 미완성*/

/* password 일치여부 확인 및 초기화 */
uPassword.addEventListener("blur", function () {
    uPasswordConfirm.value = '';
    let inputPassword = uPassword.value;
    if (!inputValidator.isSet(inputPassword)) {
        console.log("password 데이터가 비어있는 비동기 처리");

    } else if (!inputValidator.isValidPassword(inputPassword)) {
        console.log("password 규칙에 어긋난 처리");
    } else {

    }
});

uPasswordConfirm.addEventListener("blur", function () {
    let inputPasswordConfirm = uPasswordConfirm.value;
    if (!inputValidator.isSet(inputPasswordConfirm)) {
        console.log("password_Confirm 데이터가 비어있는 비동기 처리");
    } else if (!inputValidator.isValidPassword(inputPasswordConfirm)) {
        console.log("password_Confirm 규칙에 어긋난 처리");
    } else if (!(uPassword.value == inputPasswordConfirm)) {
        console.log("비밀번호가 일치하지 않는다.");
    } else {
        console.log("비밀번호 일치");
    }
});

getQuestion();