/**
 * 
 */

function addressPopup() {
	let pop = window.open(httpRequest.getContextPath() + "/addressSearch.do", "pop",
			"width=570,height=500, scrollbars=yes, resizable=yes");
}

function jusoCallBack(roadFullAddr, roadAddrPart1, addrDetail, roadAddrPart2,
		engAddr, jibunAddr, zipNo, admCd, rnMgtSn, bdMgtSn, detBdNmList, bdNm,
		bdKdcd, siNm, sggNm, emdNm, liNm, rn, udrtYn, buldMnnm, buldSlno, mtYn,
		lnbrMnnm, lnbrSlno, emdNo) {
	// 2017년 2월 제공항목이 추가되었습니다. 원하시는 항목을 추가하여 사용하시면 됩니다.
	let form = document.getElementById('signupForm');
	form.u_address_zip_no.value = zipNo;
	form.u_address_part.value = roadAddrPart1;
	form.u_address_detail.value = addrDetail;
}
