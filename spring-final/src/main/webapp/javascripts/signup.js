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
    inputKeyUpReg.keyUpOnlyNumber(uBirthFront,uBirthFront.value);
});

/* birth_gender 입력 keyUp이벤트 */
uBirthGender.addEventListener("keyup", function () {
    inputKeyUpReg.keyUpOnlyNumber(uBirthGender,uBirthGender.value);
});

/* userId 비동기 아이디 중복 체크 */
uId.addEventListener("blur" , function(){
    sendRequest("경로" , "id="+id.value , idCheckFunc , "GET");
});

function idCheckFunc(){
    // 중복인지 아닌지 DOM Controller 코드 작성
}


/** 유효성할때 사용해야 함으로 아직 미완성*/

/* password 일치여부 확인 및 초기화 */
uPassword.addEventListener("blur", function(){
    uPasswordConfirm.value = '';
    let inputPassword = uPassword.value;
    if(!inputValidator.isSet(inputPassword)){
        console.log("password 데이터가 비어있는 비동기 처리");

    }else if(!inputValidator.isValidPassword(inputPassword)){
        console.log("password 규칙에 어긋난 처리");
    }else{

    }
});

uPasswordConfirm.addEventListener("blur" , function(){
    let inputPasswordConfirm = uPasswordConfirm.value;
    if(!inputValidator.isSet(inputPasswordConfirm)){
        console.log("password_Confirm 데이터가 비어있는 비동기 처리");
    }else if(!inputValidator.isValidPassword(inputPasswordConfirm)){
        console.log("password_Confirm 규칙에 어긋난 처리");
    }else if(!(uPassword.value == inputPasswordConfirm)){
        console.log("비밀번호가 일치하지 않는다.");
    }else{
        console.log("비밀번호 일치");
    }
});

