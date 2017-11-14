<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>        
<html>
<head>
    <title>전체 게시글</title>
    <style type="text/css">
        #wrap {
            width: 800px;
            margin: 0 auto 0 auto;
        }
        #topForm{
            text-align :right;
        }
        #board, #pageForm, #searchForm{
            text-align :center;
        }
        
        #bList{
            text-align :center;
        }
    </style>
</head>
<body>    
 
<div id="wrap">
    <br>
    <div id="topForm">
            <input type="button" value="글쓰기" onclick="location.href='BoardWriteForm.do'">
    </div>
    <br>
    <div id="board">
        <table width="800" border="3" bordercolor="lightgray">
            <tr heigh="30">
                <th>글번호</th>
                <th>제목</th>
                <th>글내용</th>
                <th>작성자</th>
                <th>작성일</th>
                <th>평점</th>
                <th>조회수</th>
            </tr>    
            <c:forEach items="${list}" var="row">
						<tr>
							<td>${row.boardIdx}</td>
							<td><a href="BoardDetailListform.do?boardSubject=${row.boardSubject}">${row.boardSubject }</a></td>
							<td>${row.boardContent }</td>
							<td>${row.boardUserKey}</td>
							<td>${row.boardDate}</td>
							<td>${row.boardUseScore}</td>
							<td>${row.boardCount}</td>
						</tr>
			</c:forEach>
        </table>
    </div>
    <br>
    <div id="pageForm">
        페이지 번호
    </div>
    <br>
    <div id="searchForm">
        <form>
            <select name="opt">
                <option value="0">제목</option>
                <option value="1">내용</option>
                <option value="2">제목+내용</option>
                <option value="3">글쓴이</option>
            </select>
            <input type="text" size="20" name="condition"/>&nbsp;
            <input type="submit" value="검색"/>
        </form>    
    </div>
</div>    
 
</body>
</html>
