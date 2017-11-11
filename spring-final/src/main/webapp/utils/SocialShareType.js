/**
 * Created by yunjin on 2017-11-07.
 */


class SocialShareType{

    constructor(){
        this.SOCIALTYPE = {
            KAKAO : 'kakao',
            FACEBOOK : `facebook`,
            TWITTER : `twitter`,
            NAVER : `naver`,
        };

        this.href = 'https://www.naver.com';

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
        window.open(this.url , this.title , 'width=672, height=561, toolbar=no, menubar=no, scrollbars=no, resizable=yes');
    }
}