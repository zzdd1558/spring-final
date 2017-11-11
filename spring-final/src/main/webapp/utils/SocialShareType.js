/**
 * Created by yunjin on 2017-11-07.
 */

/* 소셜 타입별 공유하기 script 파일 */
class SocialShareType{

    constructor(){
    	
    	/* switch에서 사용할 소셜 타입 리터럴 변수*/
        this.SOCIALTYPE = {
            KAKAO : 'kakao',
            FACEBOOK : `facebook`,
            TWITTER : `twitter`,
            NAVER : `naver`,
        };

        /* 현재 아이템의 url을 얻어오는 부분 원래는 location.href 이어야 하나 localhost를 지원하지 않아 임의로 작성 */
        this.href = 'https://www.naver.com';

        /* social type 별 url을 저장한 리터럴 변수. */
        this.socialURL = {
            /* localhost.href로 하면 localhost라 지원 안함. */
            'kakao' : `https://story.kakao.com/s/share?url=${encodeURIComponent(this.href)}`,
            'facebook' : `http://www.facebook.com/sharer/sharer.php?u=${encodeURIComponent(this.href)}`,
            'twitter' : `http://twitter.com/intent/tweet?url=${encodeURIComponent(this.href)}`,
            'naver' : `http://share.naver.com/web/shareView.nhn?url=${encodeURIComponent(this.href)}&title=제목을 입력하세요`,
        }
        this.title = ``;
        this.url = ``;
    }


    shareURL(socialType){

    	/* 소셜 타입별 공유하기 */
        switch (socialType){
            case this.SOCIALTYPE.KAKAO :
                this.url = this.socialURL.kakao;
                this.title = '카카오 공유하기';
                break;

            case  this.SOCIALTYPE.FACEBOOK:
                this.url = this.socialURL.facebook;
                this.title = '페이스북 공유하기';
                break;

            case  this.SOCIALTYPE.TWITTER:
                this.url = this.socialURL.twitter;
                this.title = '트위터 공유하기';
                break;

            case  this.SOCIALTYPE.NAVER:
                this.url = this.socialURL.naver;
                this.title = '네이버 공유하기';
                break;
        }
        
        /* 공유하기 창을 새로운창으로 */
        window.open(this.url , this.title , 'width=672, height=561, toolbar=no, menubar=no, scrollbars=no, resizable=yes');
    }
}