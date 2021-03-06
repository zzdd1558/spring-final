/**
 * Created by yunjin on 2017-10-15.
 */


/* 비동기 처리 로직
 * url : 비동기 보낼 주소
 * params : url로 넘겨줄 parameter
 * callback : 비동기 send후 실행할 콜백 함수
 * method : 전송 방식 ex) GET , POST
 *
 */

class HttpRequest {
    /* 생성자 */
    constructor() {
        this.httpRequest;
    }
//httpRequest.sendRequest(httpRequest.getContextPath()+'/auth/validateUserId.do' , "id="+uId.value , idCheckFunc , "POST");
    /* 비동기처리시 사용할 함수 */
    sendRequest(url, params, callback, method,header,token) {
        this.httpRequest = new XMLHttpRequest();
        let httpMethod = method.toUpperCase();
        if (httpMethod != 'GET' && httpMethod != 'POST') {
            httpMethod = 'GET';
        }
        let httpParams = (params == null || params == '') ? null : params;
        let httpUrl = url;
        if (httpMethod == 'GET' && httpParams != null) {
            httpUrl = httpUrl + "?" + httpParams;
        }
        this.httpRequest.open(httpMethod, httpUrl, true);
    		this.httpRequest.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        
        /* post전송시 필요한 _csrf 공격 방어 header 와 token*/
        if(httpMethod == 'POST'){
        	this.httpRequest.setRequestHeader(header,token)
        }
        this.httpRequest.onreadystatechange = callback;
        this.httpRequest.send(httpMethod == 'POST' ? httpParams : null);
    }
    
    /* Javascript로 절대경로 구하기.*/
    getContextPath(){
    	let offset = location.href.indexOf(location.host) + location.host.length;
    	let ctxPath = location.href.substring(offset, location.href.indexOf('/', offset + 1));
    	return ctxPath;
    }
}


