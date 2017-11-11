/**
 * Created by yunjin on 2017-10-15.
 */
/* ECMA6 Class DateFormat 설정하는 Javascript */

/* 30일인 월 */
const monthsOf30DayArray = [4, 6, 9, 11];

class DateFormat {
	/* 생성자 */
    constructor() {
        const DateObject = new Date();
        this.currentYear = DateObject.getFullYear();
        this.currentMonth = DateObject.getMonth() + 1;
        this.currentDate = DateObject.getDate();
        this.maxYear = 120;
    }

    /* 현재 년을 return  */
    getCurrentYear() {
        return this.currentYear;
    }

    /* 현재 월을 return  */
    getCurrentMonth() {
        return this.currentMonth;
    }

    /* 현재 일을 return  */
    getCurrentDate() {
        return this.currentDate;
    }

    /* 현재 현재년도와 최대 몇년을 뺐는지를 return  */
    getMaxYear() {
        return this.maxYear;
    }

    /* 윤년 계산 */
    isLeapYear(year) {
        return ((year % 4 === 0) && (year % 100 !== 0)) || year % 400 == 0;
    }

    /* 년도와 월에 따라 일수 변경.*/
    getFullDays(year = this.currentYear, month = this.currentMonth) {
        if (month == 2) {
            if (this.isLeapYear(year)) {
                return 29;
            }
            return 28;
        }
        if (monthsOf30DayArray.includes(Number(month))) {
            return 30;
        } else {
            return 31;
        }
    }
}