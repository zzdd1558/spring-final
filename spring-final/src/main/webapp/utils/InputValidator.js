/**
 * Created by yunjin on 2017-10-15.
 */


/* ECMA6 Class 문법 적용 유효성 검사 하는 Javascript .*/
class InputValidator {

    constructor() {
        /* 6~20자의 영문 소문자, 숫자와 특수기호(_),(-)만 사용 가능합니다. */
        this.idReg = /^[a-zA-Z]([a-zA-Z0-9_-]){5,19}$/;

        /* 숫자 + 알파벳 + 특수문자를 포함한 8~16자리의 비밀번호 정규표현식*/
        this.passwordReg = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,16}/;

        /* 이메일 정규 표현식*/
        this.emailReg = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;

        /* 휴대폰번호 정규표현식 */
        this.phoneReg = /^01(0|1|[6-9])([0-9]{3,4})([0-9]{4})$/;
    }

    /*  form 전송 전 id 유효성 검사*/
    isValidId(id) {
        return this.isValidate(id, this.idReg);
    }

    /*   password 유효성 검사*/
    isValidPassword(password) {
        return this.isValidate(password, this.passwordReg);
    }

    /*  form 전송 전 email 유효성 검사*/
    isValidEmail(email) {
        return this.isValidate(email, this.emailReg);
    }

    /*  form 전송 전 휴대폰번호 유효성 검사*/
    isValidPhone(phone) { 
        return this.isValidate(phone, this.phoneReg);
    }

    isValidPasswordSame(password, passwordConfirm) {
        return (password.value === passwordConfirm.value) ? true : false;
    }

    isValidate(value, reg) {
        return reg.test(value) && this.isSet(value);
    }

    /* value가 undefined가 아니고 length 가 0 이상이면 true 반환 */
    isSet(value) {
        return this.isUndefined(value) && (value.length > 0 || value > 0);
    }

    /* value의 값이 undefined이면 true 반환 */
    isUndefined(value) {
        return typeof value !== 'undefined';
    }
}
