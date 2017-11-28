/**
 * Created by yunjin on 2017-11-26.
 */

/** 아이 , 립 , 페이스 , 네일 , 스킨케어 , 팩/마스크 , 클렌징폼 , 바디/헤어 , 향수 , 화장/소품*/
const kindsOfCosmetic = ['EYE', 'LIP', 'FACE', 'NAIL', 'SKIN', 'MASK', 'CLEAN', 'BODY', 'PERFUME', 'COSE_PROP'];


function addCartItem() {
    let prodForm = document.getElementById('prodBox');
    let prodIdx = prodForm.children[0].value;
    let subTypeIdx = prodForm.children[1].value;
    let price = prodForm.children[2].value;
    let childProd = prodForm.getElementsByClassName('prd_cnt_box');
    let list = JSON.parse(localStorage.getItem('cartList'));

    let option = {};
    if(childProd <= 0){
        alert('상품을 선택해주세요.');
    }else{
        if (list == null) {
            localStorage.setItem('cartList', JSON.stringify({}));
            list = JSON.parse(localStorage.getItem('cartList'));
        }

        for (let i = 0; i < childProd.length; i++) {
            option[kindsOfCosmetic[Math.floor(Number(subTypeIdx) / 100) - 1] + '_' + childProd[i].children[0].value] = {
                name: childProd[i].children[1].innerHTML,
                quantity: childProd[i].children[2].children[0].children[1].firstChild.innerHTML,
            };
        }

        console.log(option);
        localStorage.setItem('cartList', JSON.stringify(product(subTypeIdx, prodIdx, price, option, list)));
        alert('상품이 추가되었습니다.');
    }
}

/** subTypeIdx, prodIdx , 가격 , 옵션별 object 수.*/
function product(...args) {
    let list = args[4];

    list[kindsOfCosmetic[Math.floor(Number(args[0]) / 100) - 1] + '_' + args[0] + '_' + args[1]] = {
        price: args[2],
        option: args[3],
        image: Math.floor(Number(args[0]) / 100) + '/' + args[0] + '/' + args[1] + '/' + args[0] + '_' + args[1]
    };

    return list;
}

/** 장바구니가 들어있는 쿠키스토리지 비우기 */
function removeCartIteamAll() {
    localStorage.removeItem('cartList');
}

function viewCartList() {

}
