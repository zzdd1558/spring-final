/**
 * Created by yunjin on 2017-10-15.
 */


/* ECMA6 Class 문법 적용 input keyUp이벤트 처리하는 Javascript .*/

class InputKeyReg {
	/* 생성자 */
    constructor() {
    	/* keyup이벤트 발생시 글자마다 처리할 정규표현식 */
        this.REG_ID = /[^a-z0-9_-]/gi;
        this.REG_PASSWORD = /[^a-z0-9~!@#$%^&*]/gi;
        this.REG_EMAIL = /[^a-z0-9_\-@.]/gi;
        this.REG_PHONE = /[^0-9]/gi;
    }

    /* id keyup Event */
    keyUpId(idValue) {
        let regexp = this.REG_ID;
        uId.value = this.validRegex(regexp, idValue);
    }

    /* password , passwordConfirm keyup Event */
    keyUpPassword(passwordValue, passwordType) {
        let regexp = this.REG_PASSWORD;
        passwordType.value = this.validRegex(regexp, passwordValue);
    }

    /* email keyup Event */
    keyUpEmail(emailValue) {
        let regexp = this.REG_EMAIL;
        uEmail.value = this.validRegex(regexp, emailValue);
    }

    /* phone keyup Event */
    keyUpPhone(phoneValue) {
        let regexp = this.REG_PHONE;
        uPhoneNumber.value = this.validRegex(regexp, phoneValue);
    }

    /* 정규표현식 검사후 false면 ''로 치환 */
    validRegex(regexp, value) {
        if (regexp.test(value)) {
            value = value.replace(regexp, '');
        }
        return value;
    }
}
