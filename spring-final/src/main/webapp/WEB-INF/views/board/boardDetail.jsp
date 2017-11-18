<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="${pageContext.request.contextPath}/utils/HttpRequest.js"></script>
    <script type="text/javascript">
        function changeView(value)
        {
            if(value == 0)    {
            	location.href="BoardListAction.bo?page=${pageNum}";
            }else if(value == 1){
                location.href='BoardReplyForm.do?num=${boardDTO.boardIdx}&page=${pageNum}';
            }
                
        }
      
    </script>
</head>
<body>
	
	    <table width="700" border="3" bordercolor="lightgray" align="center">
        <tr>
            <td id="title">작성자</td>
            <td>
            ${boardDTO.boardIdx}
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
            		<input type="button" value="수정" >
                    <input type="button" value="삭제" >
                    <input type="button" value="답글"  onclick="changeView(1)" >
                	<input type="button" value="목록" 	onclick="changeView(0)" >            
            </td>
        </tr>
    </table> 
     <div id="comment" align="center">
        <table border="1" bordercolor="lightgray">
    <!-- 댓글 목록 -->    
        <c:forEach var="comment" items="${list}">
        
            <tr>
                <!-- 아이디, 작성날짜 -->
                <td width="150">
                    <div>
                        ${comment.commentId}<br>
                        <font size="2" color="lightgray">${comment.commentDate}</font>
                    </div>
                </td>
                <!-- 본문내용 -->
                <td width="550">
                    <div class="text_wrapper">
                        ${comment.commentContent}
                    </div>
                </td>
                <!-- 버튼 -->
                <td width="100">
                    <div id="btn" style="text-align:center;">
                        <a href="#">[답변]</a><br>
                        <a href="#">[수정]</a><br>    
                        <a href="../comment/delectComment.do?commentNum=${comment.commentNum}&commentBoard=${boardDTO.boardIdx}&page=${pageNum}">[삭제]</a>
                    </div>
                </td>
            </tr>
            
        </c:forEach>
            <!-- 로그인 했을 경우만 댓글 작성가능 -->
            <tr bgcolor="#F5F5F5">
            <form id="writeCommentForm" action="../comment/insertComment.do">
                <input type="hidden" name="commentBoard" value="${boardDTO.boardIdx}">
                <input type="hidden" name="commentId" value="${boardDTO.boardUserKey}">
                <input type="hidden" name="page" value="${pageNum}">
                <!-- 아이디-->
                <td width="150">
                    <div>
                        ${boardDTO.boardIdx}
                    </div>
                </td>
                <!-- 본문 작성-->
                <td width="550">
                    <div>
                        <textarea name="commentContent" rows="4" cols="70" ></textarea>
                    </div>
                </td>
                <!-- 댓글 등록 버튼 -->
                <td width="100">
                    <div id="btn" style="text-align:center;">
                        <p><a href="#" onclick="document.getElementById('writeCommentForm').submit()">[댓글등록]</a></p>    
                    </div>
                </td>
            </form>
            </tr>
        </table>
    </div>
    
    
    
    <script type="text/javascript">
 let httpRequest = new HttpRequest();
    function writeCmt()
    {
        var form = document.getElementById("writeCommentForm");
        
        var board = form.commentBoard.value
        var id = form.commentId.value
        var content = form.commentContent.value;
        console.log(form);
        
        if(!content)
        {
            alert("내용을 입력하세요.");
            return false;
        }
        else
        {    
            var param="commentBoard="+board+"&commentId="+id+"&commentContent="+content;
            httpRequest.sendRequest(httpRequest.getContextPath()+'/ajax/commentLsit.do' , param ,test,"get");
        	console.log(param);
        }
    }
   	function test(){
   	     console.log(this.responseText);
   	}
    
    </script>
</body>
</html>