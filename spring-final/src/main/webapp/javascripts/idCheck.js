/**
 * ID를 찾기 위한 기능들
 */

let uName = document.getElementById('u_name');
let uEmail = document.getElementById('u_email');
let uQuestion = document.getElementById('u_question');
let uAnswer = document.getElementById('u_answer');
let formSubmit = document.getElementById('submitBtn');
let uForm = document.getElementById('idSearchForm');
let formReset = document.getElementById('reset');

/* spring-security에서 CSRF를 사용할 경우 header와 token 필요 */
let token = document.getElementById('_csrf').getAttribute('content');
let header = document.getElementById('_csrf_header').getAttribute('content');

const checkColor = {
	    green: 'green',
	};

/* 메세지 관련 */
const checkMsg = {
   
	/* 이름 관련 */
	emptyName: '이름을 입력해주세요.',
    /* 질문과 답 관련*/
    emptyAnswer: ' 답변이 비어있거나 공백이 있으면 안됩니다. ',
    selectQuestion: ' 질문을 선택해주세요. ',
    /* 이메일 관련*/
    emptyEmail: '이메일이 비어있습니다. 다시 확인해주세요. ',
    validEmail: ' 정확한 이메일 형식이 아닙니다 . 다시 확인해주세요. ',
	};
    
    /* form 전송전 유효성 체크 */
    formSubmit.addEventListener('click', function () {
        let formBoolean = true;
        /* 이름 공백 체크 */
        if (!inputValidator.isSet(uName.value)) {
            checkContentFunc(uName, checkMsg.emptyName);
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
        
        /* 이메일 유효성 체크 */
        else if (!inputValidator.isValidEmail(uEmail.value)) {
            checkContentFunc(uEmail, checkMsg.validEmail);
            formBoolean = false;
        }
        
        console.log(formBoolean);
        
        if(formBoolean){
        	uForm.setAttribute('method', 'POST');
            uForm.setAttribute('action', httpRequest.getContextPath() + '/auth/userIdSearch.do');
            uForm.submit();
           }
    
    });
    
    /* 취소 버튼 */
    formReset.addEventListener('click', function () {
            history.back();
    });
    
    /* Form에서 사용하여 사용가능불가능할 경우 span 태그에 보여줄 함수 */
    function checkContentFunc(object, msg, color = 'red') {
        let brother = object.nextElementSibling;
        brother.innerHTML = msg;
        brother.style.color = color == '' ? 'red' : color;
    }
    
    /* 아이디찾기 접근시 사용할 비동기 실행 함수 */
    function getQuestion() {
        httpRequest.sendRequest(httpRequest.getContextPath() + '/ajax/question.do', null, setQuestionList, 'GET');
    }
    
    /* 아이디찾기 접근시 불러올 Question데이터 Ajax callback Function*/
    function setQuestionList() {
        if (httpRequest.httpRequest.readyState == 4 && httpRequest.httpRequest.status == 200) {
            let resData = JSON.parse(httpRequest.httpRequest.responseText);
            let result = `<option value='0' selected disabled>질문을 선택하세요.</option>`;
            for (let i = 0; i < resData.length; i++) {
                result += `<option value=${resData[i].questionKey}>${resData[i].questionContent}</option>`;
            }
            uQuestion.innerHTML = result;
        }
    }
    
    /* email 입력 keyUp이벤트 */
    uEmail.addEventListener('keyup', function () {
        inputKeyUpReg.keyUpEmail(uEmail.value);
    });
    
    
    function focusResetValue(object) {
        object.nextElementSibling.innerHTML = '';
    }
    uName.addEventListener('focus', function () {
        focusResetValue(uName);
    });
    
    uAnswer.addEventListener('focus', function () {
        focusResetValue(uAnswer);
    });

    uEmail.addEventListener('focus', function () {
        focusResetValue(uEmail);
    });
    
    /* blur event */
    uName.addEventListener('blur', function () {
        if (inputValidator.isSet(uName.value)) {
            uName.nextElementSibling.innerHTML = '';
        } else {
            checkContentFunc(uName, checkMsg.emptyName);
        }
    });
    
    /* 아이디찾기 로딩과 동시에 질문 데이터 Ajax로 가져오기*/
    getQuestion();
    
    
    
    
    
    
    
    
    
    
    