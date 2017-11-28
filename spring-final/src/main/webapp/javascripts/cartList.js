function changePrice(){
    let prodBox = document.getElementById('prodBox');
    let sum = 0;
    let prodNodes = prodBox.getElementsByClassName('prd_cnt_box');
    let prodPrice = document.getElementById('subPrice').value;

    for (let i = 0; i< prodNodes.length; i++){
        console.log(Number(prodPrice))
        sum += Number(prodPrice) * Number(prodNodes[i].lastElementChild.firstElementChild.children[1].firstChild.innerHTML);
    }

    document.getElementById('prodTotalPrice').innerHTML = sum;
}