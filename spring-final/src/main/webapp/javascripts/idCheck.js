/**
 * ID를 찾기 위한 기능들
 */

let findUserName = document.getElementById('IdFindUserName');
let findUserEmail = document.getElementById('IdFindUserEmail');
let formSearSubmit = document.getElementById('IdFindSubmitBtn');
let IdFindForm = document.getElementById('IdFindForm');
let formReset = document.getElementById('IdFindreset');

    /* form 전송전 유효성 체크 */
    formSearSubmit.addEventListener('click', function () {
        let formBoolean = true;
        /* 이름 공백 체크 */
        if (!inputValidator.isSet(findUserName.value)) {
            checkContentFunc(findUserName, checkMsg.emptyName);
            formBoolean = false;
        }
        /* 이메일 공백 체크 */
        if (!inputValidator.isSet(findUserEmail.value)) {
            checkContentFunc(findUserEmail, checkMsg.emptyEmail);
            formBoolean = false;
        }
        /* 이메일 유효성 체크 */
        else if (!inputValidator.isValidEmail(findUserEmail.value)) {
            checkContentFunc(findUserEmail, checkMsg.validEmail);
            formBoolean = false;
        }
        console.log(formBoolean);
        if(formBoolean){
        	IdFindForm.setAttribute('method', 'POST');
            IdFindForm.setAttribute('action', httpRequest.getContextPath() + '/auth/userIdSearch.do');
            IdFindForm.submit();
           }
    
    });
    
    /* 취소 버튼 */
    formReset.addEventListener('click', function () {
            history.back();
    });

    /* email 입력 keyUp이벤트 */
    findUserEmail.addEventListener('keyup', function () {
        inputKeyUpReg.keyUpEmail(findUserEmail.value);
    });

    findUserName.addEventListener('focus', function () {
        focusResetValue(findUserName);
    });
    findUserEmail.addEventListener('focus', function () {
        focusResetValue(findUserEmail);
    });
    /* blur event */
    findUserName.addEventListener('blur', function () {
        if (inputValidator.isSet(findUserName.value)) {
            findUserName.nextElementSibling.innerHTML = '';
        } else {
            checkContentFunc(findUserName, checkMsg.emptyName);
        }
    });
    
    
    
    
    
    
    
    
    
    
    