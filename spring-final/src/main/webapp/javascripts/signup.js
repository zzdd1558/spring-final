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
let uSelectYear = document.getElementById('u_selectYear');
let uSelectMonth = document.getElementById('u_selectMonth');
let uSelectDate = document.getElementById('u_selectDate');


/* 현재 년도 - this.maxYear 한만큼 select option 생성. */
function setYear() {
    let result = "";
    let checkSelect = "";
    for (let i = dateFormat.getCurrentYear(); i > dateFormat.getCurrentYear() - dateFormat.getMaxYear(); i--) {

        // 처음 기본 값을 현재 년도로 지정
        if (i === dateFormat.getCurrentYear()) {
            checkSelect = "selected='selected'";
        }

        // select > option 추가.
        result += `<option ${checkSelect} value=${i}>${i}년</option>`;
        checkSelect = '';
    }
    uSelectYear.innerHTML = result;
}

/* select option 에 1~12까지 세팅 */
function setMonth() {
    let ii;
    let checkSelect = "";
    let result = ``;

    for (let i = 1; i <= 12; i++) {
        if (i === dateFormat.getCurrentMonth()) {
            console.log(i);
            checkSelect = "selected='selected'";
        }
        if (i < 10) {
            ii = "0" + i;
        } else {
            ii = i;
        }
        result += `<option ${checkSelect} value=${ii}>${i}월</option>`;
        checkSelect = '';
    }
    uSelectMonth.innerHTML = result;
}

/*
 month가 바뀔때마다 select option 갱신.
 매개변수 month가 없을경우 this.month로 대체.
 */
function setDays(year = dateFormat.getCurrentYear(), month = dateFormat.getCurrentMonth()) {
    console.log(` year : ${year}    ,     month : ${month}`);
    let days = dateFormat.getFullDays(year, month);
    console.log(days);
    let ii;
    let checkSelect = '';
    let result = ``;
    for (let i = 1; i <= days; i++) {

        if (i === dateFormat.getCurrentDate()) {
            checkSelect = "selected='selected'";
        }
        if (i < 10) {
            ii = "0" + i;
        } else {
            ii = i;
        }
        result += `<option ${checkSelect} value=${ii}>${i}일</option>`;
        checkSelect = '';
    }

    uSelectDate.innerHTML = result;
}

/* 월 selectBox에 change Event가 발생할 경우 일수 변경 (2월 윤년에 다른 요일 때문) */
uSelectMonth.addEventListener("change", function () {
    let changeYear = uSelectYear.options[uSelectYear.selectedIndex].value;
    let changeMonth = uSelectMonth.options[uSelectMonth.selectedIndex].value;
    if (changeMonth.charAt(0) == '0') {
        changeMonth = changeMonth.charAt(1);
    }
    uSelectDate.innerHTML = "";
    setDays(Number(changeYear), Number(changeMonth));
});

/* 년 selectBox에 change Event가 발생할 경우 일수 변경 (2월 윤년에 다른 요일 때문) */
uSelectYear.addEventListener('change', function () {
    let changeYear = uSelectYear.options[uSelectYear.selectedIndex].value;
    let changeMonth = uSelectMonth.options[uSelectMonth.selectedIndex].value;
    uSelectDate.innerHTML = "";
    setDays(Number(changeYear), Number(changeMonth));
});

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
    inputKeyUpReg.keyUpPhone(uPhoneNumber.value);
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



setYear();
setMonth();
setDays();