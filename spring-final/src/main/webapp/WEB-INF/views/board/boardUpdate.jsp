<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
    <br>
    <b><font size="6" color="gray">글쓰기</font></b>
    <br>
    
    <form method="get" action="BoardUpdate.do" name="boardForm" enctype="multipart/form-data">
    <table width="700" border="3" bordercolor="lightgray" align="center">
        <tr>
            <td id="title">작성자</td>
            <td>
			${boardDTO.boardUserKey}
			</td>
        </tr>
            <tr>
            <td id="title">
                제 목
            </td>
            <td>
                <input name="boardSubject" type="text" size="70" maxlength="100" value="${boardDTO.boardSubject}"/>
            </td>        
        </tr>
        <tr>
            <td id="title">
                내 용
            </td>
            <td>
                <textarea name="boardContent" cols="72" rows="20">${boardDTO.boardContent}</textarea>            
            </td>        
        </tr>
        <tr>
            <td id="title">
                파일첨부
            </td>
            <td>
                <input type="text" name="boardFile"  />
            </td>    
        </tr>
        <tr>
            <td id="title">
                상품 평점
            </td>
            <td>
                <input type="number" name="boardUseScore" min="1" max="5"/>
            </td>    
        </tr>
 
        <tr align="center" valign="middle">
            <td colspan="5">
             <input type="hidden" name="boardIdx" value="${boardDTO.boardIdx}"/>
                <input type="reset" value="작성취소" >
                <input type="submit" value="등록" >
                <input type="button" value="목록" >            
            </td>
        </tr>
    </table>    
    </form>
</html>