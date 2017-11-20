/**
 * 아이디값을 넘겨줄 버튼 속성 만들기
 */

let userId = document.getElementById('myId');
let formReset = document.getElementById('reset');
let formPassword = document.getElementById('passwordBtn');
let formLogin = document.getElementById('loginBtn');
let uForm = document.getElementById('resultIdForm');


    
    /* 취소 버튼 */
    formReset.addEventListener('click', function () {
        history.back();
    });
    
    /* 비밀번호 찾기 버튼 */
    formPassword.addEventListener('click', function () {
    	uForm.setAttribute('method', 'POST');
        uForm.setAttribute('action', httpRequest.getContextPath() + '/auth/userIdSearch.do');
        uForm.submit();
    });
    
    /* 로그인 버튼 */
    formLogin.addEventListener('click', function () {
    	uForm.setAttribute('method', 'GET');
    	uForm.setAttribute('action', httpRequest.getContextPath() + '/auth/searchIdLogin.do');
        uForm.submit();
    });
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    