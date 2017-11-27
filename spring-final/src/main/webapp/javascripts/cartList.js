/**
 * Created by yunjin on 2017-11-26.
 */




function addCartItem() {

}


/** 장바구니가 들어있는 쿠키스토리지 비우기 */
function removeCartIteamAll() {
    localStorage.removeItem('cartList');
}

function viewCartList() {

}

/** plus 버튼 클릭시 발생할 이벤트 */
function incrementProductValue(event){
    let thisNode = event;
    let childNode = thisNode.previousElementSibling.childNodes[0];
    childNode.innerHTML = Number(childNode.innerHTML) + 1;
}

/** minus 버튼 클릭시 발생할 이벤트 */
function decrementProductValue(event){
    let thisNode = event;
    let childNode = thisNode.nextElementSibling.childNodes[0];
    if(childNode.innerHTML <= 1){
        childNode.innerHTML = 1;
    }else{
        childNode.innerHTML = Number(childNode.innerHTML) - 1;
    }
}