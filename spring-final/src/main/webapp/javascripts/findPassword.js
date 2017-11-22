/**
 *  2017-11-22
 *  작성자 : 최윤진
 *  비밀번호 찾기.jsp 관련 js파일
 */

/* 비밀번호 찾기와 관련된 id를 변수 선언 및 초기화*/
let findPasswordForm = document.getElementById('findPasswordForm');
let findPasswordName = document.getElementById('findPasswordName');
let findPasswordId = document.getElementById('findPasswordId');
let findPasswordEmail = document.getElementById('findPasswordEmail');
let findPasswordUserQuestion = document.getElementById('findPasswordUserQuestion');
let findPasswordUserAnswer = document.getElementById('findPasswordUserAnswer');
let findPasswordBtn = document.getElementById('findPasswordBtn');
let findPasswordReset = document.getElementById('findPasswordReset');

const findPasswordMsg = {
    /* 이름 관련 */
    emptyName: " 이름을 입력해주세요. ",

    /* 아이디 관련 */
    emptyId: " 아이디를 입력해주세요. ",

    /* 이메일 관련*/
    emptyEmail: " 이메일을 입력해주세요. ",
    validEmail: ' 정확한 이메일 형식이 아닙니다 . 다시 확인해주세요. ',

    /* 질문 관련*/
    emptyQuestion: " 질문을 선택해주세요. ",

    /* 답안 관련 */
    emptyAnswer: " 답변을 입력해주세요. "

}
findPasswordBtn.addEventListener('click', function () {
    let formBoolean = true;

    if (!inputValidator.isSet(findPasswordName.value)) {
        checkContentFunc(findPasswordName, findPasswordMsg.emptyName);
        formBoolean = false;
    }

    if (!inputValidator.isSet(findPasswordId.value)) {
        checkContentFunc(findPasswordId, findPasswordMsg.emptyId);
        formBoolean = false;
    }

    if (!inputValidator.isSet(findPasswordEmail.value)) {
        checkContentFunc(findPasswordEmail, findPasswordMsg.emptyEmail);
        formBoolean = false;
    }else if (!inputValidator.isValidEmail(findPasswordEmail.value)) {
        checkContentFunc(findPasswordEmail, findPasswordMsg.validEmail);
        formBoolean = false;
    }

    if (!inputValidator.isSet(Number(findPasswordUserQuestion.value))) {
        checkContentFunc(findPasswordUserQuestion, findPasswordMsg.emptyQuestion);
        formBoolean = false;
    }

    if (!inputValidator.isSet(findPasswordUserAnswer.value)) {
        checkContentFunc(findPasswordUserAnswer, findPasswordMsg.emptyAnswer);
        formBoolean = false;
    }

    if(formBoolean){
        findPasswordForm.setAttribute('method', 'POST');
        findPasswordForm.setAttribute('action', httpRequest.getContextPath() + '/auth/userPasswordSearch.do');
        findPasswordForm.submit();
    }
});

findPasswordName.addEventListener('focus', function () {
    focusResetValue(findPasswordName);
});

findPasswordId.addEventListener('focus', function () {
    focusResetValue(findPasswordId);
});

findPasswordEmail.addEventListener('focus', function () {
    focusResetValue(findPasswordEmail);
});

findPasswordUserQuestion.addEventListener('focus', function () {
    focusResetValue(findPasswordUserQuestion);
});

findPasswordUserAnswer.addEventListener('focus', function () {
    focusResetValue(findPasswordUserAnswer);
});

findPasswordReset.addEventListener('click' , function(){
    if(confirm("취소하고 처음으로 돌아가시겠습니까?")){
        location.href = httpRequest.getContextPath();
    }

});