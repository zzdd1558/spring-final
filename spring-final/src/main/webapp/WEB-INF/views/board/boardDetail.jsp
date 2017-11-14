<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	    <table width="700" border="3" bordercolor="lightgray" align="center">
        <tr>
            <td id="title">작성자</td>
            <td>
			</td>
        </tr>
            <tr>
            <td id="title">
                제 목
            </td>
            <td>
            ${boardDTO.boardSubject}
            </td>        
        </tr>
        <tr>
            <td id="title">
                내 용
            </td>
            <td>
            ${boardDTO.boardContent}
            </td>        
        </tr>
        <tr>
            <td id="title">
                파일첨부
            </td>
            <td>
            ${boardDTO.boardFile}
            </td>    
        </tr>
        <tr>
            <td id="title">
             평점
            </td>
            <td>
            ${boardDTO.boardUseScore}
            </td>    
        </tr>
 
        <tr align="center" valign="middle">
            <td colspan="5">
                <input type="button" value="뒤로가기" onclick="location.href='BoardListform.do'" >            
            </td>
        </tr>
    </table> 
</body>
</html>